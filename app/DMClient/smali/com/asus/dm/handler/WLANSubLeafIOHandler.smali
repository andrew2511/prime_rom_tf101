.class public Lcom/asus/dm/handler/WLANSubLeafIOHandler;
.super Ljava/lang/Object;
.source "WLANSubLeafIOHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/handler/WLANSubLeafIOHandler$1;,
        Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WLANSubLeafIOHandler"


# instance fields
.field private mConfigID:I

.field private mContext:Landroid/content/Context;

.field private mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;I)V
    .locals 2
    .parameter "pContext"
    .parameter "pType"
    .parameter "configID"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    iput-object p2, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    .line 35
    iput p3, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    .line 36
    return-void
.end method


# virtual methods
.method public read(I[B)I
    .locals 11
    .parameter "pOffset"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 40
    const-string v7, "WLANSubLeafIOHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read(): mConfigID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget v7, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-static {v7}, Lcom/asus/dm/util/WifiConfigHelper;->getNetwork(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 46
    .local v3, network:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v7, v10

    .line 92
    :goto_0
    return v7

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    .local v4, readNum:I
    const/4 v1, 0x0

    .line 52
    .local v1, bytes:[B
    sget-object v7, Lcom/asus/dm/handler/WLANSubLeafIOHandler$1;->$SwitchMap$com$asus$dm$handler$WLANSubLeafIOHandler$HandleType:[I

    iget-object v8, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-virtual {v8}, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 68
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 70
    const-string v7, "WLANSubLeafIOHandler"

    const-string v8, "***** bytes is NULL *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 71
    goto :goto_0

    .line 54
    :pswitch_0
    const-string v7, "ssid"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .local v6, ssid:Ljava/lang/String;
    if-nez v6, :cond_2

    const/4 v7, 0x0

    move-object v1, v7

    .line 56
    :goto_2
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v1, v7

    goto :goto_2

    .line 59
    .end local v6           #ssid:Ljava/lang/String;
    :pswitch_1
    const-string v7, "infrastructure"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 60
    goto :goto_1

    .line 62
    :pswitch_2
    iget v7, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-static {v7}, Lcom/asus/dm/util/WifiConfigHelper;->getSecurity(I)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, security:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1

    .line 74
    .end local v5           #security:Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 76
    const-string v7, "WLANSubLeafIOHandler"

    const-string v8, "***** pData is NULL *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    array-length v7, v1

    goto :goto_0

    .line 81
    :cond_4
    const-string v7, "WLANSubLeafIOHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read(): bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    array-length v7, p2

    invoke-virtual {v0, p2, p1, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    .line 87
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    :goto_3
    move v7, v4

    .line 92
    goto :goto_0

    .line 88
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 89
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public write(I[BI)V
    .locals 7
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v3, "WLANSubLeafIOHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write(): mConfigID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v6, "null"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    :goto_0
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v3, p2

    invoke-virtual {v0, p2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 106
    sget-object v3, Lcom/asus/dm/handler/WLANSubLeafIOHandler$1;->$SwitchMap$com$asus$dm$handler$WLANSubLeafIOHandler$HandleType:[I

    iget-object v4, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mType:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 133
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 137
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-void

    :cond_0
    move-object v6, p2

    .line 97
    goto :goto_0

    .line 108
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    iget v3, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-static {v3}, Lcom/asus/dm/util/WifiConfigHelper;->getNetwork(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 109
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    .local v2, newNetwork:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ssid"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v2}, Lcom/asus/dm/util/WifiConfigHelper;->addNetwork(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #newNetwork:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 135
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 113
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler;->mConfigID:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/WifiConfigHelper;->setSSID(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
