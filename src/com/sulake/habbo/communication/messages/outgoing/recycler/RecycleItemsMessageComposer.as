package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_937:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_937 = new Array();
         var_937.push(param1.length);
         var_937 = var_937.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_937;
      }
   }
}
