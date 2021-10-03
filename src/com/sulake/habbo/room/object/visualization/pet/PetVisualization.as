package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_790:int = 2;
      
      private static const const_1092:Array = [0,0,0];
       
      
      private var var_411:String;
      
      private const const_1463:int = 1;
      
      private var var_408:String = "";
      
      private var var_730:int = 0;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1920:int = 0;
      
      private var var_1263:String = "";
      
      private var var_1834:Boolean = false;
      
      private var var_431:Boolean;
      
      private const const_1091:int = 3;
      
      private var var_1518:String = "";
      
      private var var_64:IAvatarImage = null;
      
      private var var_731:int = 0;
      
      private const const_1724:int = 3;
      
      private var var_1362:int = -1;
      
      private var var_1264:Boolean = false;
      
      private var var_1516:int = -1;
      
      private var var_689:int = 0;
      
      private var var_2423:Array;
      
      private const const_1093:int = 0;
      
      private var var_1232:Boolean = false;
      
      private var var_1519:int = -1;
      
      private var var_351:ExperienceData;
      
      private var var_1544:Number = NaN;
      
      private var var_863:Boolean = false;
      
      private var var_1233:Boolean = false;
      
      private var var_310:BitmapDataAsset;
      
      private const const_1460:int = 2;
      
      private var var_1062:int = 0;
      
      private var _visualizationData:PetVisualizationData = null;
      
      private var var_491:Map;
      
      private var var_1262:Boolean = false;
      
      public function PetVisualization()
      {
         super();
         var_2423 = new Array();
         var_491 = new Map();
         var_431 = false;
      }
      
      public function imageReady() : void
      {
         var_1264 = true;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_376,var_408,var_1518);
         if(var_1263 != null && var_1263 != "")
         {
            param1.appendAction(AvatarAction.const_286,var_1263);
         }
         if(var_1834 || var_1233)
         {
            param1.appendAction(AvatarAction.const_377);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + const_1091;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         var_1262 = false;
         switch(var_408)
         {
            case AvatarAction.const_547:
            case AvatarAction.const_965:
            case AvatarAction.const_1035:
            case AvatarAction.const_1051:
            case AvatarAction.const_1024:
            case AvatarAction.const_912:
            case AvatarAction.const_546:
            case AvatarAction.const_267:
            case AvatarAction.const_291:
               var_1262 = true;
         }
         var_1232 = false;
         var_863 = false;
         if(var_408 == "lay")
         {
            var_863 = true;
            _loc1_ = int(var_1518);
            if(_loc1_ < 0)
            {
               var_1232 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_491)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_491.reset();
         var_64 = null;
      }
      
      public function petImageReady(param1:String) : void
      {
         resetAvatarImages();
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         _visualizationData = param1 as PetVisualizationData;
         createSprites(const_1091);
         var_351 = new ExperienceData(_visualizationData);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_491 != null)
         {
            _loc1_ = var_491.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_491.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_491.dispose();
         if(var_351)
         {
            var_351.dispose();
         }
         var_351 = null;
         _visualizationData = null;
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(const_1463);
         var_310 = null;
         _loc2_ = getSprite(const_1463);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            var_310 = var_64.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            var_310 = var_64.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(var_310)
         {
            _loc2_.asset = var_310.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_491.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = _visualizationData.getAvatar(var_411,param1,this);
            if(_loc3_ != null)
            {
               var_491.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_168)
         {
            var_1834 = param1.getNumber(RoomObjectVariableEnum.const_497) > 0;
            var_1263 = param1.getString(RoomObjectVariableEnum.const_266);
            var_408 = param1.getString(RoomObjectVariableEnum.const_383);
            var_1518 = param1.getString(RoomObjectVariableEnum.const_654);
            var_1544 = param1.getNumber(RoomObjectVariableEnum.const_359);
            var_1062 = param1.getNumber(RoomObjectVariableEnum.const_1039);
            var_1920 = param1.getNumber(RoomObjectVariableEnum.const_911);
            validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_180);
            if(var_411 != _loc3_)
            {
               var_411 = _loc3_;
               resetAvatarImages();
            }
            var_168 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(_visualizationData == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         if(var_1264)
         {
            var_1264 = false;
            var_730 = 0;
            var_731 = 1;
            resetAvatarImages();
         }
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc8_ || _loc5_ != var_151 || var_64 == null)
         {
            if(_loc5_ != var_151)
            {
               var_151 = _loc5_;
               _loc6_ = true;
            }
            if(_loc6_ || var_64 == null)
            {
               var_64 = getAvatarImage(_loc5_);
            }
            if(var_64 == null)
            {
               return;
            }
            if(_loc6_)
            {
               updateShadow(_loc5_);
            }
            _loc7_ = updateObject(_loc3_,param1,true);
            updateActions(var_64);
         }
         else
         {
            _loc7_ = updateObject(_loc3_,param1);
         }
         var _loc9_:Boolean = _loc7_ || _loc8_ || _loc6_;
         var _loc10_:Boolean = var_431 || var_731 > 0 || var_1262;
         var_351.alpha = 0;
         if(var_1062 > 0)
         {
            _loc11_ = param2 - var_1062;
            if(_loc11_ < AvatarAction.const_1018)
            {
               var_351.alpha = int(Math.sin(_loc11_ / 0 * 0) * 255);
               var_351.setExperience(var_1920);
               var_731 = const_1724;
            }
            else
            {
               var_1062 = 0;
            }
            _loc12_ = getSprite(const_1460);
            if(_loc12_ != null)
            {
               if(false)
               {
                  _loc12_.asset = var_351.image;
                  _loc12_.offsetX = -20;
                  _loc12_.offsetY = -80;
                  _loc12_.alpha = var_351.alpha;
                  _loc12_.visible = true;
               }
               else
               {
                  _loc12_.asset = null;
                  _loc12_.visible = false;
               }
            }
         }
         if(_loc9_ || _loc10_)
         {
            increaseUpdateId();
            --var_731;
            ++var_689;
            --var_730;
            if(!(var_730 <= 0 || _loc6_))
            {
               return;
            }
            var_64.updateAnimationByFrames(1);
            var_730 = const_790;
            var_431 = var_64.isAnimating();
            _loc13_ = var_64.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1092;
            }
            _loc14_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc14_ = Math.min(_loc5_ / 2.75,0);
            }
            _loc12_ = getSprite(const_1093);
            if(_loc12_)
            {
               _loc17_ = var_64.getImage(AvatarSetType.const_35,false);
               if(_loc17_ != null)
               {
                  _loc12_.asset = _loc17_;
               }
               if(_loc5_ < 48)
               {
                  _loc12_.offsetX = -16 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 8 + _loc13_[1] + _loc14_;
               }
               else
               {
                  _loc12_.offsetX = -32 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 16 + _loc13_[1] + _loc14_;
               }
            }
            _loc15_ = const_1091;
            for each(_loc16_ in var_64.getSprites())
            {
               _loc12_ = getSprite(_loc15_);
               if(_loc12_ != null)
               {
                  _loc18_ = var_64.getLayerData(_loc16_);
                  _loc19_ = 0;
                  _loc20_ = _loc16_.getDirectionOffsetX(var_64.getDirection());
                  _loc21_ = _loc16_.getDirectionOffsetY(var_64.getDirection());
                  _loc22_ = _loc16_.getDirectionOffsetZ(var_64.getDirection());
                  _loc23_ = 0;
                  if(_loc16_.hasDirections)
                  {
                     _loc23_ = var_64.getDirection();
                  }
                  if(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.animationFrame;
                     _loc20_ += _loc18_.dx;
                     _loc21_ += _loc18_.dy;
                     _loc23_ += _loc18_.directionOffset;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  if(_loc23_ < 0)
                  {
                     _loc23_ += 8;
                  }
                  if(_loc23_ > 7)
                  {
                     _loc23_ -= 8;
                  }
                  _loc24_ = var_64.getScale() + "_" + _loc16_.member + "_" + _loc23_ + "_" + _loc19_;
                  _loc25_ = var_64.getAsset(_loc24_);
                  if(_loc25_ != null)
                  {
                     _loc12_.asset = _loc25_.content as BitmapData;
                     _loc12_.offsetX = -1 * _loc25_.offset.x - _loc5_ / 2 + _loc20_;
                     _loc12_.offsetY = -1 * _loc25_.offset.y + _loc21_;
                     _loc12_.relativeDepth = -0.01 - 0.1 * _loc15_ * _loc22_;
                     if(_loc16_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                     _loc15_++;
                  }
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_301 != param1.getUpdateID() || var_1362 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1544;
            if(isNaN(var_1544))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != var_1516 || param3)
            {
               var_1516 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_64.setDirectionAngle(AvatarSetType.const_35,_loc4_);
            }
            if(_loc5_ != var_1519 || param3)
            {
               var_1519 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               var_64.setDirectionAngle(AvatarSetType.const_45,_loc5_);
            }
            var_301 = param1.getUpdateID();
            var_1362 = param2.updateId;
            return true;
         }
         return false;
      }
   }
}
