package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class FaqClientFaqsMessageParser implements IMessageParser
   {
       
      
      private var var_710:Map;
      
      private var var_709:Map;
      
      public function FaqClientFaqsMessageParser()
      {
         super();
      }
      
      public function get normalData() : Map
      {
         return var_710;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var_709 = new Map();
         var_710 = new Map();
         _loc5_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc2_ = param1.readInteger();
            _loc3_ = param1.readString();
            var_709.add(_loc2_,_loc3_);
            _loc4_++;
         }
         _loc5_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc2_ = param1.readInteger();
            _loc3_ = param1.readString();
            var_710.add(_loc2_,_loc3_);
            _loc4_++;
         }
         return true;
      }
      
      public function get urgentData() : Map
      {
         return var_709;
      }
      
      public function flush() : Boolean
      {
         if(var_709 != null)
         {
            var_709.dispose();
         }
         var_709 = null;
         if(var_710 != null)
         {
            var_710.dispose();
         }
         var_710 = null;
         return true;
      }
   }
}
