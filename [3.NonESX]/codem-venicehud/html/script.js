var poscan = null;
var poszirh = null;
var poshunger = null;
var possu = null;
var posbenzin = null;
var posrpm = null;

window.addEventListener('message', function(event) {
  var item = event.data;

  
  


   if (typeof item.hideHud !== "undefined") {

       if (item.hideHud == true) {
           $(".container").fadeOut();
       } else {
           $(".container").fadeIn();

       };
   };



   
   
   if (typeof item.hud !== "undefined") {
  
    if (item.hud == true) {
        $("body").css('display','block');
    } else {
      $("body").css('display','none');

    };
};

   if (typeof item.health !== "undefined") {

     var can = (item.health /99);
     poscan = can
   
      
   };
 
   if (typeof item.changeSpeedUnit !== "undefined") {

   
     $('.kmhtext').text(item.changeSpeedUnit)
  };



   if (typeof item.armour !== "undefined") {
      var zirh = (item.armour/99);
      poszirh = zirh;

   };

   if (typeof item.oxygen !== "undefined") {
      


       $(".cigeryazi").text(item.oxygen.toFixed(0));
    
   };

    if (typeof item.food !== "undefined") {
        var yemek = (item.food/99);
    
        poshunger = yemek;
      
        
    };

   if (typeof item.water !== "undefined") {
       var su = (item.water / 99);
      possu = su;  

 
   };


   if (typeof item.showVehiclePart !== "undefined") {
       if (item.showVehiclePart == true) {
           $(".onwalk").css('display', 'none');
           $(".carhud").css('display','block');
       } else if (item.showVehiclePart == false) {
           $(".carhud").css('display', 'none');
           $(".onwalk").css('display', 'block');
       };
   };


     if (typeof item.seated !== "undefined") {
         if (item.seated == true) {
          
            $('#kemer').attr("src", "../html/images/seatbelt-white.png");
         } else if (item.seated == false) {
          $('#kemer').attr("src", "../html/images/seatbelt-red.png");

     
         };
     };
   if (typeof item.motor !== "undefined") {
       if (item.motor == 1) {
      
        $('#motoracik').css('display', 'block');
        $('#motorkapali').fadeOut(100);
       } else  {
        $('#motoracik').fadeOut(100);
        $('#motorkapali').fadeIn(100);
    
       };
   };
   if (typeof item.isiklar !== "undefined") {
     if (item.isiklar == "off"){
      $('.car-kisalar').attr("src", "../html/images/car-kisalar.png");
      $('.car-kisalar-acik').css('display','none');
      $('.car-uzunlar-acik').css('display','none');
      $('.car-uzunlar').css('display','block');
     
     }else if(item.isiklar == "normal"){
    
      $('.car-kisalar-acik').css('display','block');
      $('.car-uzunlar-acik').css('display','none');
      $('.car-uzunlar').css('display','block');
     }else if (item.isiklar == "high"){
      $('.car-kisalar-acik').css('display','block');
      $('.car-uzunlar').css('display','none');
      $('.car-uzunlar-acik').css('display','block');
     };
  
  };


   

   if (typeof item.hideseat !== "undefined") {
       if (item.hideseat == true) {
           $("#kemer").hide();
       } else if (item.hideseat == false) {
           $("#kemer").show();
       };
   };
   if (typeof item.talking !== "undefined") {
   
     if(item.talking== true){
      $('.mikrafon-acik').css('display','block');
      $('.mikrafon-acik2').css('display','block');
      $('.mikrafon-kapali2').css('display','none');
      $('.mikrafon-kapali').css('display','none');
     }else{
      $('.mikrafon-acik').css('display','none');
      $('.mikrafon-acik2').css('display','none');
      $('.mikrafon-kapali2').css('display','block');
      $('.mikrafon-kapali').css('display','block');
     };
     


   };


   if (typeof item.speed !== "undefined") {

     $(".speedtext").text(item.speed);
     
      
    };
    if (typeof item.kimlik != "undefined") {
 
      $(".beyinyazi").text(item.kimlik);
     };



   if (typeof item.fuel !== "undefined") {
    var benzin = (item.fuel/99);
  
    posbenzin = benzin;
   };

   if (typeof item.rpm !== "undefined") {
    var rpm = (item.rpm/1000);
    posrpm = rpm;

   };


  if (typeof item.cruised !== "undefined") {
      if (item.cruised == true) {
            $('.car-sabitleme').css('display','none');
            $('.car-sabitleme2').css('display','block');
      } else if (item.cruised == false) {
        $('.car-sabitleme').css('display','block');
        $('.car-sabitleme2').css('display','none');
      };
  };

  if(typeof item.talkingRadius !== "undefined"){
  
    if(item.talkingRadius == 1){
      $('.mikrafon-kapali-kademe1').css('display','block');
      $('.mikrafon-kapali-kademe2').css('display','block');
      $('.mikrafon-kapali-kademe3').css('display','none');
    }else if(item.talkingRadius == 2 ){
      $('.mikrafon-kapali-kademe1').css('display','block');
      $('.mikrafon-kapali-kademe2').css('display','block');
      $('.mikrafon-kapali-kademe3').css('display','block');
    }else {
      $('.mikrafon-kapali-kademe1').css('display','block');
      $('.mikrafon-kapali-kademe2').css('display','none');
      $('.mikrafon-kapali-kademe3').css('display','none');
    };
  };

  if(typeof item.talkingRadius !== "undefined"){


     if(item.talkingRadius == 1){
       $('.mikrafon-kapali-kademe111').css('display','block');
       $('.mikrafon-kapali-kademe11').css('display','block');
       $('.mikrafon-kapali-kademe222').css('display','block');
       $('.mikrafon-kapali-kademe22').css('display','block');
       $('.mikrafon-kapali-kademe333').css('display','none');
       $('.mikrafon-kapali-kademe33').css('display','none');
     }else if(item.talkingRadius == 2 ){
       $('.mikrafon-kapali-kademe111').css('display','block');
       $('.mikrafon-kapali-kademe11').css('display','block');
       $('.mikrafon-kapali-kademe222').css('display','block');
       $('.mikrafon-kapali-kademe22').css('display','block');
       $('.mikrafon-kapali-kademe333').css('display','block');
       $('.mikrafon-kapali-kademe33').css('display','block');
     }else {
       $('.mikrafon-kapali-kademe111').css('display','block');
       $('.mikrafon-kapali-kademe11').css('display','block');
       $('.mikrafon-kapali-kademe222').css('display','none');
       $('.mikrafon-kapali-kademe22').css('display','none');
       $('.mikrafon-kapali-kademe333').css('display','none');
       $('.mikrafon-kapali-kademe33').css('display','none');
     };
  };


});

var lastcan  = null;
var lastzirh = null;
var lastyemek = null;
var lastsu = null;
var lastbenzin = null;
var lastrpm = null;
setInterval(function(){
  
    if (poscan != lastcan){
      if (poscan >= 1.0){

        poscan = 1.0
      }
      lastcan = poscan
   
      var bar = new ProgressBar.Path('#can-path2', {
        easing: 'easeInOut',
        duration: 0,
      });
      var bar2 = new ProgressBar.Path('#can-path3',{
        easing: 'easeInOut',
        duration : 0,
      });
      var barr = new ProgressBar.Path('#can-path22', {
        easing: 'easeInOut',
        duration: 0,
      });
      var bar22 = new ProgressBar.Path('#can-path33',{
        easing: 'easeInOut',
        duration : 0,
      });
      bar.set(1);
      bar.animate(poscan); 
      bar2.set(1);
      bar2.animate(poscan);
      barr.set(1);
      barr.animate(poscan); 
      bar22.set(1);
      bar22.animate(poscan);
    }
    if (poszirh!=lastzirh){
        if (poszirh >= 1.0){
          poszirh = 1.0;
        }
        var bar3 = new ProgressBar.Path('#zirh-path2', {
          easing: 'easeInOut',
          duration: 0,
        });
        var bar4 = new ProgressBar.Path('#zirh-path3',{
          easing: 'easeInOut',
          duration : 0,
        });
        var bar33 = new ProgressBar.Path('#zirh-path22', {
          easing: 'easeInOut',
          duration: 0,
        });
        var bar44 = new ProgressBar.Path('#zirh-path33',{
          easing: 'easeInOut',
          duration : 0,
        });
        bar3.set(1);
        bar3.animate(poszirh); 
        bar4.set(1);
        bar4.animate(poszirh);
        bar33.set(1);
        bar33.animate(poszirh); 
        bar44.set(1);
        bar44.animate(poszirh);
    }
     
    if (poshunger != lastyemek){
        if (poshunger>= 1.0){
          poshunger = 1.0;
        }
        
         var bar5 = new ProgressBar.Path('#hunger-path2', {
         easing: 'easeInOut',
         duration: 0,
       });
       var bar6 = new ProgressBar.Path('#hunger-path3',{
         easing: 'easeInOut',
         duration : 0,
       });
       
       var bar55 = new ProgressBar.Path('#hunger-path22', {
        easing: 'easeInOut',
        duration: 0,
      });
      var bar66 = new ProgressBar.Path('#hunger-path33',{
        easing: 'easeInOut',
        duration : 0,
      });
       bar5.set(1);
       bar5.animate(poshunger); 
       bar6.set(1);
       bar6.animate(poshunger);
       bar55.set(1);
       bar55.animate(poshunger); 
       bar66.set(1);
       bar66.animate(poshunger);

    }
    if (possu != lastsu){
      if (possu>= 1.0){
        possu = 1.0;
      }
    
       var bar5 = new ProgressBar.Path('#heart-path2', {
       easing: 'easeInOut',
       duration: 0,
     });
     var bar6 = new ProgressBar.Path('#heart-path3',{
       easing: 'easeInOut',
       duration : 0,
     });
     var bar55 = new ProgressBar.Path('#heart-path22', {
      easing: 'easeInOut',
      duration: 0,
    });
    var bar66 = new ProgressBar.Path('#heart-path33',{
      easing: 'easeInOut',
      duration : 0,
    });
     bar5.set(1);
     bar5.animate(possu); 
     bar6.set(1);
     bar6.animate(possu);
     bar55.set(1);
     bar55.animate(possu); 
     bar66.set(1);
     bar66.animate(possu);

    }
    if (posbenzin != lastbenzin){
      if (posbenzin>= 1.0){
        posbenzin = 1.0;
      }
      
       var bar7 = new ProgressBar.Path('#benzin-path2', {
       easing: 'easeInOut',
       duration: 0,
     });
     var bar8 = new ProgressBar.Path('#benzin-path3',{
       easing: 'easeInOut',
       duration : 0,
     });
     bar7.set(1);
     bar7.animate(-posbenzin); 
     bar8.set(1);
     bar8.animate(-posbenzin);

    }

    if (posrpm != lastrpm){
      if (posrpm>= 1.0){
        posrpm = 1.0;
      }
      
       var bar7 = new ProgressBar.Path('#rpm-path2', {
       easing: 'easeInOut',
       duration: 0,
     });
     var bar8 = new ProgressBar.Path('#rpm-path3',{
       easing: 'easeInOut',
       duration : 0,
     });
     bar7.set(1);
     bar7.animate(-posrpm); 
     bar8.set(1);
     bar8.animate(-posrpm);

    }

  
},1000);




   











































// var bar2 = new ProgressBar.Path('#heart-path2',{
//     easing: 'easeInOut',
//     duration : 1400,

// });

// bar2.set(0)
// bar2.animate(-0.7)
