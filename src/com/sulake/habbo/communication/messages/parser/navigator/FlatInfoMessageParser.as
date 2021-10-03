package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_251:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_251 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_251;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_251 = new RoomSettingsFlatInfo();
         var_251.allowFurniMoving = param1.readInteger() == 1;
         var_251.doorMode = param1.readInteger();
         var_251.id = param1.readInteger();
         var_251.ownerName = param1.readString();
         var_251.type = param1.readString();
         var_251.name = param1.readString();
         var_251.description = param1.readString();
         var_251.showOwnerName = param1.readInteger() == 1;
         var_251.allowTrading = param1.readInteger() == 1;
         var_251.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
