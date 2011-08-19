.class public Lnet/yostore/aws/view/common/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;,
        Lnet/yostore/aws/view/common/LoginActivity$BindPLServiceTask;,
        Lnet/yostore/aws/view/common/LoginActivity$LoginTask;,
        Lnet/yostore/aws/view/common/LoginActivity$OKListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private final accountFreezeDialog:I

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private final bindMPHandlerCode:I

.field private final bindPLHandlerCode:I

.field private final goHomeProcess:I

.field private handler:Landroid/os/Handler;

.field private final loginFailDialog:I

.field private final loginHandlerCode:I

.field private loginTask:Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private mpBind:Z

.field private mpConnection:Landroid/content/ServiceConnection;

.field private plBind:Z

.field private plConnection:Landroid/content/ServiceConnection;

.field private final progressCancelHandlerCode:I

.field private final progressHandlerCode:I

.field private final serverConnectionFailDialog:I

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mpBind:Z

    .line 58
    iput-boolean v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plBind:Z

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->progressHandlerCode:I

    .line 61
    const/16 v0, 0x14

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginHandlerCode:I

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->bindMPHandlerCode:I

    .line 63
    const/16 v0, 0x28

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->bindPLHandlerCode:I

    .line 64
    const/16 v0, 0x32

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->progressCancelHandlerCode:I

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->serverConnectionFailDialog:I

    .line 66
    const/16 v0, 0x46

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->accountFreezeDialog:I

    .line 67
    const/16 v0, 0x50

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->goHomeProcess:I

    .line 68
    const/16 v0, 0x5a

    iput v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginFailDialog:I

    .line 89
    iput-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 90
    iput-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 92
    iput-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 524
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/LoginActivity$1;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mpConnection:Landroid/content/ServiceConnection;

    .line 593
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/LoginActivity$2;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plConnection:Landroid/content/ServiceConnection;

    .line 50
    return-void
.end method

.method private CheckMPServiceExit()Z
    .locals 7

    .prologue
    .line 508
    const/4 v2, 0x0

    .line 509
    .local v2, mReturn:Z
    sget-object v4, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 511
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 513
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 521
    :cond_1
    :goto_0
    return v2

    .line 513
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 514
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 515
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 516
    const/4 v2, 0x1

    .line 518
    goto :goto_0
.end method

.method private CheckPLServiceExit()Z
    .locals 7

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 580
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 582
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 590
    :cond_1
    :goto_0
    return v2

    .line 582
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 583
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayListService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 584
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 585
    const/4 v2, 0x1

    .line 587
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/common/LoginActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lnet/yostore/aws/view/common/LoginActivity;->plBind:Z

    return-void
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plBind:Z

    return v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/common/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/common/LoginActivity;)Lnet/yostore/aws/view/common/LoginActivity$LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginTask:Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

    return-object v0
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginTask:Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Lnet/yostore/aws/view/common/LoginActivity;->CheckMPServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mpConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/common/LoginActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lnet/yostore/aws/view/common/LoginActivity;->mpBind:Z

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mpBind:Z

    return v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 576
    invoke-direct {p0}, Lnet/yostore/aws/view/common/LoginActivity;->CheckPLServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$5;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/LoginActivity$5;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->handler:Landroid/os/Handler;

    .line 254
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/common/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 99
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 100
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 101
    sput-object p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lnet/yostore/aws/view/common/LoginActivity;->initHandler()V

    .line 105
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->setTitle(I)V

    .line 108
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 110
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/common/LoginActivity$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/common/LoginActivity$OKListener;-><init>(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/common/LoginActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/LoginActivity$3;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/common/LoginActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/LoginActivity$4;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plBind:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->plConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 262
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->exitAp(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/LoginActivity;->finish()V

    .line 265
    :pswitch_1
    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->exitAp(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/LoginActivity;->finish()V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    const-string v0, "LoginActivity"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 85
    return-void
.end method
