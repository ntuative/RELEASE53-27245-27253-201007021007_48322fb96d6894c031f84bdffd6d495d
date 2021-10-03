package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1097:int = 31;
      
      private static const const_1096:int = 32;
      
      private static const const_514:int = 30;
      
      private static const const_791:int = 20;
      
      private static const const_515:int = 10;
       
      
      private var var_641:Boolean = false;
      
      private var var_232:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_232 = new Array();
         super();
         super.setAnimation(const_514);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!var_641)
            {
               var_641 = true;
               var_232 = new Array();
               var_232.push(const_1097);
               var_232.push(const_1096);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_515)
         {
            if(var_641)
            {
               var_641 = false;
               var_232 = new Array();
               if(_direction == 2)
               {
                  var_232.push(const_791 + 5 - param1);
                  var_232.push(const_515 + 5 - param1);
               }
               else
               {
                  var_232.push(const_791 + param1);
                  var_232.push(const_515 + param1);
               }
               var_232.push(const_514);
               return;
            }
            super.setAnimation(const_514);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
         {
            if(false)
            {
               super.setAnimation(var_232.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
