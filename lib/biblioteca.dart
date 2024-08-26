import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_biblioteca/menu.dart';

void main(){
  runApp(PaginaP());
}

class PaginaP extends StatelessWidget {
  const PaginaP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pagina(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  final String imageUrl = "https://ocapista.com.br/imgs/capas/livro_de_horror_capa_livro_2.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 50, left: 10),  
          children: [
            PerfilUsuario(nome: "Victor Hugo", email: "victoraguilar@gmail.com"),
            SizedBox(height: 20,),
            Menu(titulo: "Pesquisa Avançada", icone: Icons.search),
            SizedBox(height: 20,),
            Menu(titulo: "Reservas", icone: Icons.book),
            SizedBox(height: 20,),
            Menu(titulo: "Histórico", icone: Icons.history),
            SizedBox(height: 20,),
            Menu(titulo: "Minha Conta", icone: Icons.account_box),
            SizedBox(height: 20,),
            Menu(titulo: "Sair", icone: Icons.exit_to_app),
          ],
        ), 
      ),

      appBar: AppBar(
        title: Text("Biblioteca Ohara", style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w500,),),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 35, top: 25),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 380,
              child: Text("Livros", style: GoogleFonts.poppins(fontSize: 30), textAlign: TextAlign.left,),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/livro_de_horror_capa_livro_2.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/capa_livro_fantasia.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/capa_livro_fantasia_romance.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/fantasia_capa_livro.jpg"),
                  SizedBox(width: 17,),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: 380,
              child: Text("Terror", style: GoogleFonts.poppins(fontSize: 30), textAlign: TextAlign.left,),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/capa_livro_corvos.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/a_arte_da_guerra_capa_livro.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/1984_capa_livro_george_orwell.jpg"),
                  SizedBox(width: 17,),
                  Catalogo(linkImagem: "https://ocapista.com.br/imgs/capas/sherlock_holmes_capa_livro.jpg"),
                  SizedBox(width: 17,),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: 380,
              child: Text("Drama", style: GoogleFonts.poppins(fontSize: 30), textAlign: TextAlign.left,),
            ),
            SizedBox(height: 12,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 172,
                    height: 232,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("https://ocapista.com.br/imgs/capas/livro_de_suspense_noir_livro_capa.jpg"),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    width: 172,
                    height: 232,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("https://ocapista.com.br/imgs/capas/a_alienator.jpg"),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    width: 172,
                    height: 232,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("https://ocapista.com.br/imgs/capas/a_arte_do_incompleto.jpg"),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    width: 172,
                    height: 235,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("https://ocapista.com.br/imgs/capas/a_arte_do_incompleto.jpg"),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 17,),
                ],
              ),
            ),
            SizedBox(height: 30,)
          ],
        )
      )
      );
    }
}
