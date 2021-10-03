package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.events.EventDispatcher;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_673:int = 8;
      
      public static const const_1621:int = 10;
      
      public static const const_1293:int = 6;
      
      private static var var_1181:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1204:int = 0;
      
      public static const const_1512:int = 1;
      
      public static const const_1708:int = 2;
      
      public static const const_1565:int = 3;
      
      public static const const_1631:int = 4;
      
      public static const const_1705:int = 5;
      
      public static const const_1506:int = 9;
      
      public static const const_1670:int = 7;
       
      
      private var var_188:uint = 0;
      
      private var var_1182:uint = 0;
      
      private var var_821:Date;
      
      private var var_2382:int = -1;
      
      private var var_96:Function;
      
      private var var_574:Boolean = false;
      
      private var _eventDispatcher:EventDispatcher;
      
      private var var_2476:int = -1;
      
      private var var_1466:uint = 0;
      
      private var var_2383:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_1000:uint;
      
      private var var_20:ByteArray;
      
      private var var_823:uint;
      
      private var var_1702:Boolean = false;
      
      private var var_2477:int = -1;
      
      private var var_1703:String = "2.0";
      
      private var var_189:Boolean = false;
      
      private var var_2381:Boolean = false;
      
      private var var_389:String;
      
      private var var_678:uint = 0;
      
      private var var_1467:int = 0;
      
      private var var_470:String = "";
      
      private var var_822:int = 8;
      
      private var var_1701:Boolean = false;
      
      public function FZipFile(param1:EventDispatcher, param2:String = "utf-8")
      {
         var_96 = parseFileHead;
         super();
         var_389 = param2;
         _eventDispatcher = param1;
         _extraFields = new Dictionary();
         var_20 = new ByteArray();
         var_20.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_678;
      }
      
      public function set filename(param1:String) : void
      {
         var_470 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_189 && false)
         {
            var_20.position = 0;
            if(var_1181)
            {
               var_20.uncompress.apply(var_20,["deflate"]);
            }
            else
            {
               var_20.uncompress();
            }
            var_20.position = 0;
            var_189 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_470;
      }
      
      public function get date() : Date
      {
         return var_821;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && var_96(param1))
         {
         }
         return var_96 === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1701)
         {
            var_96 = parseFileIdle;
            _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_127,"Data descriptors are not supported."));
            return false;
         }
         if(var_188 == 0)
         {
            var_96 = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_188)
            {
               return false;
            }
            parseContent(param1);
            var_96 = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1703;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_189)
         {
            uncompress();
         }
         var_20.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_20.readUTFBytes(var_20.bytesAvailable);
         }
         else
         {
            _loc3_ = var_20.readMultiByte(var_20.bytesAvailable,param2);
         }
         var_20.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_822 === const_673 && !var_1702)
         {
            if(var_1181)
            {
               param1.readBytes(var_20,0,var_188);
            }
            else
            {
               if(!var_574)
               {
                  _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_127,"Adler32 checksum not found."));
                  return;
               }
               var_20.writeByte(120);
               _loc2_ = uint(~var_2382 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_20.writeByte(_loc2_);
               param1.readBytes(var_20,2,var_188);
               var_20.position = var_20.length;
               var_20.writeUnsignedInt(var_1000);
            }
            var_189 = true;
         }
         else
         {
            if(var_822 != const_1204)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_127,"Compression method " + var_822 + " is not supported."));
               return;
            }
            param1.readBytes(var_20,0,var_188);
            var_189 = false;
         }
         var_20.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1182 + var_1466 > 0)
            {
               var_96 = parseFileHeadExt;
            }
            else
            {
               var_96 = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_20.length = 0;
         var_20.position = 0;
         var_189 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_20.writeUTFBytes(param1);
            }
            else
            {
               var_20.writeMultiByte(param1,param2);
            }
            var_823 = ChecksumUtil.CRC32(var_20);
            var_574 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_821 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1467 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1467 << 8 | 20);
         param1.writeShort(var_389 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_673);
         var _loc5_:Date = var_821 != null ? var_821 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_823);
         param1.writeUnsignedInt(var_188);
         param1.writeUnsignedInt(var_678);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_389 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_470);
         }
         else
         {
            _loc8_.writeMultiByte(var_470,var_389);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_574)
            {
               _loc16_ = var_189;
               if(_loc16_)
               {
                  uncompress();
               }
               var_1000 = ChecksumUtil.Adler32(var_20,0,var_20.length);
               var_574 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_1000);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_389 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2383);
            }
            else
            {
               _loc8_.writeMultiByte(var_2383,var_389);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_188 > 0)
         {
            if(var_1181)
            {
               _loc13_ = 0;
               param1.writeBytes(var_20,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_20,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_188;
      }
      
      protected function compress() : void
      {
         if(!var_189)
         {
            if(false)
            {
               var_20.position = 0;
               var_678 = var_20.length;
               if(var_1181)
               {
                  var_20.compress.apply(var_20,["deflate"]);
                  var_188 = var_20.length;
               }
               else
               {
                  var_20.compress();
                  var_188 = -6;
               }
               var_20.position = 0;
               var_189 = true;
            }
            else
            {
               var_188 = 0;
               var_678 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1182 + var_1466)
         {
            parseHeadExt(param1);
            var_96 = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_389 == "utf-8")
         {
            var_470 = param1.readUTFBytes(var_1182);
         }
         else
         {
            var_470 = param1.readMultiByte(var_1182,var_389);
         }
         var _loc2_:uint = var_1466;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_127,"Parse error in file " + var_470 + ": Extra field data size too big."));
               return;
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_1000 = param1.readUnsignedInt();
               var_574 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1467 = _loc2_ >> 8;
         var_1703 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_822 = param1.readUnsignedShort();
         var_1702 = (_loc3_ & 1) !== 0;
         var_1701 = (_loc3_ & 8) !== 0;
         var_2381 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_389 = "utf-8";
         }
         if(var_822 === const_1293)
         {
            var_2477 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2476 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_822 === const_673)
         {
            var_2382 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_821 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_823 = param1.readUnsignedInt();
         var_188 = param1.readUnsignedInt();
         var_678 = param1.readUnsignedInt();
         var_1182 = param1.readUnsignedShort();
         var_1466 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_20,0,param1.length);
            var_823 = ChecksumUtil.CRC32(var_20);
            var_574 = false;
         }
         else
         {
            var_20.length = 0;
            var_20.position = 0;
            var_189 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_470 + "\n  date:" + var_821 + "\n  sizeCompressed:" + var_188 + "\n  sizeUncompressed:" + var_678 + "\n  versionHost:" + var_1467 + "\n  versionNumber:" + var_1703 + "\n  compressionMethod:" + var_822 + "\n  encrypted:" + var_1702 + "\n  hasDataDescriptor:" + var_1701 + "\n  hasCompressedPatchedData:" + var_2381 + "\n  filenameEncoding:" + var_389 + "\n  crc32:" + var_823.toString(16) + "\n  adler32:" + var_1000.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_189)
         {
            uncompress();
         }
         return var_20;
      }
   }
}
