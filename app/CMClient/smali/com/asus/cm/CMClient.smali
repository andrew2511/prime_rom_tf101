.class public Lcom/asus/cm/CMClient;
.super Landroid/app/Activity;
.source "CMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/CMClient$DMServStateCallBack;,
        Lcom/asus/cm/CMClient$ButtonListener;,
        Lcom/asus/cm/CMClient$DMClientState;
    }
.end annotation


# static fields
.field private static final ACCINFO:Ljava/lang/String; = "AccountInfo"

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

.field private static final TAG:Ljava/lang/String; = "CMClient"

.field static final USE_TMO_HANDLER:I = 0x3

.field private static final WEBSTORAGE_ID:Ljava/lang/String; = "com.asus.webstorage.id"

.field private static final mAccHexString:Ljava/lang/String; = "62A0A056EDEBA770E6E2BBB9DDD699B25BD5B1701B875BEB018FFE5FC4CD9D8C3A71E66E571C4DFD5AF4F1F339A7024F086E856E7E78FE37FF5BEC5F43E82CDED95F8DD40C1B2AB0909862FB5FEA97805037376A41F85F347E5A2396ED669F044B49C833CCBD0C7576CCC8F47C2BAB6EBD8D9A008DFB106B98014EC6958528AB570AEECF63C853A87380F4EBC18D46E20CD40B5B2FF3970BE54B22712F2E17CBD3DD9E1957585CA74039A8E5CFEC7DD03111F1AA6D85856300E1DF9C6C6DC454D3E20CF91E497B1C1480335552A0179537DFD33BC43488D463FEE5BECBC6CE704465F42A14F56334E0EF4BAD53EE59856BD2296A32D07919C9B011FC19A072A5ACCDD729D295CF09BFC9F5F706A1F612"


# instance fields
.field private mC2DMRegBut:Landroid/widget/Button;

.field private mC2DMUnregBut:Landroid/widget/Button;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDMButton:Landroid/widget/Button;

.field private mDMCancel:Landroid/widget/Button;

.field mDMSessionRunning:Z

.field private mDMStateCb:Lcom/asus/cm/CMClient$DMServStateCallBack;

.field private mEnableOrgLCBut:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field private mLockScreenBut:Landroid/widget/Button;

.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field private mReportLocaButton:Landroid/widget/Button;

.field private mSNRConnection:Landroid/content/ServiceConnection;

.field private mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

.field private mSendAccountBtn:Landroid/widget/Button;

.field private mService:Lcom/asus/cm/IDMService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/asus/cm/CMClient;->mService:Lcom/asus/cm/IDMService;

    .line 42
    iput-object v0, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/cm/CMClient;->mDMSessionRunning:Z

    .line 230
    new-instance v0, Lcom/asus/cm/CMClient$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMClient$1;-><init>(Lcom/asus/cm/CMClient;)V

    iput-object v0, p0, Lcom/asus/cm/CMClient;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Lcom/asus/cm/CMClient$2;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMClient$2;-><init>(Lcom/asus/cm/CMClient;)V

    iput-object v0, p0, Lcom/asus/cm/CMClient;->mConnection:Landroid/content/ServiceConnection;

    .line 473
    new-instance v0, Lcom/asus/cm/CMClient$3;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMClient$3;-><init>(Lcom/asus/cm/CMClient;)V

    iput-object v0, p0, Lcom/asus/cm/CMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/cm/CMClient;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/cm/CMClient;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/CMClient;->updateSessionStatusMessage(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/asus/cm/CMClient;)Lcom/asus/cm/CMClient$DMServStateCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mDMStateCb:Lcom/asus/cm/CMClient$DMServStateCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/cm/CMClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/asus/cm/CMClient;->updateSessionStatusMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mService:Lcom/asus/cm/IDMService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/cm/CMClient;Lcom/asus/cm/IDMService;)Lcom/asus/cm/IDMService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/asus/cm/CMClient;->mService:Lcom/asus/cm/IDMService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/asus/cm/CMClient;)Lcom/asus/cm/CMCRegistryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IStatusNotifyRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    return-object v0
.end method

.method static synthetic access$502(Lcom/asus/cm/CMClient;Lcom/asus/cm/IStatusNotifyRegister;)Lcom/asus/cm/IStatusNotifyRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    return-object p1
.end method

.method static synthetic access$600(Lcom/asus/cm/CMClient;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/asus/cm/CMClient;->registerC2DM()V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/asus/cm/CMClient;->unregisterC2DM()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/asus/cm/CMClient;->sendAccountInfoBroadcast()V

    return-void
.end method

.method private initService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    const-string v0, "bind IDMService"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/cm/IDMService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/cm/CMClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/cm/CMClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v0, "bind IStatusNotifyRegister"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/cm/IStatusNotifyRegister;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/cm/CMClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Lcom/asus/cm/CMClient$ButtonListener;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMClient$ButtonListener;-><init>(Lcom/asus/cm/CMClient;)V

    .line 256
    .local v0, butListener:Lcom/asus/cm/CMClient$ButtonListener;
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->setContentView(I)V

    .line 258
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    .line 259
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    const-string v2, "start DM Session"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    .line 264
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    const-string v2, "cancel DM Session"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mC2DMRegBut:Landroid/widget/Button;

    .line 269
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mC2DMRegBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mC2DMUnregBut:Landroid/widget/Button;

    .line 272
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mC2DMUnregBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f0b0036

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mLockScreenBut:Landroid/widget/Button;

    .line 275
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mLockScreenBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mEnableOrgLCBut:Landroid/widget/Button;

    .line 278
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mEnableOrgLCBut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mReportLocaButton:Landroid/widget/Button;

    .line 281
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mReportLocaButton:Landroid/widget/Button;

    const-string v2, "Report Location"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mReportLocaButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/cm/CMClient;->mSendAccountBtn:Landroid/widget/Button;

    .line 286
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSendAccountBtn:Landroid/widget/Button;

    const-string v2, "send Account Info"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSendAccountBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/asus/cm/CMClient;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 289
    return-void
.end method

.method private registerC2DM()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "CMClient"

    const-string v1, "===== registerC2DM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "mdm.admasus@gmail.com"

    invoke-static {p0, v0}, Lcom/asus/cm/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private sendAccountInfoBroadcast()V
    .locals 3

    .prologue
    .line 504
    const-string v1, "CMClient"

    const-string v2, "sendAccountInfoBroadcast()"

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.webstorage.id"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "AccountInfo"

    const-string v2, "62A0A056EDEBA770E6E2BBB9DDD699B25BD5B1701B875BEB018FFE5FC4CD9D8C3A71E66E571C4DFD5AF4F1F339A7024F086E856E7E78FE37FF5BEC5F43E82CDED95F8DD40C1B2AB0909862FB5FEA97805037376A41F85F347E5A2396ED669F044B49C833CCBD0C7576CCC8F47C2BAB6EBD8D9A008DFB106B98014EC6958528AB570AEECF63C853A87380F4EBC18D46E20CD40B5B2FF3970BE54B22712F2E17CBD3DD9E1957585CA74039A8E5CFEC7DD03111F1AA6D85856300E1DF9C6C6DC454D3E20CF91E497B1C1480335552A0179537DFD33BC43488D463FEE5BECBC6CE704465F42A14F56334E0EF4BAD53EE59856BD2296A32D07919C9B011FC19A072A5ACCDD729D295CF09BFC9F5F706A1F612"

    invoke-static {v2}, Lcom/asus/dmlib/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMClient;->sendBroadcast(Landroid/content/Intent;)V

    .line 508
    return-void
.end method

.method private unregisterC2DM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    const-string v1, "CMClient"

    const-string v2, "===== unregisterC2DM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, unregIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 471
    return-void
.end method

.method private updateSessionStatusMessage(II)V
    .locals 6
    .parameter "type"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 394
    .local v0, str:Ljava/lang/String;
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 395
    const-string v0, "DM Session "

    .line 400
    :cond_0
    :goto_0
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_4

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iput-boolean v5, p0, Lcom/asus/cm/CMClient;->mDMSessionRunning:Z

    .line 417
    :cond_1
    :goto_1
    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 418
    .local v1, tv:Landroid/widget/TextView;
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 419
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
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

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void

    .line 396
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_3
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 397
    const-string v0, "DL Session "

    goto :goto_0

    .line 405
    :cond_4
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    iput-boolean v4, p0, Lcom/asus/cm/CMClient;->mDMSessionRunning:Z

    goto :goto_1

    .line 410
    :cond_5
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Aborted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMCancel:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iput-boolean v4, p0, Lcom/asus/cm/CMClient;->mDMSessionRunning:Z

    goto/16 :goto_1
.end method

.method private updateSessionStatusMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 387
    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 388
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

    .line 389
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 446
    iget-boolean v1, p0, Lcom/asus/cm/CMClient;->mDMSessionRunning:Z

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 458
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 450
    :pswitch_0
    const-string v1, "KEYCODE_BACK down"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
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

    .line 453
    const/4 v1, 0x1

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onCreate()========================"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 85
    new-instance v0, Lcom/asus/cm/CMClient$DMServStateCallBack;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMClient$DMServStateCallBack;-><init>(Lcom/asus/cm/CMClient;)V

    iput-object v0, p0, Lcom/asus/cm/CMClient;->mDMStateCb:Lcom/asus/cm/CMClient$DMServStateCallBack;

    .line 87
    invoke-direct {p0}, Lcom/asus/cm/CMClient;->initService()V

    .line 88
    invoke-direct {p0}, Lcom/asus/cm/CMClient;->initUI()V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate end....."

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "========================onDestroy()========================="

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMStateCb:Lcom/asus/cm/CMClient$DMServStateCallBack;

    invoke-interface {v1, v2}, Lcom/asus/cm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    iget-object v1, p0, Lcom/asus/cm/CMClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMClient;->unbindService(Landroid/content/ServiceConnection;)V

    .line 133
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/asus/cm/CMClient;->setIntent(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "pItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    const-string v3, "onOptionsItemSelected in"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const-string v3, "Please wait the end of DM Session"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v3, v5

    .line 227
    :goto_0
    return v3

    .line 169
    :cond_0
    const-string v3, "switch"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 172
    .local v1, tree_kind:I
    packed-switch v1, :pswitch_data_0

    move v3, v5

    .line 198
    goto :goto_0

    .line 174
    :pswitch_0
    const v2, 0x7f050004

    .line 200
    .local v2, tree_res:I
    :goto_1
    const-string v3, "mRegMgr.getCurrentTree() != tree_kind"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 203
    :try_start_0
    const-string v3, "mSNRService.destoryEngine();"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mSNRService:Lcom/asus/cm/IStatusNotifyRegister;

    invoke-interface {v3}, Lcom/asus/cm/IStatusNotifyRegister;->destoryEngine()V

    .line 205
    const-string v3, "DMUtils.createDMTreeFile(this, tree_res);"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, v2}, Lcom/asus/cm/util/CMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 207
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3, v1}, Lcom/asus/cm/CMCRegistryManager;->setCurrentTree(I)V

    .line 208
    const-string v3, "Tree has been update, please reboot!"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setDLResume(Z)V

    .line 212
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 213
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 214
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v4, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 215
    iget-object v3, p0, Lcom/asus/cm/CMClient;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setHasUpdateFile(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/asus/cm/CMClient;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move v3, v5

    .line 227
    goto :goto_0

    .line 177
    .end local v2           #tree_res:I
    :pswitch_1
    const v2, 0x7f050003

    .line 178
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 180
    .end local v2           #tree_res:I
    :pswitch_2
    const v2, 0x7f050001

    .line 181
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 183
    .end local v2           #tree_res:I
    :pswitch_3
    const v2, 0x7f050002

    .line 184
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 186
    .end local v2           #tree_res:I
    :pswitch_4
    const v2, 0x7f050009

    .line 187
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 189
    .end local v2           #tree_res:I
    :pswitch_5
    const v2, 0x7f050008

    .line 190
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 192
    .end local v2           #tree_res:I
    :pswitch_6
    const v2, 0x7f05000a

    .line 193
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 195
    .end local v2           #tree_res:I
    :pswitch_7
    const v2, 0x7f050007

    .line 196
    .restart local v2       #tree_res:I
    goto :goto_1

    .line 217
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 218
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Tree Update Fail!"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 219
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Don\'t Need Update."

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 172
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
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onPause()========================"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "pMenu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v2, p0, Lcom/asus/cm/CMClient;->mDMButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "Please wait the end of DM Session"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 158
    :goto_0
    return v2

    .line 146
    :cond_0
    const-string v2, "onPrepareOptionsMenu in"

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, idx:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    const-string v2, "Default Tree"

    invoke-interface {p1, v4, v4, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v2, "DEV Tree"

    invoke-interface {p1, v4, v5, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 151
    const/4 v2, 0x2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .restart local v1       #idx:I
    const-string v3, "Asus DEV Tree"

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    const/4 v2, 0x3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v3, "TMO Mform Tree"

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 154
    const/4 v2, 0x5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .restart local v1       #idx:I
    const-string v3, "TMO Tree"

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v2, 0x6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    const-string v3, "TMO Lab Tree"

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 157
    const-string v2, "onPrepareOptionsMenu out"

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v5

    .line 158
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onResume========================"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onStart()========================"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "========================onStop()========================"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
