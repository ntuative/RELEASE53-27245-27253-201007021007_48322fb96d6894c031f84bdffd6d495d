package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1438:int;
      
      private var var_1656:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1438 = param1;
         var_1656 = param2;
         Logger.log("READ NODE: " + var_1438 + ", " + var_1656);
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
