package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_121:String = "RWPUE_VOTE_RESULT";
      
      public static const const_125:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1410:int;
      
      private var var_1075:String;
      
      private var var_751:Array;
      
      private var var_1069:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1075 = param2;
         var_1069 = param3;
         var_751 = param4;
         if(var_751 == null)
         {
            var_751 = [];
         }
         var_1410 = param5;
      }
      
      public function get votes() : Array
      {
         return var_751.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1410;
      }
      
      public function get question() : String
      {
         return var_1075;
      }
      
      public function get choices() : Array
      {
         return var_1069.slice();
      }
   }
}
