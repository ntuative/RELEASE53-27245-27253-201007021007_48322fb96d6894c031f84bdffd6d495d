package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1726:String = "";
      
      private var var_165:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1726 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_165 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1726;
      }
      
      public function get objectId() : String
      {
         return var_165;
      }
   }
}
