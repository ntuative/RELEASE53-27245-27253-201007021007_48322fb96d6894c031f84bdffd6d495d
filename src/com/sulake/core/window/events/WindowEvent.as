package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_261:String = "WE_CHILD_RESIZED";
      
      public static const const_1275:String = "WE_CLOSE";
      
      public static const const_1319:String = "WE_DESTROY";
      
      public static const const_132:String = "WE_CHANGE";
      
      public static const const_1237:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1570:String = "WE_PARENT_RESIZE";
      
      public static const const_100:String = "WE_UPDATE";
      
      public static const const_1341:String = "WE_MAXIMIZE";
      
      public static const const_438:String = "WE_DESTROYED";
      
      public static const const_1043:String = "WE_UNSELECT";
      
      public static const const_1208:String = "WE_MAXIMIZED";
      
      public static const const_1649:String = "WE_UNLOCKED";
      
      public static const const_392:String = "WE_CHILD_REMOVED";
      
      public static const const_163:String = "WE_OK";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const const_1181:String = "WE_ACTIVATE";
      
      public static const const_287:String = "WE_ENABLED";
      
      public static const const_456:String = "WE_CHILD_RELOCATED";
      
      public static const const_1264:String = "WE_CREATE";
      
      public static const const_631:String = "WE_SELECT";
      
      public static const const_172:String = "";
      
      public static const const_1513:String = "WE_LOCKED";
      
      public static const const_1547:String = "WE_PARENT_RELOCATE";
      
      public static const const_1534:String = "WE_CHILD_REMOVE";
      
      public static const const_1658:String = "WE_CHILD_RELOCATE";
      
      public static const const_1539:String = "WE_LOCK";
      
      public static const const_244:String = "WE_FOCUSED";
      
      public static const const_740:String = "WE_UNSELECTED";
      
      public static const const_976:String = "WE_DEACTIVATED";
      
      public static const const_1437:String = "WE_MINIMIZED";
      
      public static const const_1580:String = "WE_ARRANGED";
      
      public static const const_1535:String = "WE_UNLOCK";
      
      public static const const_1650:String = "WE_ATTACH";
      
      public static const const_1388:String = "WE_OPEN";
      
      public static const const_1333:String = "WE_RESTORE";
      
      public static const const_1601:String = "WE_PARENT_RELOCATED";
      
      public static const const_1391:String = "WE_RELOCATE";
      
      public static const const_1712:String = "WE_CHILD_RESIZE";
      
      public static const const_1544:String = "WE_ARRANGE";
      
      public static const const_1261:String = "WE_OPENED";
      
      public static const const_1197:String = "WE_CLOSED";
      
      public static const const_1633:String = "WE_DETACHED";
      
      public static const const_1591:String = "WE_UPDATED";
      
      public static const const_1260:String = "WE_UNFOCUSED";
      
      public static const const_442:String = "WE_RELOCATED";
      
      public static const const_1224:String = "WE_DEACTIVATE";
      
      public static const const_223:String = "WE_DISABLED";
      
      public static const const_618:String = "WE_CANCEL";
      
      public static const const_562:String = "WE_ENABLE";
      
      public static const const_1412:String = "WE_ACTIVATED";
      
      public static const const_1361:String = "WE_FOCUS";
      
      public static const const_1587:String = "WE_DETACH";
      
      public static const const_1420:String = "WE_RESTORED";
      
      public static const const_1307:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1294:String = "WE_PARENT_RESIZED";
      
      public static const const_1212:String = "WE_CREATED";
      
      public static const const_1685:String = "WE_ATTACHED";
      
      public static const const_1344:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1708:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1475:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1708 = param3;
         var_1475 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1475;
      }
      
      public function get related() : IWindow
      {
         return var_1708;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1475 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
