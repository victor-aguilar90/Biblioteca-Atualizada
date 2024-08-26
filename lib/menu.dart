import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  final String titulo;
  final IconData icone;

  Menu({
    required this.titulo,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icone, size: 26,),
      title: Text(titulo),
      titleTextStyle: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
      onTap: () {
      },
    );
  }
}

class Catalogo extends StatelessWidget {
  final String linkImagem;

  Catalogo({
    required this.linkImagem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 172,
            height: 232,
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(linkImagem),
              fit: BoxFit.cover
              )
            ),
          );
  }
}

class PerfilUsuario extends StatelessWidget {
  final String nome;
  final String email;
  final String? imagemPerfil;

  const PerfilUsuario({
    Key? key,
    required this.nome,
    required this.email,
    this.imagemPerfil,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 30.0, // Tamanho do ícone de perfil
            backgroundImage: imagemPerfil != null
                ? NetworkImage(imagemPerfil!)
                : null,
            backgroundColor: Colors.blue, // Cor de fundo se não houver imagem
            child: imagemPerfil == null
                ? Text(
                    nome[0], // Inicial do nome do usuário
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 24.0),
                  )
                : null,
          ),
          SizedBox(width: 16), // Espaço entre o ícone e o nome/email
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                nome,
                style: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                email,
                style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}