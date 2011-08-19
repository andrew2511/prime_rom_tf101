.class public Lcom/asus/cm/handler/BrowserPageHandler;
.super Ljava/lang/Object;
.source "BrowserPageHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/handler/BrowserPageHandler$3;,
        Lcom/asus/cm/handler/BrowserPageHandler$HandleType;
    }
.end annotation


# instance fields
.field private mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

.field private mContext:Landroid/content/Context;

.field private mProvService:Lcom/asus/dm/IManageBrowser;

.field private mProvisioningConnection:Landroid/content/ServiceConnection;

.field private mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;


# direct methods
.method public constructor <init>(Lcom/asus/cm/handler/BrowserPageHandler$HandleType;Landroid/content/Context;)V
    .locals 1
    .parameter "pType"
    .parameter "pContext"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    .line 32
    new-instance v0, Lcom/asus/cm/handler/BrowserPageHandler$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/handler/BrowserPageHandler$1;-><init>(Lcom/asus/cm/handler/BrowserPageHandler;)V

    iput-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvisioningConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    .line 78
    iput-object p2, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/asus/cm/handler/BrowserPageHandler$HandleType;Lcom/asus/cm/settings/BookMarkList;Landroid/content/Context;)V
    .locals 1
    .parameter "pType"
    .parameter "pBookMarksList"
    .parameter "pContext"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    .line 32
    new-instance v0, Lcom/asus/cm/handler/BrowserPageHandler$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/handler/BrowserPageHandler$1;-><init>(Lcom/asus/cm/handler/BrowserPageHandler;)V

    iput-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvisioningConnection:Landroid/content/ServiceConnection;

    .line 82
    iput-object p1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    .line 83
    iput-object p2, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    .line 84
    iput-object p3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/asus/cm/settings/BookMarkList;

    invoke-direct {v0, p3}, Lcom/asus/cm/settings/BookMarkList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/asus/cm/handler/BrowserPageHandler;Lcom/asus/dm/IManageBrowser;)Lcom/asus/dm/IManageBrowser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/cm/handler/BrowserPageHandler;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvisioningConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/cm/handler/BrowserPageHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindProvService()V
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lcom/asus/cm/handler/BrowserPageHandler$2;

    invoke-direct {v1, p0}, Lcom/asus/cm/handler/BrowserPageHandler$2;-><init>(Lcom/asus/cm/handler/BrowserPageHandler;)V

    invoke-virtual {v1}, Lcom/asus/cm/handler/BrowserPageHandler$2;->start()V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    if-nez v1, :cond_0

    .line 58
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public read(I[B)I
    .locals 9
    .parameter "pOffset"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read() of BrowserPageHandler is invoke : mType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, readNum:I
    const/4 v2, 0x0

    .line 99
    .local v2, bytes:[B
    sget-object v6, Lcom/asus/cm/handler/BrowserPageHandler$3;->$SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I

    iget-object v7, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v7}, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 128
    :try_start_0
    new-instance v6, Lcom/asus/cm/exception/IOHandleException;

    const-string v7, "non-support handle type...."

    invoke-direct {v6, v7}, Lcom/asus/cm/exception/IOHandleException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/asus/cm/exception/IOHandleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 130
    .local v4, ex:Lcom/asus/cm/exception/IOHandleException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/asus/cm/exception/IOHandleException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v4           #ex:Lcom/asus/cm/exception/IOHandleException;
    :goto_0
    if-nez p2, :cond_1

    .line 136
    :try_start_1
    const-string v6, "***** pData is NULL *****"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    array-length v6, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :goto_1
    return v6

    .line 101
    :pswitch_0
    const-string v1, ""

    .line 103
    .local v1, bookMarks:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, count:I
    :goto_2
    iget-object v6, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    invoke-virtual {v6}, Lcom/asus/cm/settings/BookMarkList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    invoke-virtual {v7, v3}, Lcom/asus/cm/settings/BookMarkList;->get(I)Lcom/asus/cm/settings/BookMark;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asus/cm/settings/BookMark;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BookMarks : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v1           #bookMarks:Ljava/lang/String;
    .end local v3           #count:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/asus/cm/handler/BrowserPageHandler;->bindProvService()V

    .line 116
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HomePage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    invoke-interface {v8}, Lcom/asus/dm/IManageBrowser;->getHomePage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    invoke-interface {v6}, Lcom/asus/dm/IManageBrowser;->getHomePage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 123
    :goto_3
    invoke-virtual {p0}, Lcom/asus/cm/handler/BrowserPageHandler;->unBindProvService()V

    goto/16 :goto_0

    .line 120
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 121
    .local v4, ex:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    array-length v6, p2

    invoke-virtual {v0, p2, p1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    :goto_4
    move v6, v5

    .line 146
    goto/16 :goto_1

    .line 142
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 143
    .local v4, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unBindProvService()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvisioningConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.ProvisioningService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 74
    return-void
.end method

.method public write(I[BI)V
    .locals 8
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const v7, 0x7f06001c

    const/4 v6, 0x1

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write() of BrowserPageHandler is invoke : mType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v3, p2

    invoke-virtual {v0, p2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    sget-object v3, Lcom/asus/cm/handler/BrowserPageHandler$3;->$SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I

    iget-object v4, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mType:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    packed-switch v3, :pswitch_data_0

    .line 184
    :try_start_1
    new-instance v3, Lcom/asus/cm/exception/IOHandleException;

    const-string v4, "non-support handle type...."

    invoke-direct {v3, v4}, Lcom/asus/cm/exception/IOHandleException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/asus/cm/exception/IOHandleException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 187
    .local v1, ex:Lcom/asus/cm/exception/IOHandleException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/asus/cm/exception/IOHandleException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1           #ex:Lcom/asus/cm/exception/IOHandleException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 203
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 159
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BookMarks : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    invoke-virtual {v3}, Lcom/asus/cm/settings/BookMarkList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mBookMarksList:Lcom/asus/cm/settings/BookMarkList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/settings/BookMarkList;->get(I)Lcom/asus/cm/settings/BookMark;

    move-result-object v2

    .line 163
    .local v2, mark:Lcom/asus/cm/settings/BookMark;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mark.setUrl("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/BookMark;->setUrl(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lcom/asus/cm/settings/BookMark;->save()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 193
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mark:Lcom/asus/cm/settings/BookMark;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 194
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 168
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_3
    new-instance v2, Lcom/asus/cm/settings/BookMark;

    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/asus/cm/settings/BookMark;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v2       #mark:Lcom/asus/cm/settings/BookMark;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/settings/BookMark;->setUrl(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Lcom/asus/cm/settings/BookMark;->save()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 197
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mark:Lcom/asus/cm/settings/BookMark;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 198
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 176
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    :try_start_4
    invoke-virtual {p0}, Lcom/asus/cm/handler/BrowserPageHandler;->bindProvService()V

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomePage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/asus/cm/handler/BrowserPageHandler;->mProvService:Lcom/asus/dm/IManageBrowser;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/asus/dm/IManageBrowser;->setHomePage(Ljava/lang/String;)Z

    .line 179
    invoke-virtual {p0}, Lcom/asus/cm/handler/BrowserPageHandler;->unBindProvService()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
