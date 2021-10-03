package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class AvatarActionMessageData
   {
       
      
      private var _actionParameter:String;
      
      private var var_204:String;
      
      public function AvatarActionMessageData(param1:String, param2:String)
      {
         super();
         var_204 = param1;
         _actionParameter = param2;
      }
      
      public function get actionType() : String
      {
         return var_204;
      }
      
      public function get actionParameter() : String
      {
         return _actionParameter;
      }
   }
}
