package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_611:String = "me_menu_settings_view";
      
      public static const const_541:String = "me_menu_effects_view";
      
      public static const const_110:String = "me_menu_top_view";
      
      public static const const_1376:String = "me_menu_rooms_view";
      
      public static const const_974:String = "me_menu_dance_moves_view";
      
      public static const const_283:String = "me_menu_my_clothes_view";
       
      
      private var var_1779:Boolean = false;
      
      private var var_431:Boolean = false;
      
      private var var_1495:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1496:int = 0;
      
      private var var_1780:int = 0;
      
      private var var_1781:Boolean = false;
      
      private var var_262:Boolean = false;
      
      private var var_1783:int = 0;
      
      private var var_1784:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_598:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1214:int = 0;
      
      private var var_1782:Boolean = false;
      
      private var var_1035:Point;
      
      private var var_33:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1035 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1782 = param5.getKey("client.news.embed.enabled","ModeratorActionResultMessageParser") == "ModMessageMessageComposer";
         }
         changeView(const_110);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_649,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_532,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_570,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_331,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_617,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_632,onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_206,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_243,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_682,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_236,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_317,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_104,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_399,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_193,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_33 != null && var_33.window.name == const_283)
         {
            changeView(const_110);
         }
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_431)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_598;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_262)
         {
            return;
         }
         if(var_33.window.name == const_611)
         {
            (var_33 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1214 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1496 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1496.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_262 && var_33.window.name == const_283))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_696);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_649,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_532,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_570,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_331,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_206,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_243,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_682,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_617,onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_632,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_236,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_317,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_399,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_104,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_193,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_33 != null)
         {
            var_33.dispose();
            var_33 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1779;
      }
      
      public function get creditBalance() : int
      {
         return var_1496;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1784 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_399:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_262 + " view: " + var_33.window.name);
               if(var_262 != true || var_33.window.name != const_110)
               {
                  return;
               }
               (var_33 as MeMenuMainView).setIconAssets("clothes_icon",const_110,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_104:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_1781;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1784 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1780;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_598 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_598 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1214;
         var_1214 = param1.daysLeft;
         var_1780 = param1.periodsLeft;
         var_1783 = param1.pastPeriods;
         var_1779 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1495);
         var_1495 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_33 != null)
            {
               changeView(var_33.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1781 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_33 != null && var_33.window.name != const_283)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1245,HabboWindowStyle.const_843,HabboWindowParam.const_40,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_598 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_598 = true;
            }
         }
         if(var_33 != null && var_33.window.name == const_541)
         {
            (var_33 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1783;
      }
      
      public function get habboClubDays() : int
      {
         return var_1214;
      }
      
      public function updateSize() : void
      {
         if(var_33 != null)
         {
            var_1035.x = var_33.window.width + 10;
            var_1035.y = var_33.window.height;
            var_33.window.x = 5;
            var_33.window.y = 0;
            _mainContainer.width = var_1035.x;
            _mainContainer.height = var_1035.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_262 = !var_262;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_262 = false;
               break;
            default:
               return;
         }
         if(var_262)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_543);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_33 != null)
         {
            _mainContainer.removeChild(var_33.window);
            var_33.dispose();
            var_33 = null;
         }
         var_262 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_33 != null && var_33.window.name == const_283)
         {
            changeView(const_110);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1782;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_110:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_541:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_974:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_283:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1376:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_611:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_33 != null)
            {
               _mainContainer.removeChild(var_33.window);
               var_33.dispose();
               var_33 = null;
            }
            var_33 = _loc2_;
            var_33.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1495;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_110);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_709);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_262 = true;
      }
   }
}
