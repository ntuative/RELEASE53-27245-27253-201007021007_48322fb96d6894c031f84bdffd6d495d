package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_133:int = 1;
      
      public static const const_289:int = 4;
      
      public static const const_251:int = 3;
      
      public static const const_124:int = 0;
      
      public static const const_566:String = "RWCUE_EVENT_CHAT";
      
      public static const const_107:int = 2;
       
      
      private var var_2058:int;
      
      private var var_207:String = "";
      
      private var var_2060:BitmapData;
      
      private var _userName:String;
      
      private var var_1400:int = 0;
      
      private var var_2059:uint;
      
      private var _userId:int = 0;
      
      private var _roomCategory:int;
      
      private var var_2056:Number;
      
      private var var_2057:Number;
      
      private var _roomId:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Boolean = false, param14:Boolean = false)
      {
         super(param1,param13,param14);
         _userId = param2;
         var_207 = param3;
         var_1400 = param12;
         _userName = param4;
         var_2058 = param5;
         var_2056 = param6;
         var_2057 = param7;
         var_2060 = param8;
         var_2059 = param9;
         _roomId = param10;
         _roomCategory = param11;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get userImage() : BitmapData
      {
         return var_2060;
      }
      
      public function get text() : String
      {
         return var_207;
      }
      
      public function get userX() : Number
      {
         return var_2056;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get userCategory() : int
      {
         return var_2058;
      }
      
      public function get chatType() : int
      {
         return var_1400;
      }
      
      public function get userColor() : uint
      {
         return var_2059;
      }
      
      public function get userY() : Number
      {
         return var_2057;
      }
   }
}
