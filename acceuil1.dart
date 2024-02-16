import 'package:flutter/material.dart';
import 'package:systemedarosage/historique.dart';
import 'humidité.dart';
import 'temperature.dart';
import 'notifications.dart';
import 'profil/page/profil_page.dart';
   
class Homepage3 extends StatelessWidget{
  const Homepage3 ({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context) =>Scaffold(
 
   appBar:AppBar( 
 
    title: const Text('home'),
    backgroundColor: Color.fromARGB(255, 61, 110, 71),
   centerTitle: true,
     actions: [
     IconButton(onPressed: () {
     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage() )
              );}, icon:Icon(
              Icons.person,
              color: Colors.black,
        )
       )
      ],
   
   ),
   body:
   Column(
  children: [
    Expanded( flex: 2,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhIVFRUXFRUXFxcVFxUVFhgVFRUXFxUVFRcYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lHx4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAQIDBAUGB//EADIQAAIBAwIDBgYCAwADAAAAAAABAgMRIQQxEkFRYXGBkaHwBRMiscHRMuEUUvFCYnL/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQMCBAX/xAAhEQEBAQEAAwEAAgMBAAAAAAAAAQIREiExQQNRIjJhE//aAAwDAQACEQMRAD8A9/8AE9Za7X8pN2/bOIpk9ZqFKbebbLD2XgZVNt4Xm7fs5tXteVvXa6VFX3Lfmcll9n5fIx027Z8ka6O6xZGWovpx5vL97HQ0FK7u9l9yrTUeLuXM6lKmoqyN4z326MZ/ViZK5FAWWRrT5czFURulBMhLT35mbKzZawwQpG5aJ9Ry0K5tmfGl4VgoRbdkjowpcPeSpU0tlYnI1M8aznisY0gaNGTIoYgAbLadRpJW93KorKJVlaWPTkAXuNpY293LYpXZng5JGlDbhgAJ9o2jEAAGatqJLlz9DM9VPsfejbWhconQXISepUKlTjhKMY5fdyyV/DtErcUr3vsEG4u5Oprnyu8749AZ9fa6CQJmKOrbRpp1U+8as1KsC5VW1MY7vwWTPLWN7JLv/QFdSNthmOlq8Zcb+QAPKPA/EVO7vnlfCb77Yb8jFGo72zc7uvp3ObwJ7++45tT28vefYoSk+p19FSeOLborGHSrPX7/AN+9zr6dYMt/x5dXTtW+m3ds0TqV7bp36YMMW07rBqhFTalm65cuwtNddc130qqaqXKytZW8L8x1NarYTT95KHTyk3z9RStfZZQu1ntOlXkpZu0979OTR0qFdSVzhtuMkknbe7zz5XNad3l569AmuDOrHaiFRBRWFm/aTkijo/FMWEixoi0MkRTRKVgULiCpjUMXJRhnYnOD4XyzfwGXFFN2u+x7jnmTt6EJwaY6ErMC/wCNVFbb3LiESY1IAAAMWAAAEyqpSLbgBWMnAUyoo2ygVyRli5ZqdM0xpYw7EblikxiSMtaNpPqQuaZwKZxEzYq4exATsIC48+qkZbNP7nM1dOUXe2OzmOjD3+UauN2s0pLtJW+X1x33FWnkdTTs59H4fF5g7P8A1lnyZrpU5RxNePUzyw8SxvgadLK0u8yU6lzRpn9S98hz6vn6K7d3ff3bBUmrq+/ddbdh0KlJPcjHTRyrblPFu5vWGrnfq7d3QlB5saJ0vlq6d74yl75DdK/Dbhu89HkzwvFf8PunnCftGyZinSlH6mtu3mWU9RjK3fI3m89Ky89NK2ItE0gZptUkTUbEoqw5K4DiCkvsS7OwaQNeYww1ItPI6SuaqkbrYqpxsxMc9tIAgsNQDEFwBMXEDZFiInN9Q42RYWAgFiUUSsIcRaEyYmgPisi0WNEbAyocBk2AMvAUZcn/AM7TZTb5/wDV1MdPJ0NLG6z1OeVwZ9pU52zs+TO1oqqnHK7Gv6OZCKN/w+NpY5p+mf2bzfa+JyrJaH/V27HsT01JqWVyeeRpsM34xbxnUmyymsEaUbs2I2pIz2JR3HJZLLYA5BUWCiFJJYXO/iaGRkg4diCZLiuRsWRjYCiSAAG0EguAABcqqQd7otuAAkMAAAjJEguAQkmCh1JgLgRcA4B3FUdkxkhOWbIXGzLQ1HE7GhGZesy9TbGiKJJjMMgTE0BqmgJgJl4//C4pXjvzXXu7S2EbYsbKcbZXI6NbTxmk9n1/fUjnPXNMf05MIXNulVpRv1Xrgf8AgzWyT7n+GNUJ3X0vD7OQcsambHTlC5lqNpXtfrbe3O3XuN6KatLoWXsPRyTWOdnfsNByv8n5U7cnnHJu/wB/v3nQhqE9rBLBnU+JyhcncjGVyRpsgaGIAEhiGAAAAABYBWAGAAAACAAYCGAAmDGABTqJcrblxn1G1+hnXwr8ZKf0u5dSrpmSpJlMZWZGa4j5cdhEinT1VJFjkWlUntIGRUh3G0i/EYmwETlfL7DdRX0ohCF8GhR5E8RPMJEhcI+Eo2krjuQuJsD65WqjepK6528Fgrp3vbN1lPqv375mypD65d5TVi91usr9eJGz2hY2aDVPaXg/wzoHGTTSaeGbtFWv9PTbuKY1+VXGvytYgAooBoSAAdwuIAAGIYAAAgABAAAIYgAHcLiISqpOzYdHVhm1rtFl8G+eM+hXVpqSa6ivwr7ji1Jsruyz5Vm0+RZwroczl4Ph1V8TXVfb2zpM5+mpfUn72ZtqSSTfRFcfFceopfxBKTTTsnuvyjUqqaundHn3K977/sKOocHdPvXJmZ/J/bM/k/t3+MDHT1cWr38wKt+ToU4WQ7EhDkbIjJjZG1wJOyEWKIOI2uOfqv5eC/X4KjXrqeFLpv4mQjqe0tT2UI2bXXK8d/X7l9DEk+37lZJGSdIAGdC5MAAAAAABiAAAAYACuDAAAAAAAyVa0b7bPrvYtryv9PMzVaCtfBjV/pPVv4vhV4lfbf0CFS+3Iz/K5RyXvT8KbT/AS2iW1DUUr5W/TqZ4Q6lqkTw+8zrH7Cs6VGGblHxWVoW6temfwa6awc/4w/pj/wDX4D5ktesuLKq9kKUwqbmevP6cd35XoRctpSq5Aw/MAE/J9JFIaZHhOp6ZNiTJOJCSAko1S0rhT5lgzhNXXYc6pRcHbk9mdIjOKaszOs9KzrnInCOUOvp3HbK9SegV234Epn3xOT3xsAALrAAAABiAAYguAAAAAAAAAAAABTXe9t8XfZ0MTNWqWfD7f9MWqbt48uhLV9o7WQ1Mltnv9DZppSf8vI5tJKzd8du9+naaaWoSzc15FjXPp1N3bqRFGaY2PrSE6/CrlE66qQcbWfuzKa8+Lu5GOpJxfEvfYTuktbUVKvYc/UVOXXPiv6fodfWUuL64779/9nH1U01fx/fpczZxDbJxICiW4GEH1JMaZXxDUkdL1pVjE2VxYAfU1Ni42RGMurOIFMikh2Dpp3AjFskMwAAAAAAAAAAAgAAAGIUnbdgDAq/yIdSupq47XF2F2LpMcZFUc5RIOl1TrISf1J8rW/KMVem9r5R1YpWMWvpcKvHx69lie8/qe8+usijyY6kLp3K6CeW13dR1aljCX4UYteSfcXVZ/Sl1f29ohDK2x1yQrytbxH3h/Ig0Z9THBpaKKyujLFijS1bfQ+9flGH4jpG7uCv1X6FrItPiXL8GzT11OKl5rozef8pyp/f8a8181rFl43uuwD0c6UW7uMW+1JgH/mx4PV1HkgplFVvOSFOsUd917b4ssik+RlhMvpSG3Km4ISgTBja4hYlEYCBiALDAAAAAAAAAAjOVgCVhOQRdxVI3AKqle2xjr1G92XVYmOSI21LVo4egmshcr+YJjq+nJp4N9Kd7HLjqY85LzRohVW6kvNDmuNZ1HUsQrRTWSunqV1z2Zb8EDm3/AONl2tX8ldW8SvZYr3sYdTTUcX8/6K/lJq8tllcs8zfJFGplG31PFjHijcsM66v099hbUpcUb9MlNCNOLuuJ9L2wWy1v/r6/0Y9frE/6qKavv373K62os9se8FMq6ate3vDJ9YuohqI4M3w92k16cuqZc6l1912rcq00Mp25ms/U79bbADQy7T1UqKfIzPRR8b9bEq+tUcWd+059XWynKKSSs1bvvzG69ayvl9LsaoroU6uhL+W/XDKaVVrZgz3l9unB4GVaaV0WjVhgIAMwAQAwYAAACAAZGcbkhXAM6nwl0GnzM+o3KoX5CT7xskr4aMFfTS6HQpyx2rqY9dqbJJPczrnO0b5ztcfW6txfCl4/o57lKXNs7M2mspeOTPwJ/wAYpLrZX8P2c17XLqW36w07LG76L3gvhSk1d47v2XwppYSt73fUtUHJqK59OS5sPETLZ8EocMb85P0WFnnzOjMooR4UorZKxTr6j2tj7l/9cumXxyhqNZmyXj+jBVld33JsrdNPr5v7Erq36jbaEV1bvZFipR/1Xkg+TH/VeSQmWaS5NGLV0bdx0KlNcm13N/8ADn1pSWE7rt/rHoDGpGNVWnnZ/fk/x5HQ0Kuc6sr427H+Dr/DqTScW7uyafWD2fnh93aaxPbOJerWBfwIRdXjVXot8zZo/hqi1Ju7XLl/YwHF8ZlvWqnRtxZeXffbuB0Yv/xQANXiUaVthgAGAAAAGmAAAAAAIAAABMAAM+oXMzXABJa+r6Dd7+Zza7uwAl/Ixv4rZLivYAJJxByOjoqfCr837sAFMN4+r+IslFNZymMCq0c+tpLZWUUcAAR3JL6R3JKo4iLncAJpdZ6zMVVAAJaadL8Oc8y/i/G5rraVxS+W78P8VJvxXFvZ9HfltYYHRnMkXzmSCnqIyV8rdNdGnZrzTAANdN//2Q=='),
          fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(25),
           bottomRight: Radius.circular(25) ,
          )
        ),

    ),
    
      
    ),
    Align(
      alignment: Alignment(0.0,1.0),
      child: SizedBox(
        height: 30,
        width: 30,
        child: OverflowBox(
          minWidth: 0.0,
          maxWidth: MediaQuery.of(context).size.width,
          minHeight: 0.0,
          maxHeight: (MediaQuery.of(context).size.height/4),
          child: Stack(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width:double.infinity 
              ,
              height: double.infinity,
              child: Card(
                color:Color.fromARGB(255, 241, 255, 241),
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                ),
                 child:
                  Column
                            (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 15,left: 20,right: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Center(
                                child: Text("Temperateur ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                             
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Column(
                                      children: [
                                        affichetemp(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMq2aWd_X58m2ppDzU3WnUF16jQFVVI-15L-msKDOUCuCny9mjpPikwtcBKSkqyZVNrys&usqp=CAU'))
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ) ,

              ),
            ),
          ], ),
        ),
      ),
    ),
    //*****************************************************humidety
    SizedBox(height: 140,),
    Align(
      alignment: Alignment(0.0,1.0),
      child: SizedBox(
        height: 40,
        width: 60,
        child: OverflowBox(
          minWidth: 0.0,
          maxWidth: MediaQuery.of(context).size.width,
          minHeight: 0.0,
          maxHeight: (MediaQuery.of(context).size.height/4),
          child: Stack(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width:double.infinity 
              ,
              height: double.infinity,
              child: Card(
                color: Color.fromARGB(255, 241, 255, 241),
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                ),
                   child:
                  Column
                            (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 15,left: 20,right: 20
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Center(
                                child: Text("humidité ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                             
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    
                                    padding: EdgeInsets.only(left: 50),
                                    child: 
                                         
                                        affichehum(),
                                    
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/1779/1779754.png'))
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),),
                    ],







              ),
            ),
         ), ], ),
        ),
      ),
      
    ),

    //***************************************************** button */
        SizedBox(height: 80,),
    Expanded(flex: 1,
        child: Column(
          children: [
            Padding(padding:EdgeInsets.symmetric(horizontal: 15)),

            ElevatedButton(style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 61, 110, 71)),
            ),
             
              
              onPressed: (){}, child: Text("Démarre "))
          ],
        ),
          
       
      
        ),
      
  ],
      
   ),
  
   drawer:const NavigationDrawer(),

  
  
  );

 
}
class NavigationDrawer extends StatelessWidget{

  const NavigationDrawer ({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) =>Drawer(
  child: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      buildHeader(context),
      builMenuItems(context),
    ],
  ),
),
  );
  
 
 
 Widget buildHeader(BuildContext context)=> Container(
  color: Colors.blue  ,
  padding: EdgeInsets.only(
    top: MediaQuery.of(context).padding.top,
  ),
 );
  
  Widget builMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading:const Icon(Icons.home_outlined),
        title: const Text('StatStique'),
        onTap: () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => const Homepage3())))
      ),
         ListTile(
        leading:const Icon(Icons.account_balance),
        title: const Text('Notfification'),
              onTap: () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => notification())))
      ),
         ListTile(
        leading:const Icon(Icons.history_edu_outlined),
        title: const Text('historique'),
       onTap: (){
           Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>
       Home(),
         ));

        },
         ),

          
        
      
      
    ],
  );
}

