package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2179:Number;
      
      private var var_635:Number = 0;
      
      private var var_2178:Number;
      
      private var var_634:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2179 = param1;
         var_2178 = param2;
      }
      
      public function update() : void
      {
         var_634 += var_2178;
         var_635 += var_634;
         if(var_635 > 0)
         {
            var_635 = 0;
            var_634 = var_2179 * -1 * var_634;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_634 = param1;
         var_635 = 0;
      }
      
      public function get location() : Number
      {
         return var_635;
      }
   }
}
