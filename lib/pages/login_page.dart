import 'package:flutter/material.dart';
import 'package:innova/providers/login_form_provider.dart';
import 'package:innova/ui/input_decorations.dart';
import 'package:innova/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
         child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox( height: 250 ),

              CardContainer(
                child: Column(
                  children: [

                    SizedBox( height: 10 ),
                    Text('Ingresar', style: Theme.of(context).textTheme.headline4 ),
                    SizedBox( height: 30 ),
                    
                    ChangeNotifierProvider(
                     create: ( _ ) => LoginFromProvider(),
                     child: _LoginForm(),
                    ),                    

                  ],
                )
              ),

              SizedBox( height: 50 ),
              Text('Crear una nueva cuenta', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ),),
              SizedBox( height: 50 ),
            ],
          ),
        )
      )
    );
  }
  
  
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final loginForm = Provider.of<LoginFromProvider>(context);

    return Container(
      child: Form(
        // TODO: mantener la referencia al key

        key: loginForm.formKey,

        autovalidateMode: AutovalidateMode.onUserInteraction,

        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Ingresa tu correo',
                labelText: 'Correo Electronico',
                prefixIcon: Icons.alternate_email_sharp
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp  = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                  ? null 
                  : 'Ingresa un correo valido';
              },
            ),

            SizedBox(height: 30),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Ingresa tu contraseña',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                return value != null && value.length >= 6
                  ? null
                  : 'Contraseña muy corta';
                  
              },
            ),

            SizedBox(height: 30),

            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  loginForm.isLoading ? 'Espere..' : 'Ingresar',
                  style: TextStyle(color: Colors.white)
                  ,
                ),
              ),
              onPressed: loginForm.isLoading ? null : () async {
                FocusScope.of(context).unfocus();

                if (loginForm.isValidForm()) return ;

                loginForm.isLoading = true;
                await Future.delayed(Duration(seconds: 2));
                loginForm.isLoading = true;

                Navigator.pushReplacementNamed(context, 'home');
              },
            )

          ],
        )
      ),
    );
  }
}