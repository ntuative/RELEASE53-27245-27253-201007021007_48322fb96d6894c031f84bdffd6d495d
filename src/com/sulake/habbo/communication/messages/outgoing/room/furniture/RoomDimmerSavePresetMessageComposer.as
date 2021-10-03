package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1746:int;
      
      private var var_1745:int;
      
      private var var_1954:Boolean;
      
      private var var_1953:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1955:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1745 = param1;
         var_1746 = param2;
         var_1953 = param3;
         var_1955 = param4;
         var_1954 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1745,var_1746,var_1953,var_1955,int(var_1954)];
      }
      
      public function dispose() : void
      {
      }
   }
}
