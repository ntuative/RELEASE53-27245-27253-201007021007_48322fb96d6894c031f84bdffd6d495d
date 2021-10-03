package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1141:Array;
      
      private var var_2220:Boolean;
      
      private var var_1140:Array;
      
      private var var_2217:Boolean;
      
      private var var_2223:Boolean;
      
      private var var_2216:Boolean;
      
      private var var_160:Array;
      
      private var var_2219:Boolean;
      
      private var var_2221:Boolean;
      
      private var var_957:Array;
      
      private var var_2222:Boolean;
      
      private var var_2218:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_160 = [];
         var_1140 = [];
         var_1141 = [];
         var_957 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               var_160.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1140.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_957.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2219 = param1.readBoolean();
         var_2216 = param1.readBoolean();
         var_2217 = param1.readBoolean();
         var_2223 = param1.readBoolean();
         var_2218 = param1.readBoolean();
         var_2221 = param1.readBoolean();
         var_2220 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1141.push(param1.readString());
            _loc4_++;
         }
         var_2222 = param1.readBoolean();
      }
      
      public function get banPermission() : Boolean
      {
         return var_2218;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1140;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2217;
      }
      
      public function get method_17() : Boolean
      {
         return var_2220;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2219;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_1140 = null;
         var_1141 = null;
         var_160 = null;
         for each(_loc1_ in var_957)
         {
            _loc1_.dispose();
         }
         var_957 = null;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return var_1141;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2221;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2223;
      }
      
      public function get offenceCategories() : Array
      {
         return var_957;
      }
      
      public function get issues() : Array
      {
         return var_160;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2222;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2216;
      }
   }
}
