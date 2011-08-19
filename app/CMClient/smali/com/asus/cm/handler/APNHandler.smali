.class public Lcom/asus/cm/handler/APNHandler;
.super Ljava/lang/Object;
.source "APNHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/handler/APNHandler$1;,
        Lcom/asus/cm/handler/APNHandler$HandleType;
    }
.end annotation


# instance fields
.field private mMobileCon:Lcom/asus/cm/settings/MobileConnection;

.field private mPointerUri:Ljava/lang/String;

.field private mType:Lcom/asus/cm/handler/APNHandler$HandleType;


# direct methods
.method public constructor <init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V
    .locals 0
    .parameter "pType"
    .parameter "pMobileCon"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    .line 27
    iput-object p2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/asus/cm/handler/APNHandler$HandleType;Ljava/lang/String;)V
    .locals 0
    .parameter "pType"
    .parameter "pPointerUri"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    .line 32
    iput-object p2, p0, Lcom/asus/cm/handler/APNHandler;->mPointerUri:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public read(I[B)I
    .locals 8
    .parameter "pOffset"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read() of APNHandler is invoke : mType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, readNum:I
    const/4 v1, 0x0

    .line 42
    .local v1, bytes:[B
    sget-object v4, Lcom/asus/cm/handler/APNHandler$1;->$SwitchMap$com$asus$cm$handler$APNHandler$HandleType:[I

    iget-object v5, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v5}, Lcom/asus/cm/handler/APNHandler$HandleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 180
    :try_start_0
    new-instance v4, Lcom/asus/cm/exception/IOHandleException;

    const-string v5, "non-support handle type...."

    invoke-direct {v4, v5}, Lcom/asus/cm/exception/IOHandleException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/asus/cm/exception/IOHandleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 182
    .local v2, ex:Lcom/asus/cm/exception/IOHandleException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/asus/cm/exception/IOHandleException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v2           #ex:Lcom/asus/cm/exception/IOHandleException;
    :goto_0
    if-nez p2, :cond_d

    .line 188
    :try_start_1
    const-string v4, "***** pData is NULL *****"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    array-length v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :goto_1
    return v4

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMSC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getMmsc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v7

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 50
    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_PROXY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getMmsProxy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsProxy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsProxy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 59
    goto :goto_0

    .line 62
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_PORT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getMmsPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsPort()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v7

    .line 66
    goto/16 :goto_1

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 68
    goto/16 :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getApn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v7

    .line 75
    goto/16 :goto_1

    .line 76
    :cond_3
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 77
    goto/16 :goto_0

    .line 80
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NAME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v7

    .line 84
    goto/16 :goto_1

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 86
    goto/16 :goto_0

    .line 89
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USERNAME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v7

    .line 93
    goto/16 :goto_1

    .line 94
    :cond_5
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMmsc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 96
    goto/16 :goto_0

    .line 99
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PASSWORD : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPassword()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v7

    .line 103
    goto/16 :goto_1

    .line 104
    :cond_6
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 106
    goto/16 :goto_0

    .line 109
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APN_TYPE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v7

    .line 113
    goto/16 :goto_1

    .line 114
    :cond_7
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 116
    goto/16 :goto_0

    .line 119
    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMcc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v7

    .line 123
    goto/16 :goto_1

    .line 124
    :cond_8
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 126
    goto/16 :goto_0

    .line 129
    :pswitch_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMnc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v7

    .line 133
    goto/16 :goto_1

    .line 134
    :cond_9
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 136
    goto/16 :goto_0

    .line 139
    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ToAPN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mPointerUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mPointerUri:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 145
    goto/16 :goto_0

    .line 149
    :pswitch_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PORT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPort()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v7

    .line 153
    goto/16 :goto_1

    .line 154
    :cond_a
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 156
    goto/16 :goto_0

    .line 159
    :pswitch_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROXY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getProxy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPort()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v7

    .line 163
    goto/16 :goto_1

    .line 164
    :cond_b
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 166
    goto/16 :goto_0

    .line 169
    :pswitch_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v6}, Lcom/asus/cm/settings/MobileConnection;->getServer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getServer()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v7

    .line 173
    goto/16 :goto_1

    .line 174
    :cond_c
    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v4}, Lcom/asus/cm/settings/MobileConnection;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 176
    goto/16 :goto_0

    .line 192
    :cond_d
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    array-length v4, p2

    invoke-virtual {v0, p2, p1, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v3

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    :goto_2
    move v4, v3

    .line 199
    goto/16 :goto_1

    .line 195
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 196
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public write(I[BI)V
    .locals 5
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write() of APNHandler is invoke : mType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v2, p2

    invoke-virtual {v0, p2, p1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 211
    sget-object v2, Lcom/asus/cm/handler/APNHandler$1;->$SwitchMap$com$asus$cm$handler$APNHandler$HandleType:[I

    iget-object v3, p0, Lcom/asus/cm/handler/APNHandler;->mType:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v3}, Lcom/asus/cm/handler/APNHandler$HandleType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_0 .. :try_end_0} :catch_4

    packed-switch v2, :pswitch_data_0

    .line 325
    :try_start_1
    new-instance v2, Lcom/asus/cm/exception/IOHandleException;

    const-string v3, "non-support handle type...."

    invoke-direct {v2, v3}, Lcom/asus/cm/exception/IOHandleException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/asus/cm/exception/IOHandleException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_1 .. :try_end_1} :catch_4

    .line 326
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 327
    .local v1, ex:Lcom/asus/cm/exception/IOHandleException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/asus/cm/exception/IOHandleException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v1           #ex:Lcom/asus/cm/exception/IOHandleException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 345
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 213
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMSC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setMmsc(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 335
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 336
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS_PROXY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setMmsProxy(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 337
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 338
    .local v1, ex:Lcom/asus/cm/exception/PortOutOfRangeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/asus/cm/exception/PortOutOfRangeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    .end local v1           #ex:Lcom/asus/cm/exception/PortOutOfRangeException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS_PORT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setMmsPort(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 339
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 340
    .local v1, ex:Lcom/asus/cm/exception/UnsupportdTypeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/asus/cm/exception/UnsupportdTypeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    .end local v1           #ex:Lcom/asus/cm/exception/UnsupportdTypeException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setApn(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 341
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    move-object v1, v2

    .line 342
    .local v1, ex:Lcom/asus/cm/exception/OperatorNotAllowException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/asus/cm/exception/OperatorNotAllowException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    .end local v1           #ex:Lcom/asus/cm/exception/OperatorNotAllowException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setName(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 253
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PORT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setPort(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 261
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROXY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setProxy(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 269
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setServer(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 277
    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USERNAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setUser(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 285
    :pswitch_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PASSWORD : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setPassword(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 293
    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN_TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setType(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 301
    :pswitch_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setMcc(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 309
    :pswitch_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MNC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/MobileConnection;->setMnc(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/asus/cm/handler/APNHandler;->mMobileCon:Lcom/asus/cm/settings/MobileConnection;

    invoke-virtual {v2}, Lcom/asus/cm/settings/MobileConnection;->save()V

    goto/16 :goto_0

    .line 317
    :pswitch_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToAPN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/asus/cm/exception/PortOutOfRangeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/asus/cm/exception/OperatorNotAllowException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
