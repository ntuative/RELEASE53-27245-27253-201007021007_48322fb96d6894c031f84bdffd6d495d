package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1634:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1613:String = "ROE_MOUSE_ENTER";
      
      public static const const_480:String = "ROE_MOUSE_MOVE";
      
      public static const const_1684:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_216:String = "ROE_MOUSE_CLICK";
      
      public static const const_495:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1727:Boolean;
      
      private var var_1728:Boolean;
      
      private var var_1734:Boolean;
      
      private var var_1732:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1734 = param4;
         var_1732 = param5;
         var_1727 = param6;
         var_1728 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1728;
      }
      
      public function get altKey() : Boolean
      {
         return var_1734;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1732;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1727;
      }
   }
}
