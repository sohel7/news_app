import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_app/model/news_model.dart';

class ApiService{

  final all_news_url= "https://newsapi.org/v2/everything?q=bitcoin&apiKey=5e8740cd7408407a820023c84b959dad";
  final breaking_news_url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=5e8740cd7408407a820023c84b959dad";

  // Now write the function

Future<List<NewsModel>> getAllNews()async{
  try{
    Response response = await get(Uri.parse(all_news_url));
    if(response.statusCode==200){

     Map<String , dynamic> json = jsonDecode(response.body);

    }else{
     throw "No News Found";
    }

  }catch(e){
    throw e;
  }
}

}