.class public Lnet/yostore/aws/view/common/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;,
        Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;,
        Lnet/yostore/aws/view/common/SplashActivity$BindPLServiceTask;,
        Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final accountFreezeDialog:I

.field private final bindMPHandlerCode:I

.field private final bindPLHandlerCode:I

.field private ctx:Landroid/content/Context;

.field private final goHomeProcess:I

.field private handler:Landroid/os/Handler;

.field private final loginFailDialog:I

.field private final loginHandlerCode:I

.field private loginTime:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private mpBind:Z

.field private mpConnection:Landroid/content/ServiceConnection;

.field private offlineMode:Z

.field private plBind:Z

.field private plConnection:Landroid/content/ServiceConnection;

.field private final serverConnectionFailDialog:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 54
    iput-boolean v1, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpBind:Z

    .line 55
    iput-boolean v1, p0, Lnet/yostore/aws/view/common/SplashActivity;->plBind:Z

    .line 57
    iput v1, p0, Lnet/yostore/aws/view/common/SplashActivity;->loginTime:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->loginHandlerCode:I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->bindMPHandlerCode:I

    .line 61
    const/16 v0, 0x28

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->bindPLHandlerCode:I

    .line 63
    const/16 v0, 0x3c

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->serverConnectionFailDialog:I

    .line 64
    const/16 v0, 0x46

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->accountFreezeDialog:I

    .line 65
    const/16 v0, 0x50

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->goHomeProcess:I

    .line 66
    const/16 v0, 0x5a

    iput v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->loginFailDialog:I

    .line 67
    const-string v0, "SplashActivity"

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->offlineMode:Z

    .line 412
    new-instance v0, Lnet/yostore/aws/view/common/SplashActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/SplashActivity$1;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpConnection:Landroid/content/ServiceConnection;

    .line 494
    new-instance v0, Lnet/yostore/aws/view/common/SplashActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/SplashActivity$2;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->plConnection:Landroid/content/ServiceConnection;

    .line 48
    return-void
.end method

.method private CheckMPServiceExit()Z
    .locals 7

    .prologue
    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, mReturn:Z
    iget-object v4, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 399
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 401
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    :cond_1
    :goto_0
    return v2

    .line 401
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 402
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 403
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 404
    const/4 v2, 0x1

    .line 406
    goto :goto_0
.end method

.method private CheckPLServiceExit()Z
    .locals 7

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 481
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 483
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 491
    :cond_1
    :goto_0
    return v2

    .line 483
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 484
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayListService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 485
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 486
    const/4 v2, 0x1

    .line 488
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/common/SplashActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lnet/yostore/aws/view/common/SplashActivity;->plBind:Z

    return-void
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/common/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->plBind:Z

    return v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lnet/yostore/aws/view/common/SplashActivity;->offlineMode:Z

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/common/SplashActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/common/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->offlineMode:Z

    return v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 395
    invoke-direct {p0}, Lnet/yostore/aws/view/common/SplashActivity;->CheckMPServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/SplashActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpBind:Z

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/common/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpBind:Z

    return v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/common/SplashActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/common/SplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Lnet/yostore/aws/view/common/SplashActivity;->CheckPLServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->plConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lnet/yostore/aws/view/common/SplashActivity$5;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/SplashActivity$5;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->handler:Landroid/os/Handler;

    .line 271
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 321
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    if-ne p1, v3, :cond_0

    .line 324
    :try_start_0
    const-string v2, "AccountInfo"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 325
    .local v0, accinfo:[B
    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 330
    new-instance v2, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;

    invoke-direct {v2, p0, v0}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;[B)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    .end local v0           #accinfo:[B
    :cond_0
    :goto_0
    return-void

    .line 332
    .restart local v0       #accinfo:[B
    :cond_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SplashActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0           #accinfo:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 336
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->setContentView(I)V

    .line 74
    const-string v1, "MearPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/yostore/aws/view/common/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 76
    iput-object p0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 79
    new-instance v1, Lnet/yostore/aws/view/common/SplashActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/SplashActivity$3;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    .line 90
    invoke-virtual {v1}, Lnet/yostore/aws/view/common/SplashActivity$3;->start()V

    .line 92
    invoke-direct {p0}, Lnet/yostore/aws/view/common/SplashActivity;->initHandler()V

    .line 94
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AccountInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    .local v0, accinfo:[B
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;

    invoke-direct {v1, p0, v0}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;[B)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v1, Lnet/yostore/aws/view/common/SplashActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/SplashActivity$4;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    .line 130
    invoke-virtual {v1}, Lnet/yostore/aws/view/common/SplashActivity$4;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 299
    :cond_0
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpBind:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->mpConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SplashActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    :cond_1
    iget-boolean v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->plBind:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->plConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SplashActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 305
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->exitAp(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 282
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->exitAp(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    return-void
.end method

.method public parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter "apicfgStr"

    .prologue
    .line 702
    invoke-static {p1}, Lnet/yostore/aws/api/ApiConfig;->getFromString(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    .line 705
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    return-object v0
.end method
