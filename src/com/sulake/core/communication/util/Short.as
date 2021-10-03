package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_784:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_784 = new ByteArray();
         var_784.writeShort(param1);
         var_784.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_784.position = 0;
         if(false)
         {
            _loc1_ = var_784.readShort();
            var_784.position = 0;
         }
         return _loc1_;
      }
   }
}
