https://pub.dev/packages/lottie/install

There Are Two Types of Animation 
1. Continues ANimation 
2. Start & Stop ANimation 

Dependencies uses : https://pub.dev/packages/lottie/install

1.Continues Animation : 
  Find Animation from web: https://lottiefiles.com/featured
  Select it . Copy its link
  As we have copy a link so we need this command 
  #Lottie.network("URL") 

2. Start & Stop Animation 
  For this we need a lot of work to done 
  
  1. late final AnimationController _controller; 
      We use late here becuase we have to latter defined its value 
  2.  innit State
      @override
      void initState() {
        // TODO: implement initState
        super.initState();
        _controller = AnimationController(
         vsync: this,
      );
      }
  3. A dispose to clean 
    @override
    //To clean eveything
    void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    }
    
 Notes : as we have added this  =>  AnimationController(vsync: this,);
          we need to add => with SingleTickerStateProviderStateMixin 
          as Shown Bellow 
![image](https://user-images.githubusercontent.com/101444405/187826149-dcd92b2f-cc4e-424c-a524-6d8c7acba2ce.png)


4. A bool variable
    bool bookMarked = false;
    
5. _controller.forward() ... here forward will play the animation form start to end 
6. _controller.reverse() ... here forward will play the animation from end to start

7. To do above step we need this...
    if bookmarked is true then forward-animation and assign bookMarked to True 
    else reverse-animation and set value of bookMarked to false
    
    Code : 
    ![image](https://user-images.githubusercontent.com/101444405/187826635-e21aa84c-d1c3-4ada-ac77-5d4214feed85.png)
      
     setState is needed for changing the text of BigText Widget 
     
     
9. Gesture Detector .. so on tap a function reverseBookmark will be exceuted 
    ![image](https://user-images.githubusercontent.com/101444405/187826759-16fb7fef-39af-40b0-9d78-a615b744993b.png)

10. One Last thing i forget 
    a controller will added in Lottie widget so that it can reverse and forward animation etc 


Thats all

  
