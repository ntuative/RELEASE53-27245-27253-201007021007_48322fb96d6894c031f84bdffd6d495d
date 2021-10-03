package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2082:int;
      
      private var var_2083:int;
      
      private var var_2080:int;
      
      private var _userName:String;
      
      private var var_2084:int;
      
      private var var_2085:int;
      
      private var var_2081:int;
      
      private var _userId:int;
      
      private var var_750:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2085 = param1.readInteger();
         var_2084 = param1.readInteger();
         var_750 = param1.readBoolean();
         var_2080 = param1.readInteger();
         var_2083 = param1.readInteger();
         var_2082 = param1.readInteger();
         var_2081 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2081;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_750;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2084;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2083;
      }
      
      public function get cautionCount() : int
      {
         return var_2082;
      }
      
      public function get cfhCount() : int
      {
         return var_2080;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2085;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
