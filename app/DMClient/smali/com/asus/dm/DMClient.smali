.class public Lcom/asus/dm/DMClient;
.super Landroid/app/Activity;
.source "DMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/DMClient$DMServStateCallBack;,
        Lcom/asus/dm/DMClient$ButtonListener;,
        Lcom/asus/dm/DMClient$DMClientState;
    }
.end annotation


# static fields
.field public static final MENU_USE_ASUS_DEV_TREE:I = 0x2

.field public static final MENU_USE_DEF_TREE:I = 0x0

.field public static final MENU_USE_DEV_TREE:I = 0x1

.field public static final MENU_USE_MFORM_TREE:I = 0x3

.field public static final MENU_USE_TELUS_TREE:I = 0x7

.field public static final MENU_USE_TMO_DEV_TREE:I = 0x4

.field public static final MENU_USE_TMO_LAB_TREE:I = 0x6

.field public static final MENU_USE_TMO_TREE:I = 0x5

.field private static final MSG_DISABLE_BUTTON:I = 0x2

.field private static final MSG_ENABLE_BUTTON:I = 0x1

.field private static final MSG_STATUS_UPDATE:I = 0x3

.field private static final MSG_STATUS_UPDATE_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DMClient"

.field static final USE_TMO_HANDLER:I = 0x3


# instance fields
.field private mC2DMRegBut:Landroid/widget/Button;

.field private mC2DMUnregBut:Landroid/widget/Button;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDMButton:Landroid/widget/Button;

.field private mDMCancel:Landroid/widget/Button;

.field mDMSessionRunning:Z

.field private mDMStateCb:Lcom/asus/dm/DMClient$DMServStateCallBack;

.field mHandler:Landroid/os/Handler;

.field private mPollingTV:Landroid/widget/TextView;

.field private mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field private mSNRConnection:Landroid/content/ServiceConnection;

.field private mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

.field private mService:Lcom/asus/dm/IDMService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/asus/dm/DMClient;->mService:Lcom/asus/dm/IDMService;

    .line 38
    iput-object v0, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dm/DMClient;->mDMSessionRunning:Z

    .line 228
    new-instance v0, Lcom/asus/dm/DMClient$1;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMClient$1;-><init>(Lcom/asus/dm/DMClient;)V

    iput-object v0, p0, Lcom/asus/dm/DMClient;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/asus/dm/DMClient$2;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMClient$2;-><init>(Lcom/asus/dm/DMClient;)V

    iput-object v0, p0, Lcom/asus/dm/DMClient;->mConnection:Landroid/content/ServiceConnection;

    .line 440
    new-instance v0, Lcom/asus/dm/DMClient$3;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMClient$3;-><init>(Lcom/asus/dm/DMClient;)V

    iput-object v0, p0, Lcom/asus/dm/DMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/dm/DMClient;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/dm/DMClient;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/DMClient;->updateSessionStatusMessage(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/dm/DMClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/asus/dm/DMClient;->updateSessionStatusMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IDMService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mService:Lcom/asus/dm/IDMService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/dm/DMClient;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/asus/dm/DMClient;->mService:Lcom/asus/dm/IDMService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/asus/dm/DMClient;)Lcom/asus/dm/DMCRegistryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IStatusNotifyRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    return-object v0
.end method

.method static synthetic access$502(Lcom/asus/dm/DMClient;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    return-object p1
.end method

.method static synthetic access$600(Lcom/asus/dm/DMClient;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->registerC2DM()V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->unregisterC2DM()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/dm/DMClient;)Lcom/asus/dm/DMClient$DMServStateCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dm/DMClient;->mDMStateCb:Lcom/asus/dm/DMClient$DMServStateCallBack;

    return-object v0
.end method

.method private initService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    const-string v0, "bind IDMService"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/IDMService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/dm/DMClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/dm/DMClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v0, "bind IStatusNotifyRegister"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/IStatusNotifyRegister;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/dm/DMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/dm/DMClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lcom/asus/dm/DMClient$ButtonListener;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMClient$ButtonListener;-><init>(Lcom/asus/dm/DMClient;)V

    .line 254
    .local v0, butListener:Lcom/asus/dm/DMClient$ButtonListener;
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->setContentView(I)V

    .line 256
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    .line 257
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    const-string v2, "start DM Session"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    .line 262
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    const-string v2, "cancel DM Session"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMRegBut:Landroid/widget/Button;

    .line 267
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMRegBut:Landroid/widget/Button;

    const-string v2, "register C2DM"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMRegBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMUnregBut:Landroid/widget/Button;

    .line 271
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMUnregBut:Landroid/widget/Button;

    const-string v2, "unregister C2DM"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mC2DMUnregBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/asus/dm/DMClient;->mPollingTV:Landroid/widget/TextView;

    .line 278
    return-void
.end method

.method private reflashPollingTime()V
    .locals 7

    .prologue
    .line 471
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getLastFotaPollingTime()J

    move-result-wide v0

    .line 472
    .local v0, lastTime:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Last Polling Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v3, "Next Polling Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 478
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :goto_0
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mPollingTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    return-void

    .line 480
    :cond_0
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private registerC2DM()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "DMClient"

    const-string v1, "===== registerC2DM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v0, "mdm.admasus@gmail.com"

    invoke-static {p0, v0}, Lcom/asus/dm/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private unregisterC2DM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    const-string v1, "DMClient"

    const-string v2, "===== unregisterC2DM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, unregIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 438
    return-void
.end method

.method private updateSessionStatusMessage(II)V
    .locals 5
    .parameter "type"
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v0, str:Ljava/lang/StringBuffer;
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 361
    const-string v2, "DM Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    :cond_0
    :goto_0
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_4

    .line 367
    const-string v2, "Started"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 369
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    iput-boolean v4, p0, Lcom/asus/dm/DMClient;->mDMSessionRunning:Z

    .line 371
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->reflashPollingTime()V

    .line 384
    :cond_1
    :goto_1
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    .local v1, tv:Landroid/widget/TextView;
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 386
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    return-void

    .line 362
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_3
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 363
    const-string v2, "DL Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 372
    :cond_4
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 373
    const-string v2, "Completed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iput-boolean v3, p0, Lcom/asus/dm/DMClient;->mDMSessionRunning:Z

    goto :goto_1

    .line 377
    :cond_5
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 378
    const-string v2, "Aborted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    iput-boolean v3, p0, Lcom/asus/dm/DMClient;->mDMSessionRunning:Z

    goto/16 :goto_1
.end method

.method private updateSessionStatusMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 353
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    .local v0, tv:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 413
    iget-boolean v1, p0, Lcom/asus/dm/DMClient;->mDMSessionRunning:Z

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 425
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 417
    :pswitch_0
    const-string v1, "KEYCODE_BACK down"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    .local v0, tv:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPlease wait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v1, 0x1

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onCreate()========================"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 81
    new-instance v0, Lcom/asus/dm/DMClient$DMServStateCallBack;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMClient$DMServStateCallBack;-><init>(Lcom/asus/dm/DMClient;)V

    iput-object v0, p0, Lcom/asus/dm/DMClient;->mDMStateCb:Lcom/asus/dm/DMClient$DMServStateCallBack;

    .line 83
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->initService()V

    .line 84
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->initUI()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate end....."

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "========================onDestroy()========================="

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMStateCb:Lcom/asus/dm/DMClient$DMServStateCallBack;

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->unbindService(Landroid/content/ServiceConnection;)V

    .line 129
    iget-object v1, p0, Lcom/asus/dm/DMClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMClient;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/asus/dm/DMClient;->setIntent(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "pItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    const-string v3, "onOptionsItemSelected in"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const-string v3, "Please wait the end of DM Session"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v3, v5

    .line 225
    :goto_0
    return v3

    .line 167
    :cond_0
    const-string v3, "switch"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 170
    .local v1, tree_kind:I
    packed-switch v1, :pswitch_data_0

    move v3, v5

    .line 196
    goto :goto_0

    .line 172
    :pswitch_0
    const v2, 0x7f050004

    .line 198
    .local v2, tree_res:I
    :goto_1
    const-string v3, "mRegMgr.getCurrentTree() != tree_kind"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 201
    :try_start_0
    const-string v3, "mSNRService.destoryEngine();"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    invoke-interface {v3}, Lcom/asus/dm/IStatusNotifyRegister;->destoryEngine()V

    .line 203
    const-string v3, "DMUtils.createDMTreeFile(this, tree_res);"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {p0, v2}, Lcom/asus/dm/util/DMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 205
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3, v1}, Lcom/asus/dm/DMCRegistryManager;->setCurrentTree(I)V

    .line 206
    const-string v3, "Tree has been update, please reboot!"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setDLResume(Z)V

    .line 210
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 211
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 212
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v4, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 213
    iget-object v3, p0, Lcom/asus/dm/DMClient;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setHasUpdateFile(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/asus/dm/DMClient;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move v3, v5

    .line 225
    goto :goto_0

    .line 175
    .end local v2           #tree_res:I
    :pswitch_1
    const v2, 0x7f050003

    .line 176
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 178
    .end local v2           #tree_res:I
    :pswitch_2
    const v2, 0x7f050001

    .line 179
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 181
    .end local v2           #tree_res:I
    :pswitch_3
    const v2, 0x7f050002

    .line 182
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 184
    .end local v2           #tree_res:I
    :pswitch_4
    const v2, 0x7f050009

    .line 185
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 187
    .end local v2           #tree_res:I
    :pswitch_5
    const v2, 0x7f050008

    .line 188
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 190
    .end local v2           #tree_res:I
    :pswitch_6
    const v2, 0x7f05000a

    .line 191
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 193
    .end local v2           #tree_res:I
    :pswitch_7
    const v2, 0x7f050007

    .line 194
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 215
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 216
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Tree Update Fail!"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 218
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 222
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Don\'t Need Update."

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onPause()========================"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "pMenu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v2, p0, Lcom/asus/dm/DMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string v2, "Please wait the end of DM Session"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 156
    :goto_0
    return v2

    .line 144
    :cond_0
    const-string v2, "onPrepareOptionsMenu in"

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, idx:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    const-string v2, "Default Tree"

    invoke-interface {p1, v4, v4, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 148
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v2, "DEV Tree"

    invoke-interface {p1, v4, v5, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 149
    const/4 v2, 0x2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .restart local v1       #idx:I
    const-string v3, "Asus DEV Tree"

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    const/4 v2, 0x3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v3, "TMO Mform Tree"

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    const/4 v2, 0x5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .restart local v1       #idx:I
    const-string v3, "TMO Tree"

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 153
    const/4 v2, 0x6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v3, "TMO Lab Tree"

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const-string v2, "onPrepareOptionsMenu out"

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v5

    .line 156
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onResume========================"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/asus/dm/DMClient;->reflashPollingTime()V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onStart()========================"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onStop()========================"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
