package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1407:String = "WN_CREATED";
      
      public static const const_848:String = "WN_DISABLE";
      
      public static const const_876:String = "WN_DEACTIVATED";
      
      public static const const_885:String = "WN_OPENED";
      
      public static const const_860:String = "WN_CLOSED";
      
      public static const const_930:String = "WN_DESTROY";
      
      public static const const_1661:String = "WN_ARRANGED";
      
      public static const const_423:String = "WN_PARENT_RESIZED";
      
      public static const const_964:String = "WN_ENABLE";
      
      public static const const_1036:String = "WN_RELOCATE";
      
      public static const const_985:String = "WN_FOCUS";
      
      public static const const_851:String = "WN_PARENT_RELOCATED";
      
      public static const const_410:String = "WN_PARAM_UPDATED";
      
      public static const const_572:String = "WN_PARENT_ACTIVATED";
      
      public static const const_164:String = "WN_RESIZED";
      
      public static const const_1026:String = "WN_CLOSE";
      
      public static const const_1025:String = "WN_PARENT_REMOVED";
      
      public static const const_281:String = "WN_CHILD_RELOCATED";
      
      public static const const_680:String = "WN_ENABLED";
      
      public static const const_250:String = "WN_CHILD_RESIZED";
      
      public static const const_959:String = "WN_MINIMIZED";
      
      public static const const_600:String = "WN_DISABLED";
      
      public static const const_238:String = "WN_CHILD_ACTIVATED";
      
      public static const const_494:String = "WN_STATE_UPDATED";
      
      public static const const_539:String = "WN_UNSELECTED";
      
      public static const const_506:String = "WN_STYLE_UPDATED";
      
      public static const const_1620:String = "WN_UPDATE";
      
      public static const const_499:String = "WN_PARENT_ADDED";
      
      public static const const_684:String = "WN_RESIZE";
      
      public static const const_634:String = "WN_CHILD_REMOVED";
      
      public static const const_1638:String = "";
      
      public static const const_1050:String = "WN_RESTORED";
      
      public static const const_324:String = "WN_SELECTED";
      
      public static const const_1011:String = "WN_MINIMIZE";
      
      public static const const_850:String = "WN_FOCUSED";
      
      public static const const_1273:String = "WN_LOCK";
      
      public static const const_343:String = "WN_CHILD_ADDED";
      
      public static const const_957:String = "WN_UNFOCUSED";
      
      public static const const_457:String = "WN_RELOCATED";
      
      public static const const_853:String = "WN_DEACTIVATE";
      
      public static const const_1347:String = "WN_CRETAE";
      
      public static const const_1012:String = "WN_RESTORE";
      
      public static const const_349:String = "WN_ACTVATED";
      
      public static const const_1408:String = "WN_LOCKED";
      
      public static const const_462:String = "WN_SELECT";
      
      public static const const_951:String = "WN_MAXIMIZE";
      
      public static const const_845:String = "WN_OPEN";
      
      public static const const_534:String = "WN_UNSELECT";
      
      public static const const_1525:String = "WN_ARRANGE";
      
      public static const const_1267:String = "WN_UNLOCKED";
      
      public static const const_1593:String = "WN_UPDATED";
      
      public static const const_995:String = "WN_ACTIVATE";
      
      public static const const_1191:String = "WN_UNLOCK";
      
      public static const const_858:String = "WN_MAXIMIZED";
      
      public static const const_924:String = "WN_DESTROYED";
      
      public static const const_1034:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1708,cancelable);
      }
   }
}
