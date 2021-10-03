package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1410:int;
      
      private var var_1075:String;
      
      private var var_751:Array;
      
      private var var_1069:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_751.slice();
      }
      
      public function flush() : Boolean
      {
         var_1075 = "";
         var_1069 = [];
         var_751 = [];
         var_1410 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1410;
      }
      
      public function get question() : String
      {
         return var_1075;
      }
      
      public function get choices() : Array
      {
         return var_1069.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1075 = param1.readString();
         var_1069 = [];
         var_751 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1069.push(param1.readString());
            var_751.push(param1.readInteger());
            _loc3_++;
         }
         var_1410 = param1.readInteger();
         return true;
      }
   }
}
