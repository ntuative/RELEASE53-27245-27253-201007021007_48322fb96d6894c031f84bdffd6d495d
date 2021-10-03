package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_121:String = "RSPE_VOTE_RESULT";
      
      public static const const_125:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1410:int = 0;
      
      private var var_1075:String = "";
      
      private var var_751:Array;
      
      private var var_1069:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1069 = [];
         var_751 = [];
         super(param1,param2,param7,param8);
         var_1075 = param3;
         var_1069 = param4;
         var_751 = param5;
         if(var_751 == null)
         {
            var_751 = [];
         }
         var_1410 = param6;
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
