package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2103:int;
      
      private var var_411:String;
      
      private var var_1936:int;
      
      private var var_1785:int;
      
      private var var_1920:int;
      
      private var var_2250:int;
      
      private var _nutrition:int;
      
      private var var_1288:int;
      
      private var var_2249:int;
      
      private var var_2252:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_2101:int;
      
      private var var_2251:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1936;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2250;
      }
      
      public function flush() : Boolean
      {
         var_1288 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2249;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2252;
      }
      
      public function get maxNutrition() : int
      {
         return var_2251;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1785;
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1288 = param1.readInteger();
         _name = param1.readString();
         var_1936 = param1.readInteger();
         var_2249 = param1.readInteger();
         var_1920 = param1.readInteger();
         var_2252 = param1.readInteger();
         _energy = param1.readInteger();
         var_2250 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2251 = param1.readInteger();
         var_411 = param1.readString();
         var_1785 = param1.readInteger();
         var_2101 = param1.readInteger();
         var_2103 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1920;
      }
      
      public function get ownerId() : int
      {
         return var_2101;
      }
      
      public function get age() : int
      {
         return var_2103;
      }
   }
}
