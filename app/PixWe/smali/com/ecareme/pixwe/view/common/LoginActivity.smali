.class public Lcom/ecareme/pixwe/view/common/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;,
        Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;,
        Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private final accountFreezeDialog:I

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private final bindAWSHandlerCode:I

.field private final goHomeProcess:I

.field private handler:Landroid/os/Handler;

.field private final loginFailDialog:I

.field private final loginHandlerCode:I

.field private loginTask:Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private final progressCancelHandlerCode:I

.field private final progressHandlerCode:I

.field private final serverConnectionFailDialog:I

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;

.field private usBind:Z

.field private usConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 48
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usBind:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->handler:Landroid/os/Handler;

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->progressHandlerCode:I

    .line 56
    const/16 v0, 0x14

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->loginHandlerCode:I

    .line 57
    const/16 v0, 0x28

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->bindAWSHandlerCode:I

    .line 58
    const/16 v0, 0x32

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->progressCancelHandlerCode:I

    .line 59
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->serverConnectionFailDialog:I

    .line 60
    const/16 v0, 0x46

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->accountFreezeDialog:I

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->goHomeProcess:I

    .line 62
    const/16 v0, 0x5a

    iput v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->loginFailDialog:I

    .line 321
    new-instance v0, Lcom/ecareme/pixwe/view/common/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usConnection:Landroid/content/ServiceConnection;

    .line 39
    return-void
.end method

.method private CheckUploadServiceExit()Z
    .locals 7

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/view/common/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 308
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 310
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 318
    :cond_1
    :goto_0
    return v2

    .line 310
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 311
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ecareme.pixwe.service.UploadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 312
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 313
    const/4 v2, 0x1

    .line 315
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/common/LoginActivity;)Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->loginTask:Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->loginTask:Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->CheckUploadServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/common/LoginActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usBind:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/common/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usBind:Z

    return v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/common/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$4;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->handler:Landroid/os/Handler;

    .line 263
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "PixWePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/view/common/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 70
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 71
    sput-object p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .line 74
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->setTitle(I)V

    .line 77
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->initHandler()V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usBind:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->usConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->finish()V

    .line 127
    :pswitch_1
    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->finish()V

    goto :goto_0

    .line 122
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
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 114
    const-string v0, "LoginActivity"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 116
    return-void
.end method
