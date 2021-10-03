package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_855:int = 500;
       
      
      private var var_74:Vector3d;
      
      private var var_2517:Vector3d;
      
      private var var_2109:int = 0;
      
      private var var_1134:int = 500;
      
      private var var_252:Vector3d;
      
      private var var_1135:Vector3d;
      
      private var var_2195:int;
      
      public function MovingObjectLogic()
      {
         super();
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(var_1135 != null)
         {
            _loc2_ = param1 - var_2195;
            if(_loc2_ > var_1134)
            {
               _loc2_ = var_1134;
            }
            _loc3_ = Vector3d.product(var_1135,_loc2_ / Number(var_1134));
            _loc4_ = Vector3d.sum(var_74,_loc3_);
            if(object != null)
            {
               object.setLocation(_loc4_);
            }
            if(_loc2_ == var_1134)
            {
               var_1135 = null;
            }
         }
         var_2109 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               var_74 = new Vector3d(param1.loc.x,param1.loc.y,param1.loc.z);
               _loc3_ = _loc2_.targetLoc;
               _loc4_ = Vector3d.dif(_loc3_,var_74);
               var_2195 = var_2109;
               var_1135 = _loc4_;
            }
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 1;
         }
         var_1134 = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
