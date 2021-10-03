package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_549:int = 6;
      
      public static const const_240:int = 5;
      
      public static const const_629:int = 2;
      
      public static const const_355:int = 9;
      
      public static const const_338:int = 4;
      
      public static const const_272:int = 2;
      
      public static const const_610:int = 4;
      
      public static const const_220:int = 8;
      
      public static const const_750:int = 7;
      
      public static const const_269:int = 3;
      
      public static const const_345:int = 1;
      
      public static const const_247:int = 5;
      
      public static const const_381:int = 12;
      
      public static const const_357:int = 1;
      
      public static const const_728:int = 11;
      
      public static const const_533:int = 3;
      
      public static const const_1526:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_426:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_426 = new Array();
         var_426.push(new Tab(_navigator,const_345,const_381,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_426.push(new Tab(_navigator,const_272,const_357,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_426.push(new Tab(_navigator,const_338,const_728,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_963));
         var_426.push(new Tab(_navigator,const_269,const_240,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_426.push(new Tab(_navigator,const_247,const_220,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_586));
         setSelectedTab(const_345);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_426)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_426)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_426)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_338;
      }
      
      public function get tabs() : Array
      {
         return var_426;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
