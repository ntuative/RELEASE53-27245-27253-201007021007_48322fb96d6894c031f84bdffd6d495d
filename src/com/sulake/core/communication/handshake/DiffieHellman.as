package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1294:BigInteger;
      
      private var var_589:BigInteger;
      
      private var var_1572:BigInteger;
      
      private var var_1573:BigInteger;
      
      private var var_1991:BigInteger;
      
      private var var_1992:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1294 = param1;
         var_1572 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1991.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1573 = new BigInteger();
         var_1573.fromRadix(param1,param2);
         var_1991 = var_1573.modPow(var_589,var_1294);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1992.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1294.toString() + ",generator: " + var_1572.toString() + ",secret: " + param1);
         var_589 = new BigInteger();
         var_589.fromRadix(param1,param2);
         var_1992 = var_1572.modPow(var_589,var_1294);
         return true;
      }
   }
}
