package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1798:Number = 0.0;
      
      private var var_1799:Number = 0.0;
      
      private var var_1797:Number = 0.0;
      
      private var var_1800:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1799 = param1;
         var_1797 = param2;
         var_1798 = param3;
         var_1800 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1799;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1798;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1797;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1800;
      }
   }
}
