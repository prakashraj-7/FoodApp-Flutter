import 'package:flutter/material.dart';
import 'cons.dart';

void main (){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      // ),
      home:   Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter recepies App'),
        foregroundColor: const Color.fromARGB(255, 93, 90, 90),
        centerTitle: true,
        
        
      //  :IconButton(onPressed: (){},icon:const Icon(Icons.dehaze_rounded,color: Colors.black,)),
          leading :IconButton(onPressed: (){
            showDialog(context: context, builder: (context) =>const AlertDialog(
              title: Text('User Name',style: TextStyle(color:Colors.blue),),
              contentPadding: EdgeInsets.all(40),
              content: Text('LogOut',style: TextStyle(color: Colors.red),),
            ) ,);
          }, icon: const Icon(Icons.person_2
              ,color: Colors.black,
              )),
        actions: [
          Row(
            children: [
              
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_rounded,color: Colors.black,)),
                //const Positioned(bottom: 3,right: 0, child: Icon(Icons.looks_one,color: Colors.red,)),
              
              
            ],
          )
        ],
        elevation: 0,
        backgroundColor:Colors.white24,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
           children: [
           // const Text('Find Your Fav Resicipies',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 169, 167, 167)),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  
                   Expanded(
                     child: GestureDetector(
                      onTap: (){},
                       child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 222, 221, 221),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                               children: const [
                                SizedBox(width: 4,),
                                Icon(Icons.search),
                               SizedBox(width: 10,),
                               Text('Search Products',style: TextStyle(color: Colors.black,letterSpacing: 2),),
                               ],
                        ),
                       ),
                     ),
                   )
                ],
      
              ),
              
              
            ),  
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: const [
                  Text('Recommented',style: TextStyle(color: Color.fromARGB(255, 147, 145, 145),fontSize: 20),),
                ],
              ),
              
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                     imagerow(context),

                    const SizedBox(
                      width: 15,
                     ),
                     Container(
                    height: 200,
                    width: 120,
                   
                    decoration: BoxDecoration(
                     color:( const Color.fromARGB(255, 255, 227, 185)),
                      
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrencyApp()));
                      },
                      child: Column(
                       
                         children: [
  
                         ClipRRect(borderRadius: BorderRadius.circular(10),
                         child:Stack(children: [Image.asset("assets/images/lowtwo.jpg",height:200,width: 120, fit:BoxFit.cover),
                          const Positioned(top: 167,right: 31,child: Text('Rice',style:TextStyle(
                            color: Color.fromARGB(128, 255, 255, 255),
                            fontSize: 20,
                            letterSpacing: 5) ,)
                          ,),
                         
                         
                         ],),
                         
                         ),
                                                  
                        ],
                      ),
                    ),
                     
            
                  ),
                     const SizedBox(
                      width: 15,
                     ),
                     Container(
                    height: 200,
                    width: 120,
                   
                    decoration: BoxDecoration(
                     color:( const Color.fromARGB(255, 255, 227, 185)),
                      
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrencyApp()));
                      },
                      child: Column(
                       
                         children: [
  
                         ClipRRect(borderRadius: BorderRadius.circular(10),
                         child:Stack(children: [Image.asset("assets/images/lowfour.jpg",height:200,width: 120, fit:BoxFit.cover),
                          const Positioned(top: 167,right: 25,child: Text('Meles',style:TextStyle(
                            color: Color.fromARGB(128, 255, 255, 255),
                            fontSize: 20,
                            letterSpacing: 5) ,)
                          ,),
                         
                         
                         ],),
                         
                         ),
                                                  
                        ],
                      ),
                    ),
                     
            
                  ),
                     const SizedBox(
                      width: 15,
                     ),
                     Container(
                    height: 200,
                    width: 120,
                   
                    decoration: BoxDecoration(
                     color:( const Color.fromARGB(255, 255, 227, 185)),
                      
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrencyApp()));
                      },
                      child: Column(
                       
                         children: [
  
                         ClipRRect(borderRadius: BorderRadius.circular(10),
                         child:Stack(children: [Image.asset("assets/images/lowtwo.jpg",height:200,width: 120, fit:BoxFit.cover),
                          const Positioned(top: 167,right: 25,child: Text('pizza',style:TextStyle(
                            color: Color.fromARGB(128, 255, 255, 255),
                            fontSize: 20,
                            letterSpacing: 5) ,)
                          ,),
                         
                         
                         ],),
                         
                         ),
                                                  
                        ],
                      ),
                    ),
                     
            
                  ),
                 
                  ],
                  
                ),
                
              ),
            
            ),
              // SizedBox(
              //      height: 8,
              // ),
               Padding(
                   padding: const EdgeInsets.all(13.0),
                   child: Row(
                  children: const [
                    Text('Featured',style: TextStyle(color: Color.fromARGB(255, 138, 137, 137),fontSize: 25),),
                ],
              ),
            ),
            sub(),
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                       height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 173, 168),
                        borderRadius: BorderRadius.circular(16),
                      ),
                       child: Image.asset("assets/row/six.png",height: 50,width: 50,),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(7),
                     child: Center(
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Delious Burger',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 7,),
                          Row(
                            
                            children: const [
                            
                              
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star_half,size:15,color: Colors.amber,),

                            ],

                          ),
                          const SizedBox(height: 7,),
                        
                          const Text('\$20'),

                        ],
                       ),
                     ),
                   ),
                   const SizedBox(
                    width: 190,
                   ),
                   Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 255, 94, 83),
                          borderRadius: BorderRadius.circular(24),

                          
                        ),
                        child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white,)),
                       ),
                     
                    ],
                   ),
                    
                  ],
                ),
              ),
            ],
          ),
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                       height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 173, 168),
                        borderRadius: BorderRadius.circular(16),
                      ),
                       child: Image.asset("assets/row/three.png",height: 50,width: 50,),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(7),
                     child: Center(
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('French Frish',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 7,),
                          Row(
                            
                            children: const [
                            
                              
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star_half,size:15,color: Colors.amber,),

                            ],

                          ),
                          const SizedBox(height: 7,),
                        
                          const Text('\$30'),

                        ],
                       ),
                     ),
                   ),
                   const SizedBox(
                    width: 203,
                   ),
                   Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 255, 94, 83),
                          borderRadius: BorderRadius.circular(24),

                          
                        ),
                        child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white,)),
                       ),
                     
                    ],
                   ),
                    
                  ],
                ),
              ),
            ],
          ),
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                       height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 173, 168),
                        borderRadius: BorderRadius.circular(16),
                      ),
                       child: Image.asset("assets/row/two.png",height: 50,width: 50,),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(7),
                     child: Center(
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Delious cake',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 7,),
                          Row(
                            
                            children: const [
                            
                              
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star_half,size:15,color: Colors.amber,),

                            ],

                          ),
                          const SizedBox(height: 7,),
                        
                          const Text('\$50'),

                        ],
                       ),
                     ),
                   ),
                   const SizedBox(
                    width: 200,
                   ),
                   Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 255, 94, 83),
                          borderRadius: BorderRadius.circular(24),

                          
                        ),
                        child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white,)),
                       ),
                     
                    ],
                   ),
                    
                  ],
                ),
              ),
            ],
          ),
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                       height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 173, 168),
                        borderRadius: BorderRadius.circular(16),
                      ),
                        child: Image.asset("assets/row/ni9.png",height: 50,width: 50,),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(7),
                     child: Center(
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Delious donut',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 7,),
                          Row(
                            
                            children: const [
                            
                              
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star_half,size:15,color: Colors.amber,),

                            ],

                          ),
                          const SizedBox(height: 7,),
                        
                          const Text('\$60'),

                        ],
                       ),
                     ),
                   ),
                   const SizedBox(
                    width: 192,
                   ),
                   Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 255, 94, 83),
                          borderRadius: BorderRadius.circular(24),

                          
                        ),
                        child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white,)),
                       ),
                     
                    ],
                   ),
                    
                  ],
                ),
              ),
            ],
          ),
            
            
           ],
           
          ),
          
          
        ),
        
        
      ),
      
    );
  }

  Column sub() {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                       height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 173, 168),
                        borderRadius: BorderRadius.circular(16),
                      ),
                       child: Image.asset("assets/row/four.png",height: 50,width: 50,),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(7),
                     child: Center(
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Delious Popcorn',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 7,),
                          Row(
                            
                            children: const [
                            
                              
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star,size:15,color: Colors.amber,),
                              Icon(Icons.star_half,size:15,color: Colors.amber,),

                            ],

                          ),
                          const SizedBox(height: 7,),
                        
                          const Text('\$40'),

                        ],
                       ),
                     ),
                   ),
                   const SizedBox(
                    width: 181,
                   ),
                   Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 255, 94, 83),
                          borderRadius: BorderRadius.circular(24),

                          
                        ),
                        child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white,)),
                       ),
                     
                    ],
                   ),
                    
                  ],
                ),
              ),
            ],
          );
  }
}
Container imagerow(BuildContext context) {
    return Container(
                    height: 200,
                    width: 120,
                   
                    decoration: BoxDecoration(
                     color:( const Color.fromARGB(255, 255, 227, 185)),
                      
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrencyApp()));
                      },
                      child: Column(
                       
                         children: [
  
                         ClipRRect(borderRadius: BorderRadius.circular(10),
                         child:Stack(children: [Image.asset("assets/images/lowtwo.jpg",height:200,width: 120, fit:BoxFit.cover),
                          const Positioned(top: 167,right: 25,child: Text('pizza',style:TextStyle(
                            color: Color.fromARGB(128, 255, 255, 255),
                            fontSize: 20,
                            letterSpacing: 5) ,)
                          ,),
                         
                         
                         ],),
                         
                         ),
                                                  
                        ],
                      ),
                    ),
                     
            
                  );
}


