import 'package:flutter/material.dart';


void main(){runApp(const MaterialApp(home: MyApp()));}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(title: const Text('MACAPUNDAG EDGEINSETS ASSIGNMENT')),
      body: Column(
      
      children:[
        Center(
       child: Container(
           
            color: Colors.red,
            padding: EdgeInsets.all(30),
            child: Text("EdgeInsets.all(30)"),),
        ),
        
        
        SizedBox(height:30),
      
        Container(

                          color: Colors.yellow,
                          padding: EdgeInsets.symmetric(horizontal:40,vertical:10),
                          width: double.infinity,
                          child: Text('EdgeInsets.symmetric(horizontal:40,vertical:10)'),
                          
                          
                  ),
        
        SizedBox(height:30),
        
        Container(

                            color: Colors.blue, 
                            padding: EdgeInsets.only(left:30, top: 10 , right: 5, bottom: 20 ,),
                            width: 380,
                            child: Text('EdgeInsets.only(left:30, top: 10 , right: 5, bottom: 20 ',
                            style: TextStyle(color: Colors.white)),
                            
                ),
        
        SizedBox(height:30),

         Container( 

           color: Colors.green, 
           padding: EdgeInsets.fromLTRB(10,20,30,40), 
           width: 280, 
           child: Text('EdgeInsets.fromLTRB(10,20,30,40)', style: TextStyle(color: Colors.white)),)
        
      ],
      
      )
    
    );
    


}
  
}