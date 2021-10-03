package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.GetEventsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.navigator.userdefinedroomevents.UserDefinedRoomEventsCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_760:IWindowContainer;
      
      private var var_1100:ITextWindow;
      
      private var var_180:RoomSettingsCtrl;
      
      private var var_1309:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_205:Timer;
      
      private var var_2033:IWindowContainer;
      
      private var var_1312:ITextWindow;
      
      private var var_362:IWindowContainer;
      
      private var var_2031:ITextWindow;
      
      private var var_912:IWindowContainer;
      
      private var var_206:UserDefinedRoomEventsCtrl;
      
      private var var_1592:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_734:ITextWindow;
      
      private var var_1591:IWindowContainer;
      
      private var var_1308:IWindowContainer;
      
      private var var_909:ITextWindow;
      
      private var var_1101:ITextFieldWindow;
      
      private var var_276:IWindowContainer;
      
      private var var_911:ITextWindow;
      
      private var var_1589:IButtonWindow;
      
      private var var_1099:ITextWindow;
      
      private var var_2446:int;
      
      private var var_1310:IContainerButtonWindow;
      
      private var var_910:IWindowContainer;
      
      private var var_1313:ITextWindow;
      
      private var var_1314:IContainerButtonWindow;
      
      private var var_1593:ITextWindow;
      
      private var var_947:TagRenderer;
      
      private var var_1590:IButtonWindow;
      
      private var var_2032:ITextWindow;
      
      private var var_320:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_761:ITextWindow;
      
      private var var_240:RoomThumbnailCtrl;
      
      private var var_1311:IContainerButtonWindow;
      
      private var var_2030:IWindowContainer;
      
      private var var_275:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_320 = new RoomEventViewCtrl(_navigator);
         var_180 = new RoomSettingsCtrl(_navigator,this,true);
         var_240 = new RoomThumbnailCtrl(_navigator);
         var_206 = new UserDefinedRoomEventsCtrl(_navigator);
         var_947 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_180);
         var_205 = new Timer(6000,1);
         var_205.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_180.active = true;
         this.var_320.active = false;
         this.var_240.active = false;
         this.var_206.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1592.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1590.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1591.visible = Util.hasVisibleChildren(var_1591);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_734.text = param1.roomName;
         var_734.height = NaN;
         _ownerName.text = param1.ownerName;
         var_909.text = param1.description;
         var_947.refreshTags(var_362,param1.tags);
         var_909.visible = false;
         if(param1.description != "")
         {
            var_909.height = NaN;
            var_909.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_362,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_362,"thumb_down",_loc3_,onThumbDown,0);
         var_2031.visible = _loc3_;
         var_911.visible = !_loc3_;
         var_1593.visible = !_loc3_;
         var_1593.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_362,"home",param2,null,0);
         _navigator.refreshButton(var_362,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_362,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_734.y,0);
         var_362.visible = true;
         var_362.height = Util.getLowestPoint(var_362);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function startUserDefinedRoomEventsEdit() : void
      {
         this.var_205.reset();
         this.var_180.active = false;
         this.var_320.active = false;
         this.var_240.active = false;
         this.var_206.active = true;
         _navigator.send(new GetEventsMessageComposer());
      }
      
      public function dispose() : void
      {
         if(var_205)
         {
            var_205.removeEventListener(TimerEvent.TIMER,hideInfo);
            var_205.reset();
            var_205 = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_397,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false || false)
         {
            return;
         }
         var_1589.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1309.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1311.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1310.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1314.visible = _navigator.data.canEditRoomSettings && param1;
         var_1308.visible = Util.hasVisibleChildren(var_1308);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_205.reset();
         this.var_320.active = false;
         this.var_180.active = false;
         this.var_240.active = false;
         this.var_206.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_205.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_205.reset();
         this.var_320.active = false;
         this.var_180.active = false;
         this.var_240.active = false;
         this.var_206.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_397,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_276);
         var_276.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == _navigator.data.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_180.refresh(var_276);
         this.var_240.refresh(var_276);
         this.var_206.refresh(var_276);
         Util.moveChildrenToColumn(var_276,["room_details","room_buttons"],0,2);
         var_276.height = Util.getLowestPoint(var_276);
         var_276.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1101.setSelection(0,var_1101.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_275);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_320.refresh(var_275);
         if(Util.hasVisibleChildren(var_275) && !(this.var_240.active || this.var_206.active))
         {
            Util.moveChildrenToColumn(var_275,["event_details","event_buttons"],0,2);
            var_275.height = Util.getLowestPoint(var_275);
            var_275.visible = true;
         }
         else
         {
            var_275.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_205.reset();
         this.var_320.active = true;
         this.var_180.active = false;
         this.var_240.active = false;
         this.var_206.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_205.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_1100.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1100.height = NaN;
         var_1312.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1312.height = NaN;
         Util.moveChildrenToColumn(var_760,["public_space_name","public_space_desc"],var_1100.y,0);
         var_760.visible = true;
         var_760.height = Math.max(86,Util.getLowestPoint(var_760));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function get userDefinedRoomEventsCtrl() : UserDefinedRoomEventsCtrl
      {
         return var_206;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","ModeratorActionResultMessageParser") == "ModMessageMessageComposer";
         if(_loc1_ && true && true && true && true)
         {
            var_910.visible = true;
            var_1101.text = this.getEmbedData();
         }
         else
         {
            var_910.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_205.reset();
         this.var_180.load(param1);
         this.var_180.active = true;
         this.var_320.active = false;
         this.var_240.active = false;
         this.var_206.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_205.reset();
         this.var_180.active = false;
         this.var_320.active = false;
         this.var_240.active = true;
         this.var_206.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_71,false);
         _window.setParamFlag(HabboWindowParam.const_1374,true);
         _window.visible = false;
         var_276 = IWindowContainer(find("room_info"));
         var_362 = IWindowContainer(find("room_details"));
         var_760 = IWindowContainer(find("public_space_details"));
         var_2030 = IWindowContainer(find("owner_name_cont"));
         var_2033 = IWindowContainer(find("rating_cont"));
         var_1308 = IWindowContainer(find("room_buttons"));
         var_734 = ITextWindow(find("room_name"));
         var_1100 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_909 = ITextWindow(find("room_desc"));
         var_1312 = ITextWindow(find("public_space_desc"));
         var_1099 = ITextWindow(find("owner_caption"));
         var_911 = ITextWindow(find("rating_caption"));
         var_2031 = ITextWindow(find("rate_caption"));
         var_1593 = ITextWindow(find("rating_txt"));
         var_275 = IWindowContainer(find("event_info"));
         var_912 = IWindowContainer(find("event_details"));
         var_1591 = IWindowContainer(find("event_buttons"));
         var_2032 = ITextWindow(find("event_name"));
         var_761 = ITextWindow(find("event_desc"));
         var_1309 = IContainerButtonWindow(find("add_favourite_button"));
         var_1311 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1310 = IContainerButtonWindow(find("make_home_button"));
         var_1314 = IContainerButtonWindow(find("unmake_home_button"));
         var_1589 = IButtonWindow(find("room_settings_button"));
         var_1592 = IButtonWindow(find("create_event_button"));
         var_1590 = IButtonWindow(find("edit_event_button"));
         var_910 = IWindowContainer(find("embed_info"));
         var_1313 = ITextWindow(find("embed_info_txt"));
         var_1101 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1309,onAddFavouriteClick);
         Util.setProcDirectly(var_1311,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1589,onRoomSettingsClick);
         Util.setProcDirectly(var_1310,onMakeHomeClick);
         Util.setProcDirectly(var_1314,onUnmakeHomeClick);
         Util.setProcDirectly(var_1592,onEventSettingsClick);
         Util.setProcDirectly(var_1590,onEventSettingsClick);
         Util.setProcDirectly(var_1101,onEmbedSrcClick);
         _navigator.refreshButton(var_1309,"favourite",true,null,0);
         _navigator.refreshButton(var_1311,"favourite",true,null,0);
         _navigator.refreshButton(var_1310,"home",true,null,0);
         _navigator.refreshButton(var_1314,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_276,onHover);
         Util.setProcDirectly(var_275,onHover);
         var_1099.width = var_1099.textWidth;
         Util.moveChildrenToRow(var_2030,["owner_caption","owner_name"],var_1099.x,var_1099.y,3);
         var_911.width = var_911.textWidth;
         Util.moveChildrenToRow(var_2033,["rating_caption","rating_txt"],var_911.x,var_911.y,3);
         var_1313.height = NaN;
         Util.moveChildrenToColumn(var_910,["embed_info_txt","embed_src_txt"],var_1313.y,2);
         var_910.height = Util.getLowestPoint(var_910) + 5;
         var_2446 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2032.text = param1.eventName;
         var_761.text = param1.eventDescription;
         var_947.refreshTags(var_912,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_761.visible = false;
         if(param1.eventDescription != "")
         {
            var_761.height = NaN;
            var_761.y = Util.getLowestPoint(var_912) + 2;
            var_761.visible = true;
         }
         var_912.visible = true;
         var_912.height = Util.getLowestPoint(var_912);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_992,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
