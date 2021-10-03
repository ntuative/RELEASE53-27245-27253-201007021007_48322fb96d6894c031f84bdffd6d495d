package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.UserDefinedRoomEvents;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1478:int = 10;
       
      
      private var var_2238:Boolean;
      
      private var var_2235:int;
      
      private var var_1389:int;
      
      private var var_2232:Boolean;
      
      private var var_1143:Array;
      
      private var var_958:Dictionary;
      
      private var var_1142:Array;
      
      private var var_2458:int;
      
      private var var_2230:int;
      
      private var var_2236:UserDefinedRoomEvents;
      
      private var var_1650:int;
      
      private var var_2231:int;
      
      private var var_1980:int;
      
      private var var_644:PublicRoomShortData;
      
      private var var_450:RoomEventData;
      
      private var var_138:MsgWithRequestId;
      
      private var var_2234:Boolean;
      
      private var var_2237:Array;
      
      private var _navigator:HabboNavigator;
      
      private var var_2233:Boolean;
      
      private var var_211:GuestRoomData;
      
      private var var_787:Boolean;
      
      private var var_643:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1143 = new Array();
         var_1142 = new Array();
         var_958 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_138 != null && var_138 as PopularRoomTagsData != null;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2233;
      }
      
      public function startLoading() : void
      {
         this.var_787 = true;
      }
      
      public function get createdFlatId() : int
      {
         return var_2235;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2233 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_450 != null)
         {
            var_450.dispose();
         }
         var_450 = param1;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function get homeRoomId() : int
      {
         return var_1650;
      }
      
      public function get stuffStates() : Array
      {
         return var_2237;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_138 != null && var_138 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_138 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_211;
      }
      
      public function get allCategories() : Array
      {
         return var_1143;
      }
      
      public function onRoomExit() : void
      {
         if(var_450 != null)
         {
            var_450.dispose();
            var_450 = null;
         }
         if(var_644 != null)
         {
            var_644.dispose();
            var_644 = null;
         }
         if(var_211 != null)
         {
            var_211.dispose();
            var_211 = null;
         }
         var_643 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_787 = false;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_211 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1650 == _loc1_;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_787 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_644 = null;
         var_211 = null;
         var_643 = false;
         if(param1.guestRoom)
         {
            var_643 = param1.owner;
         }
         else
         {
            var_644 = param1.publicSpace;
            var_450 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return var_643;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2458 = param1.limit;
         this.var_1389 = param1.favouriteRoomIds.length;
         this.var_958 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_958[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_138 as PopularRoomTagsData;
      }
      
      public function get settingsReceived() : Boolean
      {
         return var_2238;
      }
      
      public function set stuffStates(param1:Array) : void
      {
         var_2237 = param1;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_644;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_787 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_211 != null && var_643;
      }
      
      public function get userDefinedRoomEvents() : UserDefinedRoomEvents
      {
         return var_2236;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2232;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1143 = param1;
         var_1142 = new Array();
         for each(_loc2_ in var_1143)
         {
            if(_loc2_.visible)
            {
               var_1142.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2230;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2231;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1142;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_138 == null)
         {
            return;
         }
         var_138.dispose();
         var_138 = null;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         var_2238 = param1;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_450;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_958[param1] = !!param2 ? "yes" : null;
         var_1389 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_138 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1980;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_138 != null && var_138 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2232 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2230 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2234 = param1;
      }
      
      public function set userDefinedRoomEvents(param1:UserDefinedRoomEvents) : void
      {
         var_2236 = param1;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_787;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1389 >= var_2458;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_211 != null)
         {
            var_211.dispose();
         }
         var_211 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2231 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2234;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_211 != null && !var_643;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2235 = param1;
      }
   }
}
