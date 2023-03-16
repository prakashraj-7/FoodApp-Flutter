import 'package:flutter/material.dart';

class CurrencyApp extends StatefulWidget {
  const CurrencyApp({super.key});

  @override
  State<CurrencyApp> createState() => _CurrencyAppState();
}

class _CurrencyAppState extends State<CurrencyApp> {
   int click = 1;
   int add = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon (Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
        
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Stack(
              
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_rounded,color: Colors.black,)),
                const Positioned(bottom: 3,right: 0, child: Icon(Icons.looks_one,color: Colors.red,)),
              ],
            ),
          ),
           
          
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hamburger & coke',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 93, 93, 93))),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                children: [
                  
                  Row(
                    children: [
                     Image.asset("assets/images/burger-icon.png",height: 200,width: 200,color: const Color.fromARGB(255, 255, 112, 102),),
                     const SizedBox(
                      width: 100,
                     ),
                     Column(
                       children: [
                        //  IconButton(Icons.favorite_border,color: Colors.red,),
                        IconButton(onPressed: (){
                        
                          setState(() {
                            
                          });
                        }, icon: const Icon (Icons.favorite_border),color: Colors.red,),
                         const SizedBox(
                          height: 70,
                         ),
                         const Icon(Icons.cached_outlined,color: Colors.blue,),
                       ],
                     )
                     

                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                             Text('\$$add',style: const TextStyle(fontSize: 40,color:Colors.grey ),),
                            const SizedBox(width: 40,),
                           Container(
                            
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                               color: const Color.fromARGB(255, 250, 113, 103),
                               borderRadius: BorderRadius.circular(10),
                               
                            ),
                            
                            child: Row(
                              children: [
                              
                                IconButton(onPressed: (){
                                  setState(() {
                                     click +=1;
                                     if (click == click){
                                        add +=15;
                                     }
                                  });
                                }, icon:const Icon(Icons.add,color: Colors.white,)),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text('$click',style: const TextStyle(color: Colors.red,fontSize: 30 ),)),
                                ),
                                
                                const SizedBox(width: 10,),
                                IconButton(onPressed: (){
                                  setState(() {
                                    click -= 1;
                                     add -= 15;
                                    
                                    
                                    if (click == -1){
                                      click -= click;
                                     
                                    
                                    }
                                  });
                                }, icon:const Icon(Icons.remove,color: Colors.white,)),
                                const SizedBox(width: 8,),
                                // const Text('Add to Cart',style: TextStyle(color: Colors.white,fontSize: 15),),
                                //  TextButton(onPressed: (){},
                                   
                                //    child: const Text('Add to Cart',style: TextStyle(color: Colors.white),)),
                                MaterialButton(onPressed: (){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Item added',style: TextStyle(color: Colors.white,fontSize: 16),),
                                    backgroundColor: Color.fromARGB(255, 214, 89, 80),
                                   
                                    ),
                                  
                                  );
                                },
                                splashColor: Colors.red,
                                child: const Text('Add to cart',style: TextStyle(color: Colors.white),),
                                

                                ),
                              ],
                            ),
                            
                           ),
                           
                          ],

                        ),
                      ),
                    ],
                  ),
                  const Divider(indent: 10,),
                   Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                         const Padding(
                         padding: EdgeInsets.all(6.0),
                        child: Text('Added with',style: TextStyle(color: Color.fromARGB(255, 59, 59, 59),fontSize: 17,),),
                     ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          
                          children: [
                            
                            Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/10.png")
                          ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: add2("Taccos","\$7"),
                            ),
                            const SizedBox(width: 100,),
                             Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/eh.png")
                          ),
                             const SizedBox(width: 15,),
                             add2("Cocola","\$5"),
                             
                          ],
                         ),
                       ),
                       const SizedBox(height: 20,),
                        Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          
                          children: [
                            
                            Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/seven.png"),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: add2("Pepsi","\$7"),
                            ),
                            const SizedBox(width: 111,),
                             Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/eh.png"),
                          ),
                             const SizedBox(width: 15,),
                             add2("Chips","\$5"),
                             
                          ],
                         ),
                       ),
                       const SizedBox(height: 20,),
                        Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          
                          children: [
                            
                            Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/one.png"),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: add2("Water","\$2"),
                            ),
                            const SizedBox(width: 110,),
                             Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                               color: const Color.fromARGB(255, 255, 182, 207),                               borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/row/seven.png"),
                          ),
                             const SizedBox(width: 15,),
                             add2("Coke","\$10"),
                             
                          ],
                         ),
                       ),
                       const SizedBox(height: 20,),
                        Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          
                          children: [
                            
                            addded(),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: add2("Hot Sussi","\$2"),
                            ),
                            const SizedBox(width: 84,),
                             Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child:  Image.asset("assets/row/three.png"),
                          ),
                             const SizedBox(width: 15,),
                             add2("Fires","\$4"),
                             
                          ],
                         ),
                       ),

                          
                         ],
                       ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
               ),
             ),
             
            ],
            
          ),
        ),
        
      ),
      
    );
  }

              Column add2(String val, String val2,) {
                  return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                           
                            // ignore: unnecessary_string_interpolations
                            Text('$val',style: const TextStyle(fontSize: 18,color: Color.fromARGB(213, 129, 124, 75)),),
                            const SizedBox(height: 12,),
                            // ignore: unnecessary_string_interpolations
                            Text('$val2',style: const TextStyle(fontSize: 17,color: Color.fromARGB(213, 129, 124, 75)),),
                          
                            ],);
                       }

  Container addded() {
    return Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              
                              color: const Color.fromARGB(255, 255, 182, 207),
                               borderRadius: BorderRadius.circular(15),
                            ),
                            child:  Image.asset("assets/row/five.png"),
                          );
  }
}