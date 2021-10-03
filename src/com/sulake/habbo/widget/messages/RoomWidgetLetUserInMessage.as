package com.sulake.habbo.widget.messages
{
   public class RoomWidgetLetUserInMessage extends RoomWidgetMessage
   {
      
      public static const const_567:String = "RWLUIM_LET_USER_IN";
       
      
      private var _userName:String;
      
      private var var_1833:Boolean;
      
      public function RoomWidgetLetUserInMessage(param1:String, param2:Boolean)
      {
         super(const_567);
         _userName = param1;
         var_1833 = param2;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get canEnter() : Boolean
      {
         return var_1833;
      }
   }
}
