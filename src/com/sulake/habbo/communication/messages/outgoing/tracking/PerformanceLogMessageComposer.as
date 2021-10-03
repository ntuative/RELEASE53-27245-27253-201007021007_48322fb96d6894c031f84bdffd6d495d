package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1126:int = 0;
      
      private var var_1257:int = 0;
      
      private var var_1906:String = "";
      
      private var var_1125:int = 0;
      
      private var var_1902:String = "";
      
      private var var_1903:int = 0;
      
      private var var_1630:String = "";
      
      private var var_1907:int = 0;
      
      private var var_1901:int = 0;
      
      private var var_1905:String = "";
      
      private var var_1904:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1907 = param1;
         var_1905 = param2;
         var_1630 = param3;
         var_1906 = param4;
         var_1902 = param5;
         if(param6)
         {
            var_1257 = 1;
         }
         else
         {
            var_1257 = 0;
         }
         var_1903 = param7;
         var_1901 = param8;
         var_1125 = param9;
         var_1904 = param10;
         var_1126 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1907,var_1905,var_1630,var_1906,var_1902,var_1257,var_1903,var_1901,var_1125,var_1904,var_1126];
      }
      
      public function dispose() : void
      {
      }
   }
}
