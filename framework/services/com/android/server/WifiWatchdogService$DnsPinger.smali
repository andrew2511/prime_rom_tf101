.class Lcom/android/server/WifiWatchdogService$DnsPinger;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsPinger"
.end annotation


# static fields
.field private static final DNS_PORT:I = 0x35

.field private static final DNS_QUERY_BASE_SIZE:I = 0x21

.field private static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1309
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillQuery([B)V
    .registers 6
    .parameter "buf"

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1382
    :cond_d
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 1383
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 1386
    const/4 v1, 0x2

    aput-byte v3, p0, v1

    .line 1389
    const/4 v1, 0x5

    aput-byte v3, p0, v1

    .line 1394
    const/16 v1, 0xc

    const-string v2, "www"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1397
    const/16 v1, 0x10

    const-string v2, "android"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1400
    const/16 v1, 0x18

    const-string v2, "com"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1403
    const/16 v1, 0x1e

    aput-byte v3, p0, v1

    .line 1406
    const/16 v1, 0x20

    aput-byte v3, p0, v1

    .line 1407
    return-void
.end method

.method static isDnsReachable(Ljava/net/InetAddress;I)Z
    .registers 11
    .parameter "dnsAddress"
    .parameter "timeout"

    .prologue
    const/4 v8, 0x0

    .line 1312
    const/4 v4, 0x0

    .line 1314
    .local v4, socket:Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_61
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_7} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_7} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_7} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_51

    .line 1317
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .local v5, socket:Ljava/net/DatagramSocket;
    :try_start_7
    invoke-virtual {v5, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1319
    const/16 v6, 0x21

    new-array v0, v6, [B

    .line 1320
    .local v0, buf:[B
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$DnsPinger;->fillQuery([B)V

    .line 1324
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v6, v0

    const/16 v7, 0x35

    invoke-direct {v2, v0, v6, p0, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1326
    .local v2, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1329
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v6, v0

    invoke-direct {v3, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1330
    .local v3, replyPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_68
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_25} :catch_7b
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_25} :catch_77
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_25} :catch_73
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_25} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_6b

    .line 1333
    const/4 v6, 0x1

    .line 1362
    if-eqz v5, :cond_2b

    .line 1363
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_2b
    move-object v4, v5

    .line 1360
    .end local v0           #buf:[B
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .end local v3           #replyPacket:Ljava/net/DatagramPacket;
    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    :goto_2c
    return v6

    .line 1335
    :catch_2d
    move-exception v6

    move-object v1, v6

    .line 1362
    .local v1, e:Ljava/net/SocketException;
    :goto_2f
    if-eqz v4, :cond_34

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_34
    move v6, v8

    .line 1339
    goto :goto_2c

    .line 1341
    .end local v1           #e:Ljava/net/SocketException;
    :catch_36
    move-exception v6

    move-object v1, v6

    .line 1362
    .local v1, e:Ljava/net/UnknownHostException;
    :goto_38
    if-eqz v4, :cond_3d

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_3d
    move v6, v8

    .line 1345
    goto :goto_2c

    .line 1347
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_3f
    move-exception v6

    move-object v1, v6

    .line 1362
    .local v1, e:Ljava/net/SocketTimeoutException;
    :goto_41
    if-eqz v4, :cond_46

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_46
    move v6, v8

    .line 1348
    goto :goto_2c

    .line 1350
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_48
    move-exception v6

    move-object v1, v6

    .line 1362
    .local v1, e:Ljava/io/IOException;
    :goto_4a
    if-eqz v4, :cond_4f

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_4f
    move v6, v8

    .line 1354
    goto :goto_2c

    .line 1356
    .end local v1           #e:Ljava/io/IOException;
    :catch_51
    move-exception v6

    move-object v1, v6

    .line 1358
    .local v1, e:Ljava/lang/Exception;
    :goto_53
    :try_start_53
    const-string v6, "WifiWatchdogService"

    const-string v7, "DnsPinger.isReachable got an unknown exception"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_61

    .line 1362
    if-eqz v4, :cond_5f

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_5f
    move v6, v8

    .line 1360
    goto :goto_2c

    .line 1362
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_61
    move-exception v6

    :goto_62
    if-eqz v4, :cond_67

    .line 1363
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 1362
    :cond_67
    throw v6

    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catchall_68
    move-exception v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_62

    .line 1356
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catch_6b
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_53

    .line 1350
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catch_6f
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_4a

    .line 1347
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catch_73
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_41

    .line 1341
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catch_77
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_38

    .line 1335
    .end local v4           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #socket:Ljava/net/DatagramSocket;
    :catch_7b
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    goto :goto_2f
.end method

.method private static writeString([BILjava/lang/String;)V
    .registers 7
    .parameter "buf"
    .parameter "startPos"
    .parameter "string"

    .prologue
    .line 1410
    move v1, p1

    .line 1413
    .local v1, pos:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1414
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    :goto_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 1415
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1414
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_c

    .line 1417
    :cond_1f
    return-void
.end method
