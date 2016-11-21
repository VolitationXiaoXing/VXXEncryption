# VXXEncryption
##各种平台加密算法汇总
使用和代码点击项目查看.下面是运行结果,没有计算加密耗时.看log说明加密解密速度小于一毫秒,加密解密算法速度还算是很快的.  

###iOS,JAVA,Android端的加密解密数据得到的结果是一致的.使用下面的加密算法来让你们的项目更加安全吧!!!

加密算法key的长度有三种：128、192和256 bits。由于历史原因，JDK默认只支持不大于128 bits的密钥，而128 bits的key已能够满足商用安全需求.




###提供以下加密算法:

* 不可逆加密算法
 - MD5
 - MD2
 - SHA1
 - SHA256
 
* 对称加密算法
 - DES
 - 3DES
 - AES - 128  
* 非对称加密算法
 - RSA

###iOSDemo各种加密解密字符串结果

```
2016-11-21 14:41:26.378 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.378 加密算法iOSDemo[17428:173644] 明文:1234abcd你好世界
2016-11-21 14:41:26.378 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.378 加密算法iOSDemo[17428:173644] DES加密数据:TOGA+/BxyqrmXwxnNZU8LyySyF8064+V
2016-11-21 14:41:26.378 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.379 加密算法iOSDemo[17428:173644] DES解密数据:1234abcd你好世界
2016-11-21 14:41:26.379 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.379 加密算法iOSDemo[17428:173644] AES加密数据:hr88SE/xPeaWEWuomQFTbgEqMpF4goyjpGYdU2LdcF0=
2016-11-21 14:41:26.379 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.379 加密算法iOSDemo[17428:173644] AES解密数据:1234abcd你好世界
2016-11-21 14:41:26.380 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.380 加密算法iOSDemo[17428:173644] AES-128加密数据:diu1ZGhNSZtMyDAyrH7X8awGKDQLGOHoxXUNAfel72U=
2016-11-21 14:41:26.380 加密算法iOSDemo[17428:173644] ==========================
2016-11-21 14:41:26.380 加密算法iOSDemo[17428:173644] AES-128解密数据:1234abcd你好世界
2016-11-21 14:41:26.380 加密算法iOSDemo[17428:173644] ==========================
```

###java各种解密解密字符串结果

```
===========================
明文: 1234abcd你好世界
===========================
AES-128: diu1ZGhNSZtMyDAyrH7X8awGKDQLGOHoxXUNAfel72U=
===========================
AES-128: 1234abcd你好世界
===========================

```