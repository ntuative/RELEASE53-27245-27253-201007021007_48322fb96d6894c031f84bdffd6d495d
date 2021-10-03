package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1581:int = 9;
      
      public static const const_1511:int = 4;
      
      public static const const_1533:int = 1;
      
      public static const const_1367:int = 10;
      
      public static const const_1569:int = 2;
      
      public static const const_1278:int = 7;
      
      public static const const_1417:int = 11;
      
      public static const const_1551:int = 3;
      
      public static const const_1393:int = 8;
      
      public static const const_1416:int = 5;
      
      public static const const_1592:int = 6;
      
      public static const const_1279:int = 12;
       
      
      private var var_2002:String;
      
      private var _roomId:int;
      
      private var var_1338:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2002;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1338 = param1.readInteger();
         var_2002 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1338;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
