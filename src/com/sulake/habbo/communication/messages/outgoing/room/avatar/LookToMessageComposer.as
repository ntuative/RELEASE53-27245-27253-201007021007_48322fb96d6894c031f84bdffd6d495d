package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2345:int;
      
      private var var_2346:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2345 = param1;
         var_2346 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2345,var_2346];
      }
   }
}
