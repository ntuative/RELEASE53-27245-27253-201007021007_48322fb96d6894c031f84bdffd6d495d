package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1096:int = -1;
      
      private static const const_791:int = 20;
      
      private static const const_515:int = 9;
       
      
      private var var_641:Boolean = false;
      
      private var var_232:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_232 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_641)
            {
               var_641 = true;
               var_232 = new Array();
               var_232.push(const_1096);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_641)
            {
               var_641 = false;
               var_232 = new Array();
               var_232.push(const_791);
               var_232.push(const_515 + param1);
               var_232.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
