package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1581:String;
      
      private var var_1552:String;
      
      private var var_1161:String;
      
      private var var_398:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1581 = String(param1.@align);
         var_1161 = String(param1.@base);
         var_1552 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_398 = Number(_loc2_);
            if(var_398 > 1)
            {
               var_398 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1581;
      }
      
      public function get ink() : String
      {
         return var_1552;
      }
      
      public function get base() : String
      {
         return var_1161;
      }
      
      public function get isBlended() : Boolean
      {
         return var_398 != 1;
      }
      
      public function get blend() : Number
      {
         return var_398;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
