package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1801:String;
      
      private var var_1254:String;
      
      private var var_1802:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1802 = param1;
         var_1254 = param2;
         var_1801 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1802,var_1254,var_1801];
      }
      
      public function dispose() : void
      {
      }
   }
}
