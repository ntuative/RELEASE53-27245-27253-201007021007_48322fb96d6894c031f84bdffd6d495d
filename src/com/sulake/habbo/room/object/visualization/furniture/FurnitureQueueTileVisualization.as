package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1134:int = 1;
      
      private static const const_1096:int = 3;
      
      private static const const_1136:int = 2;
      
      private static const const_1135:int = 15;
       
      
      private var var_950:int;
      
      private var var_232:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_232 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1136)
         {
            var_232 = new Array();
            var_232.push(const_1134);
            var_950 = const_1135;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_950 > 0)
         {
            --var_950;
         }
         if(var_950 == 0)
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
