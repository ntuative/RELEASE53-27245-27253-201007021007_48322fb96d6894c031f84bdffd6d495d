package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_729:int = 2;
      
      public static const const_933:int = 6;
      
      public static const const_657:int = 1;
      
      public static const const_712:int = 3;
      
      public static const const_1022:int = 4;
      
      public static const const_659:int = 5;
       
      
      private var var_2318:String;
      
      private var var_1152:int;
      
      private var var_2315:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1152 = param2;
         var_2315 = param3;
         var_2318 = param4;
      }
      
      public function get time() : String
      {
         return var_2318;
      }
      
      public function get senderId() : int
      {
         return var_1152;
      }
      
      public function get messageText() : String
      {
         return var_2315;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
