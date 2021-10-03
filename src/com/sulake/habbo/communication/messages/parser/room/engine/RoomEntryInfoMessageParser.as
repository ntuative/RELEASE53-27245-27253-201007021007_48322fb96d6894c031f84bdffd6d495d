package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2367:int;
      
      private var var_409:Boolean;
      
      private var var_2366:Boolean;
      
      private var var_988:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2366 = param1.readBoolean();
         if(var_2366)
         {
            var_2367 = param1.readInteger();
            var_409 = param1.readBoolean();
         }
         else
         {
            var_988 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_988 != null)
         {
            var_988.dispose();
            var_988 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2367;
      }
      
      public function get owner() : Boolean
      {
         return var_409;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2366;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_988;
      }
   }
}
