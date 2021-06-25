import 'package:flutter/material.dart';
import 'package:avatar_fandom/models/pokedex.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PokeListesi extends StatefulWidget {
  @override
  _PokeListesiState createState() => _PokeListesiState();
}

class _PokeListesiState extends State<PokeListesi> {
  Uri url = Uri.parse(
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
  Pokedex pokedex;
  Future<Pokedex> veri;

  Future<Pokedex> pokemonlariGetir() async {
    var response = await http.get(url);
    var decodedJson = json.decode(response.body);
    pokedex = Pokedex.fromJson(decodedJson);
    return pokedex;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    veri=pokemonlariGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      body: OrientationBuilder(
        // ignore: missing_return
          builder: (context,orientation){
            if(orientation==Orientation.portrait){
              return FutureBuilder(future: veri,
                  builder: (context, AsyncSnapshot<Pokedex> gelenPokedex) { // ignore: missing_return
                    if (gelenPokedex.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (gelenPokedex.connectionState == ConnectionState.done) {
                      return GridView.count(crossAxisCount: 2,children: gelenPokedex.data.pokemon.map((poke) {
                        return InkWell(
                          onLongPress: (){
                            showAlert(poke.name,poke.height,poke.weight);
                          },
                          child: Hero(tag: poke.img,child: Card(
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(height: 120,
                                    child: FadeInImage.assetNetwork(placeholder: "assets/loading.gif", image: poke.img),),
                                ),
                                Text(poke.name,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],),
                          ),),
                        );
                      }).toList(),);
                    }
                  });
            }else{
              return FutureBuilder(future: veri,
                  builder: (context, AsyncSnapshot<Pokedex> gelenPokedex) { // ignore: missing_return
                    if (gelenPokedex.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (gelenPokedex.connectionState == ConnectionState.done) {
                      return GridView.extent(maxCrossAxisExtent: 300,children: gelenPokedex.data.pokemon.map((poke) {
                        return GestureDetector(
                          onLongPress: (){setState(() {
                            showAlert(poke.name,poke.height,poke.weight);
                          });

                          },
                          child: Hero(tag: poke.img,child: Card(
                            elevation: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(width: 200,height: 150,
                                  child: FadeInImage.assetNetwork(placeholder: "assets/loading.gif", image: poke.img),),
                                Text(poke.name,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)
                              ],),
                          ),),
                        );
                      }).toList(),);
                    }
                  });
            }
          }
      ),
    );
  }
  void showAlert(String name,String boy,String kilo) {
    AlertDialog alertDialog;
    alertDialog = AlertDialog(
      title: Text(name),
      content: Container(
        height: 100,
        child: Column(children: [
          Text("Boy: "+boy),
          Text("Kilo: "+kilo),
        ],),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
