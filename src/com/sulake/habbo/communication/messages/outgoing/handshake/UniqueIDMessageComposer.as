package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class UniqueIDMessageComposer implements IMessageComposer
   {
       
      
      private var var_933:String;
      
      public function UniqueIDMessageComposer(param1:String)
      {
         super();
         var_933 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_933];
      }
      
      public function dispose() : void
      {
      }
   }
}
