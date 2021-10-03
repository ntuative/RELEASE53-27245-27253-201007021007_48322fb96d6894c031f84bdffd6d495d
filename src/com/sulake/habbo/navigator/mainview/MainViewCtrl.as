package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetOfficialRoomsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetPopularRoomTagsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.LatestEventsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFavouriteRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFriendsRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomHistorySearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.PopularRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTagSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTextSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWhereMyFriendsAreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWithHighestScoreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.session.QuitMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tab;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class MainViewCtrl implements IUpdateReceiver, IDisposable
   {
      
      public static const const_586:int = 2;
      
      public static const const_963:int = 4;
      
      private static const const_516:int = 2;
      
      private static const const_793:int = 1;
      
      public static const const_1667:int = 3;
      
      private static const const_1099:int = 4;
      
      private static const SCROLLBAR_WIDTH:int = 22;
      
      public static const const_440:int = 1;
      
      private static const const_792:int = 3;
       
      
      private var var_1941:int = 0;
      
      private var _disposed:Boolean = false;
      
      private var var_1270:IRegionWindow;
      
      private var var_416:int;
      
      private var var_1273:Boolean = true;
      
      private var var_735:GuestRoomListCtrl;
      
      private var var_15:IFrameWindow;
      
      private var var_417:Timer;
      
      private var var_270:IWindowContainer;
      
      private var var_200:IWindowContainer;
      
      private var var_234:IWindowContainer;
      
      private var var_1274:IWindow;
      
      private var var_1271:Boolean;
      
      private var var_883:OfficialRoomListCtrl;
      
      private var var_20:IWindowContainer;
      
      private var var_736:PopularTagsListCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_1272:int = 0;
      
      private var var_245:ITabContextWindow;
      
      public function MainViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_736 = new PopularTagsListCtrl(_navigator);
         var_735 = new GuestRoomListCtrl(_navigator);
         var_883 = new OfficialRoomListCtrl(_navigator);
         var_417 = new Timer(300,1);
         var_417.addEventListener(TimerEvent.TIMER,onResizeTimer);
      }
      
      private function getSearchMsg(param1:int, param2:String) : IMessageComposer
      {
         if(param1 == Tabs.const_549)
         {
            return new MyFavouriteRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_533)
         {
            return new MyFriendsRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_750)
         {
            return new MyRoomHistorySearchMessageComposer();
         }
         if(param1 == Tabs.const_240)
         {
            return new MyRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_357)
         {
            return new PopularRoomsSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_610)
         {
            return new RoomsWhereMyFriendsAreSearchMessageComposer();
         }
         if(param1 == Tabs.const_629)
         {
            return new RoomsWithHighestScoreSearchMessageComposer();
         }
         if(param1 == Tabs.const_355)
         {
            return new RoomTagSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_220)
         {
            return new RoomTextSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_381)
         {
            return new LatestEventsSearchMessageComposer(param2);
         }
         Logger.log("No message for searchType: " + param1);
         return null;
      }
      
      private function prepare() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var_15 = IFrameWindow(_navigator.getXmlWindow("grs_main_window"));
         var_245 = ITabContextWindow(var_15.findChildByName("tab_context"));
         var_20 = IWindowContainer(var_15.findChildByName("tab_content"));
         var_234 = IWindowContainer(var_15.findChildByName("custom_content"));
         var_200 = IWindowContainer(var_15.findChildByName("list_content"));
         var_270 = IWindowContainer(var_15.findChildByName("custom_footer"));
         var_1274 = var_15.findChildByName("loading_text");
         var _loc1_:IWindow = var_15.findChildByTag("close");
         _loc1_.procedure = onWindowClose;
         var_1270 = IRegionWindow(var_15.findChildByName("to_hotel_view"));
         var_1270.procedure = onHotelView;
         refreshToHotelViewButton(false);
         var_15.procedure = onWindow;
         for each(_loc2_ in _navigator.tabs.tabs)
         {
            _loc3_ = var_245.getTabItemByID(_loc2_.id);
            _loc3_.setParamFlag(HabboWindowParam.const_43,true);
            _loc3_.procedure = onTabClick;
            _loc2_.button = _loc3_;
         }
         var_15.scaler.setParamFlag(HabboWindowParam.const_583,false);
         var_15.scaler.setParamFlag(HabboWindowParam.const_1413,true);
      }
      
      public function get mainWindow() : IFrameWindow
      {
         return var_15;
      }
      
      private function onTabClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_62)
         {
            return;
         }
         var _loc3_:int = param2.id;
         if(var_1271)
         {
            var_1271 = false;
            return;
         }
         var _loc4_:Tab = _navigator.tabs.getTab(_loc3_);
         _loc4_.sendSearchRequest();
         switch(_loc4_.id)
         {
            case Tabs.const_345:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS));
               break;
            case Tabs.const_269:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME));
               break;
            case Tabs.const_338:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL));
               break;
            case Tabs.const_272:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS));
               break;
            case Tabs.const_247:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH));
         }
      }
      
      private function refreshScrollbar(param1:IViewCtrl) : void
      {
         if(param1.content == null || !param1.content.visible)
         {
            return;
         }
         var _loc2_:IItemListWindow = IItemListWindow(param1.content.findChildByName("item_list"));
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         var _loc4_:* = _loc2_.scrollableRegion.height > _loc2_.height;
         if(_loc3_.visible)
         {
            if(_loc4_)
            {
               return;
            }
            _loc3_.visible = false;
            _loc2_.width += SCROLLBAR_WIDTH;
         }
         else
         {
            if(!_loc4_)
            {
               return;
            }
            _loc3_.visible = true;
            _loc2_.width -= SCROLLBAR_WIDTH;
         }
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.close();
      }
      
      private function sendTrackingEvent(param1:int) : void
      {
         switch(param1)
         {
            case Tabs.const_381:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS));
               break;
            case Tabs.const_549:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES));
               break;
            case Tabs.const_533:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS));
               break;
            case Tabs.const_750:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY));
               break;
            case Tabs.const_240:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS));
               break;
            case Tabs.const_728:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS));
               break;
            case Tabs.const_357:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS));
               break;
            case Tabs.const_610:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE));
               break;
            case Tabs.const_629:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE));
               break;
            case Tabs.const_355:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH));
               break;
            case Tabs.const_220:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH));
         }
      }
      
      private function refreshList(param1:Boolean, param2:Boolean, param3:IViewCtrl, param4:String) : void
      {
         var _loc5_:* = null;
         if(!param2)
         {
            return;
         }
         if(param3.content == null)
         {
            _loc5_ = var_200.getChildByName(param4);
            param3.content = IWindowContainer(_loc5_);
         }
         if(param1)
         {
            param3.refresh();
         }
         param3.content.visible = true;
      }
      
      public function isOpen() : Boolean
      {
         return var_15 != null && false;
      }
      
      private function refreshListContent(param1:Boolean) : void
      {
         Util.hideChildren(var_200);
         refreshGuestRooms(param1,_navigator.data.guestRoomSearchArrived);
         refreshPopularTags(param1,_navigator.data.popularTagsArrived);
         refreshOfficialRooms(param1,_navigator.data.officialRoomsArrived);
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         refreshScrollbar(var_736);
         refreshScrollbar(var_735);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function stretchNewEntryIfNeeded(param1:IViewCtrl, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         if(_loc3_.visible)
         {
            return;
         }
         param2.width += SCROLLBAR_WIDTH;
      }
      
      public function startSearch(param1:int, param2:int, param3:String = "-1", param4:int = 1) : void
      {
         var _loc5_:Tab = _navigator.tabs.getSelected();
         _navigator.tabs.setSelectedTab(param1);
         var _loc6_:Tab = _navigator.tabs.getSelected();
         ErrorReportStorage.addDebugData("StartSearch","Start search " + _loc5_.id + " => " + _loc6_.id);
         this.var_1273 = _loc5_ != _loc6_;
         if(_loc5_ != _loc6_)
         {
            _loc6_.tabPageDecorator.tabSelected();
         }
         _navigator.data.startLoading();
         if(param4 == const_440)
         {
            _navigator.send(getSearchMsg(param2,param3));
         }
         else if(param4 == const_586)
         {
            _navigator.send(new GetPopularRoomTagsMessageComposer());
         }
         else
         {
            _navigator.send(new GetOfficialRoomsMessageComposer());
         }
         if(!isOpen())
         {
            open();
            this.var_416 = const_516;
            this.var_200.blend = 0;
            if(this.var_234.visible)
            {
               this.var_234.blend = 0;
               this.var_270.blend = 0;
            }
         }
         else
         {
            this.var_416 = const_793;
         }
         this.var_1272 = 0;
         _navigator.registerUpdateReceiver(this,2);
         sendTrackingEvent(param2);
      }
      
      private function refreshCustomContent() : void
      {
         Util.hideChildren(var_234);
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshCustomContent(var_234);
         if(Util.hasVisibleChildren(var_234))
         {
            var_234.visible = true;
         }
         else
         {
            var_234.visible = false;
            var_234.blend = 1;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            _navigator = null;
            if(var_15)
            {
               var_15.dispose();
               var_15 = null;
            }
            if(var_20)
            {
               var_20.dispose();
               var_20 = null;
            }
            if(var_417)
            {
               var_417.removeEventListener(TimerEvent.TIMER,onResizeTimer);
               var_417.reset();
               var_417 = null;
            }
            if(var_736)
            {
               var_736.dispose();
               var_736 = null;
            }
            if(var_735)
            {
               var_735.dispose();
               var_735 = null;
            }
            if(var_883)
            {
               var_883.dispose();
               var_883 = null;
            }
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_47 || param2 != var_15)
         {
            return;
         }
         if(!this.var_417.running)
         {
            this.var_417.reset();
            this.var_417.start();
         }
      }
      
      private function refreshOfficialRooms(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_883,"official_rooms");
      }
      
      private function refreshGuestRooms(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_735,"guest_rooms");
      }
      
      private function refreshTab() : void
      {
         var _loc1_:Tab = _navigator.tabs.getSelected();
         var _loc2_:ISelectableWindow = var_245.selector.getSelected();
         if(_loc1_.button != _loc2_)
         {
            var_1271 = true;
            var_245.selector.setSelected(_loc1_.button);
         }
      }
      
      private function refreshPopularTags(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_736,"popular_tags");
      }
      
      public function onNavigatorToolBarIconClick() : Boolean
      {
         if(isOpen())
         {
            close();
            return false;
         }
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.navigatorOpenedWhileInTab();
         return true;
      }
      
      public function open() : void
      {
         var _loc1_:Boolean = false;
         if(this.var_15 == null)
         {
            prepare();
            _loc1_ = true;
         }
         refresh();
         var_15.visible = true;
         var_15.activate();
         if(_loc1_)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.NAVIGATOR,var_15));
         }
      }
      
      private function refreshFooter() : void
      {
         Util.hideChildren(var_270);
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshFooter(var_270);
         if(Util.hasVisibleChildren(var_270))
         {
            var_270.visible = true;
         }
         else
         {
            var_270.visible = false;
         }
      }
      
      public function reloadRoomList(param1:int) : Boolean
      {
         ErrorReportStorage.addDebugData("MainViewCtrl","Reloading RoomList");
         if(this.isOpen() && this._navigator.data.guestRoomSearchResults != null && this._navigator.data.guestRoomSearchResults.searchType == param1)
         {
            startSearch(_navigator.tabs.getSelected().id,param1,"");
            return true;
         }
         return false;
      }
      
      private function onHotelView(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            refreshToHotelViewButton(true);
         }
         else if(param1.type == WindowMouseEvent.const_33)
         {
            refreshToHotelViewButton(false);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _navigator.send(new QuitMessageComposer());
         }
      }
      
      public function refresh() : void
      {
         if(var_15 == null)
         {
            return;
         }
         refreshTab();
         refreshCustomContent();
         refreshListContent(true);
         refreshFooter();
         var_234.height = Util.getLowestPoint(var_234);
         var_270.height = Util.getLowestPoint(var_270);
         var _loc1_:int = 0;
         Util.moveChildrenToColumn(var_20,["custom_content","list_content"],var_234.y,8);
         var_200.height = var_200.height + _loc1_ - 0 - 0 + var_1941;
         Util.moveChildrenToColumn(var_20,["list_content","custom_footer"],var_200.y,8);
         var_1941 = var_270.height;
         onResizeTimer(null);
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_200 == null)
         {
            return;
         }
         var _loc2_:Number = param1 / 150;
         if(var_416 == const_793)
         {
            _loc3_ = Math.min(1,Math.max(0,this.var_200.blend - _loc2_));
            this.var_200.blend = _loc3_;
            this.var_234.blend = !!var_1273 ? Number(_loc3_) : Number(1);
            this.var_270.blend = !!var_1273 ? Number(_loc3_) : Number(1);
            if(_loc3_ == 0)
            {
               var_416 = const_516;
            }
         }
         else if(var_416 == const_516)
         {
            if(var_1272 % 10 == 1)
            {
               var_1274.visible = true;
            }
            ++var_1272;
            if(!_navigator.data.isLoading())
            {
               var_416 = const_792;
            }
         }
         else if(var_416 == const_792)
         {
            this.refresh();
            var_416 = const_1099;
         }
         else
         {
            var_1274.visible = false;
            _loc3_ = Math.min(1,Math.max(0,this.var_200.blend + _loc2_));
            this.var_200.blend = _loc3_;
            this.var_234.blend = !!var_1273 ? Number(_loc3_) : Number(1);
            this.var_270.blend = !!var_1273 ? Number(_loc3_) : Number(1);
            if(false)
            {
               _navigator.removeUpdateReceiver(this);
            }
         }
      }
      
      private function refreshToHotelViewButton(param1:Boolean) : void
      {
         _navigator.refreshButton(var_1270,"icon_hotelview",!param1,null,0);
         _navigator.refreshButton(var_1270,"icon_hotelview_reactive",param1,null,0);
      }
      
      public function close() : void
      {
         if(var_15 != null)
         {
            var_15.visible = false;
         }
      }
   }
}
