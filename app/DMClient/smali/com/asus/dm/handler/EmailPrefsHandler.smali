.class public Lcom/asus/dm/handler/EmailPrefsHandler;
.super Ljava/lang/Object;
.source "EmailPrefsHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;


# static fields
.field public static final HANDLE_TYPE_BASE:I = 0x0

.field public static final HANDLE_TYPE_MAX:I = 0xb

.field public static final NAP_USER_NAME:I = 0x9

.field public static final NAP_USER_PASSWD:I = 0xa

.field public static final RECV_HOST_NAME:I = 0x2

.field public static final RECV_HOST_PORT:I = 0x3

.field public static final RECV_PROTOCOL:I = 0x4

.field public static final RECV_USER_NAME:I = 0x0

.field public static final RECV_USER_PASSWD:I = 0x1

.field public static final SEND_HOST_NAME:I = 0x5

.field public static final SEND_HOST_PORT:I = 0x6

.field public static final SEND_REPLY_ADDR:I = 0x7

.field public static final TO_NAP:I = 0x8


# instance fields
.field private bindEmailServiceSuccess:Z

.field private mContext:Landroid/content/Context;

.field private mEmailConnection:Landroid/content/ServiceConnection;

.field private mEmailService:Lcom/asus/dm/IManageEMail;

.field private mHandleType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .parameter "handleType"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->bindEmailServiceSuccess:Z

    .line 304
    new-instance v0, Lcom/asus/dm/handler/EmailPrefsHandler$3;

    invoke-direct {v0, p0}, Lcom/asus/dm/handler/EmailPrefsHandler$3;-><init>(Lcom/asus/dm/handler/EmailPrefsHandler;)V

    iput-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailConnection:Landroid/content/ServiceConnection;

    .line 56
    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Non-Support handle type, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    if-nez p2, :cond_2

    .line 60
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "*** context is NULL ***"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iput p1, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    .line 63
    iput-object p2, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/asus/dm/handler/EmailPrefsHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->bindEmailServiceSuccess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/asus/dm/handler/EmailPrefsHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->bindEmailServiceSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/asus/dm/handler/EmailPrefsHandler;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/dm/handler/EmailPrefsHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/dm/handler/EmailPrefsHandler;)Lcom/asus/dm/IManageEMail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/dm/handler/EmailPrefsHandler;Lcom/asus/dm/IManageEMail;)Lcom/asus/dm/IManageEMail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    return-object p1
.end method

.method private createEmailService()V
    .locals 3

    .prologue
    .line 268
    new-instance v1, Lcom/asus/dm/handler/EmailPrefsHandler$1;

    invoke-direct {v1, p0}, Lcom/asus/dm/handler/EmailPrefsHandler$1;-><init>(Lcom/asus/dm/handler/EmailPrefsHandler;)V

    invoke-virtual {v1}, Lcom/asus/dm/handler/EmailPrefsHandler$1;->start()V

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    if-nez v1, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createEmailService(), connecting mEmailService !"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private destroyEmailService()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/asus/dm/handler/EmailPrefsHandler$2;

    invoke-direct {v0, p0}, Lcom/asus/dm/handler/EmailPrefsHandler$2;-><init>(Lcom/asus/dm/handler/EmailPrefsHandler;)V

    invoke-virtual {v0}, Lcom/asus/dm/handler/EmailPrefsHandler$2;->start()V

    .line 302
    return-void
.end method


# virtual methods
.method public read(I[B)I
    .locals 12
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    .local v5, readNum:I
    const/4 v1, 0x0

    .line 70
    .local v1, bytes:[B
    const/4 v3, 0x0

    .line 72
    .local v3, preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    if-gt v6, v11, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/asus/dm/handler/EmailPrefsHandler;->createEmailService()V

    .line 76
    :cond_0
    :try_start_0
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    packed-switch v6, :pswitch_data_0

    .line 131
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** Non-Support handle type, type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 154
    .local v2, ex:Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v2           #ex:Landroid/os/RemoteException;
    :goto_1
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    if-gt v6, v11, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/asus/dm/handler/EmailPrefsHandler;->destroyEmailService()V

    :cond_1
    move v6, v5

    .line 162
    :goto_2
    return v6

    .line 78
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvUserName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 79
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 134
    :cond_2
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** bytes is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_6

    const-string v7, "null"

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " *****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logI(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    if-nez v1, :cond_7

    .line 139
    const-string v6, "***** bytes is NULL *****"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v8

    .line 140
    goto :goto_2

    .line 82
    :pswitch_1
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 83
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_3

    .line 86
    :pswitch_2
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvHost()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_3

    .line 90
    :pswitch_3
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 91
    goto :goto_3

    .line 93
    :pswitch_4
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvProtocol()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 94
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getRecvProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_3

    .line 97
    :pswitch_5
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getSendHost()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 98
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getSendHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_3

    .line 101
    :pswitch_6
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getSendPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 102
    goto/16 :goto_3

    .line 104
    :pswitch_7
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getReplyAddr()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6}, Lcom/asus/dm/IManageEMail;->getReplyAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_3

    .line 110
    :pswitch_8
    new-instance v4, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .local v4, preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_2
    invoke-virtual {v4}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 112
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getApn()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v1, v10

    :goto_5
    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    move-object v1, v6

    goto :goto_5

    .line 116
    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :pswitch_9
    :try_start_3
    new-instance v4, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_4
    invoke-virtual {v4}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getUser()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v1, v10

    :goto_6
    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    move-object v1, v6

    goto :goto_6

    .line 122
    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :pswitch_a
    :try_start_5
    new-instance v4, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 123
    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_6
    invoke-virtual {v4}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 124
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v1, v10

    :goto_7
    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v6

    move-object v1, v6

    goto :goto_7

    .line 134
    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_6
    :try_start_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 155
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 156
    .local v2, ex:Ljava/io/IOException;
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    .end local v2           #ex:Ljava/io/IOException;
    :cond_7
    if-nez p2, :cond_8

    .line 144
    :try_start_8
    const-string v6, "***** data is NULL *****"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    array-length v6, v1

    goto/16 :goto_2

    .line 150
    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    array-length v6, p2

    invoke-virtual {v0, p2, p1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 155
    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :catch_2
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto :goto_8

    .line 153
    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :catch_3
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_0

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_9
    move-object v3, v4

    .end local v4           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_3

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public write(I[BI)V
    .locals 11
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    .line 167
    if-nez p2, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "***** data is NULL *****"

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v5, 0x0

    .line 174
    .local v5, success:Z
    const/4 v2, 0x0

    .line 176
    .local v2, preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    if-gt v6, v10, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/asus/dm/handler/EmailPrefsHandler;->createEmailService()V

    .line 181
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    array-length v6, p2

    invoke-virtual {v0, p2, p1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, strWrite:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***** strWrite="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " *****"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    packed-switch v6, :pswitch_data_0

    .line 245
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** Non-Support handle type, type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 247
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v4           #strWrite:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 248
    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const/4 v5, 0x0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v1           #ex:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    iget v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    if-gt v6, v10, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/asus/dm/handler/EmailPrefsHandler;->destroyEmailService()V

    .line 261
    :cond_3
    if-nez v5, :cond_0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***** Write to Email failed, type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " *****"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #strWrite:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setRecvUserName(Ljava/lang/String;)Z

    move-result v5

    .line 195
    goto :goto_2

    .line 197
    :pswitch_1
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setRecvPassword(Ljava/lang/String;)Z

    move-result v5

    .line 198
    goto :goto_2

    .line 200
    :pswitch_2
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setRecvHost(Ljava/lang/String;)Z

    move-result v5

    .line 201
    goto :goto_2

    .line 203
    :pswitch_3
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/asus/dm/IManageEMail;->setRecvPort(I)Z

    move-result v5

    .line 204
    goto :goto_2

    .line 206
    :pswitch_4
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setRecvProtocol(Ljava/lang/String;)Z

    move-result v5

    .line 207
    goto :goto_2

    .line 209
    :pswitch_5
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setSendHost(Ljava/lang/String;)Z

    move-result v5

    .line 210
    goto :goto_2

    .line 212
    :pswitch_6
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/asus/dm/IManageEMail;->setSendPort(I)Z

    move-result v5

    .line 213
    goto :goto_2

    .line 215
    :pswitch_7
    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mEmailService:Lcom/asus/dm/IManageEMail;

    invoke-interface {v6, v4}, Lcom/asus/dm/IManageEMail;->setReplyAddr(Ljava/lang/String;)Z

    move-result v5

    .line 216
    goto :goto_2

    .line 220
    :pswitch_8
    new-instance v3, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .local v3, preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_2
    invoke-virtual {v3}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 222
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/asus/dm/settings/MobileConnection;->setApn(Ljava/lang/String;)V

    .line 223
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->save()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 224
    const/4 v5, 0x1

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_2

    .line 228
    :pswitch_9
    :try_start_3
    new-instance v3, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 229
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_4
    invoke-virtual {v3}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 230
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/asus/dm/settings/MobileConnection;->setUser(Ljava/lang/String;)V

    .line 231
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->save()V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 232
    const/4 v5, 0x1

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_2

    .line 236
    :pswitch_a
    :try_start_5
    new-instance v3, Lcom/asus/dm/settings/MobileConnectionList;

    iget-object v6, p0, Lcom/asus/dm/handler/EmailPrefsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Z)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 237
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :try_start_6
    invoke-virtual {v3}, Lcom/asus/dm/settings/MobileConnectionList;->size()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 238
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/asus/dm/settings/MobileConnection;->setPassword(Ljava/lang/String;)V

    .line 239
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/asus/dm/settings/MobileConnectionList;->get(I)Lcom/asus/dm/settings/MobileConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/settings/MobileConnection;->save()V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 240
    const/4 v5, 0x1

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_2

    .line 250
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v4           #strWrite:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 251
    .local v1, ex:Ljava/io/IOException;
    :goto_3
    const/4 v5, 0x0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 254
    .local v1, ex:Landroid/os/RemoteException;
    :goto_4
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v4       #strWrite:Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto :goto_4

    .line 250
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :catch_4
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto :goto_3

    .line 247
    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :catch_5
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_1

    .end local v2           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v3       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    :cond_4
    move-object v2, v3

    .end local v3           #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    .restart local v2       #preferAPN:Lcom/asus/dm/settings/MobileConnectionList;
    goto/16 :goto_2

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method
