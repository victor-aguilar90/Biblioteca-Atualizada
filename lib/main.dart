import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_biblioteca/cadastro.dart';
import 'package:app_biblioteca/biblioteca.dart';

void main () {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Corpo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Corpo extends StatefulWidget {
  const Corpo({super.key});

  @override
  State<Corpo> createState() => _CorpoState();
}

class _CorpoState extends State<Corpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 341,
          height: 502,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 341,
                child: Text("Login", style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.w500, ), textAlign: TextAlign.left),
              ),
              SizedBox(height: 56,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                  hintText: "Digite seu email",
                  hintStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300)
                ),
                //controller: ,
                onChanged: (value) {
                  setState(() {
                     
                  });
                },
              ),
              SizedBox(height: 31,),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                  hintText: "Digite sua senha",
                  hintStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300)
                ),
              ),
              SizedBox(height: 43,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaP()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(341, 57),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ), 
                child: Text("Entrar", style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),),
                ),
                SizedBox(height: 42,),
                Text("Não tem conta ainda?", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400), textAlign: TextAlign.left,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Crie uma conta", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.blue),),
                )
            ],
          ),
        ),
      ),
    );
  }
}
