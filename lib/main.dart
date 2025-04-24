

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp>{
  bool isMinus = false;
  bool isFav = false;
  bool isAdd = false;
  int numberOfProducts = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:
       Align(
         child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Colors.black,width:1)
          ),
          child:IconButton(onPressed: () {
            
          }, icon: Icon(Icons.arrow_back),iconSize: 20,)
               ),
       ),
       title: Text("Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
       actions: [
        IconButton(onPressed: (){
          setState(() {
            if(isFav){
            isFav = false;
          }else{
            isFav = true;
          }
          });
          
        }, icon: Icon(isFav? Icons.favorite : Icons.favorite_border_outlined),color: Colors.red.shade900,iconSize: 35)
       ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset("images/R-removebg-preview.png"),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text("Chair",style: TextStyle(color: Colors.grey.shade600,fontSize:35,fontWeight: FontWeight.bold ),),
              SizedBox(
                width: 220,
              ),
              Text("\$212",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),),
            ],
            
            
          ),
          Row(children: [
            SizedBox(
                width: 10,
              ),
              Flexible(child: Text("Minimalist Style with Pillow",style: TextStyle(color: Colors.black,fontSize:35,fontWeight: FontWeight.bold, ),))]
              ,),
          Row(
            children: [SizedBox(
                width: 10,
              ),
              Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),))
              ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.blue.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.red.shade700,
                  border: Border.all(color: Colors.red.shade700),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        if(numberOfProducts>0){
                          isMinus = true;
                      numberOfProducts--;
                      isMinus =false;
                        }
                        
                      });
                    }, icon: Icon(Icons.remove),iconSize:20,color: Colors.black,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$numberOfProducts",style: TextStyle(fontSize: 20),),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        isAdd = true;
                      numberOfProducts++;
                      isAdd =false;
                      });
                      
                      

                    }, icon: Icon(Icons.add),iconSize:20,color: Colors.black,),
                  ],
                  
                  
                ),
              )
              
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 65,
                width: 65,
                child: ElevatedButton(onPressed:() {
                  setState(() {
            if(isFav){
            isFav = false;
          }else{
            isFav = true;
          }
          });
                }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),padding: EdgeInsets.symmetric(vertical: 13,horizontal: 12.5),elevation:5  ), child: Icon(isFav? Icons.favorite : Icons.favorite_border_outlined,color: Colors.red,size: 40,)
                )
                ),
                Expanded(child: MaterialButton(onPressed: (){},
                color: Colors.black,
                height: 65,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Add To Cart",style: TextStyle(fontSize: 20,color: Colors.white),),
                )),
                SizedBox(
                  width: 10,
                )
            ],
          )
        ]
      ),
      ),
    );
  }

}