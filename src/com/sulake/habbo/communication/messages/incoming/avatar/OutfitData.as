package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1815:String;
      
      private var var_607:String;
      
      private var var_1528:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1528 = param1.readInteger();
         var_1815 = param1.readString();
         var_607 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_607;
      }
      
      public function get figureString() : String
      {
         return var_1815;
      }
      
      public function get slotId() : int
      {
         return var_1528;
      }
   }
}
