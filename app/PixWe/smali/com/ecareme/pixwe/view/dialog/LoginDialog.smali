.class public Lcom/ecareme/pixwe/view/dialog/LoginDialog;
.super Landroid/app/Dialog;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/dialog/LoginDialog$BindUploadServiceTask;,
        Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;,
        Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;,
        Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginDialog"

.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;

.field private loginTask:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;

.field private ulConnection:Landroid/content/ServiceConnection;

.field private usBind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUID:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUPW:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 57
    iput-boolean v1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->usBind:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->handler:Landroid/os/Handler;

    .line 328
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$1;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ulConnection:Landroid/content/ServiceConnection;

    .line 70
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->setCancelable(Z)V

    .line 71
    iput-object p3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->listener:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->requestWindowFeature(I)Z

    .line 73
    sput-object p1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private CheckUploadServiceExit()Z
    .locals 7

    .prologue
    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, mReturn:Z
    sget-object v4, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 315
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 325
    :cond_1
    :goto_0
    return v2

    .line 317
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 318
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ecareme.pixwe.service.UploadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 319
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 320
    const/4 v2, 0x1

    .line 322
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->loginTask:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->loginTask:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->CheckUploadServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ulConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->usBind:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->usBind:Z

    return v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->listener:Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->handler:Landroid/os/Handler;

    .line 271
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->setContentView(I)V

    .line 82
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    const-string v1, "PixWePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 83
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 86
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUID:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->tvUPW:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$3;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->initHandler()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 122
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 117
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    :pswitch_1
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 120
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
