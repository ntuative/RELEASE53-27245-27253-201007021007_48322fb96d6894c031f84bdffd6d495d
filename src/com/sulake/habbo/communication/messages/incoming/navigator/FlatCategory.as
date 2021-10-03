package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_373:Boolean;
      
      private var var_1438:int;
      
      private var var_1656:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1438 = param1.readInteger();
         var_1656 = param1.readString();
         var_373 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_373;
      }
      
      public function get nodeName() : String
      {
         return var_1656;
      }
      
      public function get nodeId() : int
      {
         return var_1438;
      }
   }
}
