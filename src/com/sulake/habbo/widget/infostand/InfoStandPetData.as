package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1936:int;
      
      private var var_1920:int;
      
      private var var_2098:int;
      
      private var _type:int;
      
      private var var_1288:int = -1;
      
      private var var_2100:int;
      
      private var _nutrition:int;
      
      private var var_2102:int;
      
      private var _energy:int;
      
      private var var_2174:int;
      
      private var var_2099:int;
      
      private var var_2175:int;
      
      private var var_2103:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2173:Boolean;
      
      private var _name:String = "";
      
      private var var_2101:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2173;
      }
      
      public function get level() : int
      {
         return var_1936;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_2102;
      }
      
      public function get id() : int
      {
         return var_1288;
      }
      
      public function get nutritionMax() : int
      {
         return var_2098;
      }
      
      public function get ownerId() : int
      {
         return var_2101;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1288 = param1.id;
         _type = param1.petType;
         var_2174 = param1.petRace;
         _image = param1.image;
         var_2173 = param1.isOwnPet;
         var_2101 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1936 = param1.level;
         var_2100 = param1.levelMax;
         var_1920 = param1.experience;
         var_2102 = param1.experienceMax;
         _energy = param1.energy;
         var_2099 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_2098 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2175 = param1.roomIndex;
         var_2103 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2175;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_2099;
      }
      
      public function get levelMax() : int
      {
         return var_2100;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2174;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1920;
      }
      
      public function get age() : int
      {
         return var_2103;
      }
   }
}
