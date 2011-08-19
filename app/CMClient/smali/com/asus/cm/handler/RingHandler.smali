.class public Lcom/asus/cm/handler/RingHandler;
.super Ljava/lang/Object;
.source "RingHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/handler/RingHandler$1;,
        Lcom/asus/cm/handler/RingHandler$RingStatus;
    }
.end annotation


# instance fields
.field private mBaOut:Ljava/io/ByteArrayOutputStream;

.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field private mService:Lcom/asus/cm/CMService;


# direct methods
.method public constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/handler/RingHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 21
    iput-object p1, p0, Lcom/asus/cm/handler/RingHandler;->mService:Lcom/asus/cm/CMService;

    .line 22
    return-void
.end method

.method private setRingStatus(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "baOut"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, ringStatus:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingStatus: ringStatus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/asus/cm/handler/RingHandler$1;->$SwitchMap$com$asus$cm$handler$RingHandler$RingStatus:[I

    invoke-static {v0}, Lcom/asus/cm/handler/RingHandler$RingStatus;->getStatus(I)Lcom/asus/cm/handler/RingHandler$RingStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/cm/handler/RingHandler$RingStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/asus/cm/handler/RingHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1, v0}, Lcom/asus/cm/CMCRegistryManager;->setRingStatus(I)V

    .line 100
    iget-object v1, p0, Lcom/asus/cm/handler/RingHandler;->mService:Lcom/asus/cm/CMService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMService;->ringStatus(Z)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/asus/cm/handler/RingHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1, v0}, Lcom/asus/cm/CMCRegistryManager;->setRingStatus(I)V

    .line 104
    iget-object v1, p0, Lcom/asus/cm/handler/RingHandler;->mService:Lcom/asus/cm/CMService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMService;->ringStatus(Z)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public read(I[B)I
    .locals 8
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v4, 0x0

    .line 28
    .local v4, readNum:I
    const/4 v2, 0x0

    .line 29
    .local v2, bytes:[B
    const/4 v0, 0x0

    .line 31
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    if-nez p2, :cond_0

    .line 32
    const-string v6, "***** data is NULL *****"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const/4 v6, -0x1

    .line 53
    :goto_0
    return v6

    .line 36
    :cond_0
    iget-object v6, p0, Lcom/asus/cm/handler/RingHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/cm/CMCRegistryManager;->getRingStatus()I

    move-result v5

    .line 37
    .local v5, ringstatus:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read() -> ringstatus == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    .local v1, baIn:Ljava/io/ByteArrayInputStream;
    :try_start_1
    array-length v6, p2

    invoke-virtual {v1, p2, p1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 46
    if-eqz v1, :cond_1

    .line 47
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move-object v0, v1

    .end local v1           #baIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #baIn:Ljava/io/ByteArrayInputStream;
    move v6, v4

    .line 53
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v6

    .line 46
    :goto_2
    if-eqz v0, :cond_2

    .line 47
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 45
    :cond_2
    :goto_3
    throw v6

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 49
    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #baIn:Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    .line 50
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #baIn:Ljava/io/ByteArrayInputStream;
    .restart local v0       #baIn:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public write(I[BI)V
    .locals 4
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pTotalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 59
    array-length v2, p2

    if-ne v2, p3, :cond_1

    .line 60
    const-string v2, "write(): pData.length == pTotalSize"

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v2, p2

    invoke-virtual {v0, p2, p1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 66
    :try_start_0
    invoke-direct {p0, v0}, Lcom/asus/cm/handler/RingHandler;->setRingStatus(Ljava/io/ByteArrayOutputStream;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 69
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    const-string v2, "write(): pData.length != pTotalSize"

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 74
    if-nez p1, :cond_2

    .line 75
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/asus/cm/handler/RingHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/asus/cm/handler/RingHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    array-length v3, p2

    invoke-virtual {v2, p2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pData.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pTotalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    array-length v2, p2

    add-int/2addr v2, p1

    if-ne v2, p3, :cond_0

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/asus/cm/handler/RingHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2}, Lcom/asus/cm/handler/RingHandler;->setRingStatus(Ljava/io/ByteArrayOutputStream;)V

    .line 85
    iget-object v2, p0, Lcom/asus/cm/handler/RingHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 87
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
