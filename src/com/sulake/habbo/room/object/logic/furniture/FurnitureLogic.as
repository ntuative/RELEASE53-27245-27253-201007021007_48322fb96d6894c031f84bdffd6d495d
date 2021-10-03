package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectItemDataUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.MovingObjectLogic;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import com.sulake.room.utils.XMLValidator;
   import flash.events.MouseEvent;
   
   public class FurnitureLogic extends MovingObjectLogic
   {
       
      
      private var var_1113:Number = 0.0;
      
      private var var_768:Boolean = false;
      
      private var var_2104:Number = 0.0;
      
      private var var_2105:Number = 0.0;
      
      private var var_1344:Number = 0.0;
      
      private var var_1114:Number = 0.0;
      
      private var var_1112:Number = 0.0;
      
      private var var_253:Array;
      
      public function FurnitureLogic()
      {
         var_253 = [];
         super();
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         var _loc3_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc3_ != null)
         {
            object.setState(_loc3_.state,0);
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_106,_loc3_.data);
               if(!isNaN(_loc3_.extra))
               {
                  _loc2_.setString(RoomObjectVariableEnum.const_416,String(_loc3_.extra));
               }
            }
            return;
         }
         var _loc4_:RoomObjectItemDataUpdateMessage = param1 as RoomObjectItemDataUpdateMessage;
         if(_loc4_ != null)
         {
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_1029,_loc4_.itemData);
            }
            return;
         }
         var_768 = false;
         super.processUpdateMessage(param1);
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var_1114 = 0;
         var_1112 = 0;
         var_1113 = 0;
         var_253 = [];
         var _loc2_:XMLList = param1.model.dimensions;
         if(_loc2_.length() == 0)
         {
            return;
         }
         var _loc3_:XMLList = _loc2_.@x;
         if(_loc3_.length() == 1)
         {
            var_1114 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@y;
         if(_loc3_.length() == 1)
         {
            var_1112 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@z;
         if(_loc3_.length() == 1)
         {
            var_1113 = Number(_loc3_);
         }
         var_2104 = var_1114 / 2;
         var_2105 = var_1112 / 2;
         _loc3_ = _loc2_.@centerZ;
         if(_loc3_.length() == 1)
         {
            var_1344 = Number(_loc3_);
         }
         else
         {
            var_1344 = var_1113 / 2;
         }
         var _loc4_:XMLList = param1.model.directions.direction;
         var _loc5_:* = ["id"];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(XMLValidator.checkRequiredAttributes(_loc7_,_loc5_))
            {
               _loc8_ = parseInt(_loc7_.@id);
               var_253.push(_loc8_);
            }
            _loc6_++;
         }
         var_253.sort(Array.NUMERIC);
         if(object == null || object.getModelController() == null)
         {
            return;
         }
         object.getModelController().setNumber(RoomObjectVariableEnum.const_334,var_1114,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_445,var_1112,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_555,var_1113,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1219,var_2104,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1234,var_2105,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_932,var_1344,true);
         object.getModelController().setNumberArray(RoomObjectVariableEnum.const_548,var_253,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_218,1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var_253 = null;
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc9_:String = _loc3_.getString(RoomObjectVariableEnum.const_323);
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               if(!var_768)
               {
                  _loc6_ = object.getId();
                  _loc7_ = object.getType();
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_304,_loc6_,_loc7_));
                  }
                  var_768 = true;
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(var_768)
               {
                  _loc6_ = object.getId();
                  _loc7_ = object.getType();
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_313,_loc6_,_loc7_));
                  }
                  var_768 = false;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_409,_loc6_,_loc7_));
               }
            case MouseEvent.CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_216,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_258,_loc6_,_loc7_));
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_495,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
         }
      }
   }
}
