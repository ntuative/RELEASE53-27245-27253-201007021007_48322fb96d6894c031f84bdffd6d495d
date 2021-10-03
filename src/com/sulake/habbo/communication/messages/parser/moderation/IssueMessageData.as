package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_151:int = 1;
      
      public static const const_1424:int = 3;
      
      public static const const_427:int = 2;
       
      
      private var var_2026:int;
      
      private var var_2010:int;
      
      private var var_2028:int;
      
      private var var_2011:int;
      
      private var var_36:int;
      
      private var var_410:int;
      
      private var var_1342:int;
      
      private var var_1910:int;
      
      private var var_1166:int;
      
      private var _roomResources:String;
      
      private var var_1736:int;
      
      private var var_2023:int;
      
      private var var_2027:String;
      
      private var var_2029:String;
      
      private var var_2024:int = 0;
      
      private var var_1426:String;
      
      private var _message:String;
      
      private var var_1957:int;
      
      private var var_2022:String;
      
      private var var_1281:int;
      
      private var var_734:String;
      
      private var var_2025:String;
      
      private var var_1587:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1166 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2023;
      }
      
      public function set roomName(param1:String) : void
      {
         var_734 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_734;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_2011 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_36 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2010;
      }
      
      public function get priority() : int
      {
         return var_2026 + var_2024;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1910 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2029;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1587) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1281;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2023 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1342;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2027 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1736;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_2011;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2025 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1426 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1910;
      }
      
      public function set priority(param1:int) : void
      {
         var_2026 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2010 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2027;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2029 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1957 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1426;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1342 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2028;
      }
      
      public function set flatId(param1:int) : void
      {
         var_410 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1281 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1587 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1957;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2022 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1587;
      }
      
      public function get reportedUserId() : int
      {
         return var_1166;
      }
      
      public function get flatId() : int
      {
         return var_410;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2025;
      }
      
      public function get reporterUserName() : String
      {
         return var_2022;
      }
   }
}
