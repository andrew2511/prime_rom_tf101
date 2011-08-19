.class public Lcom/ecareme/pixwe/view/dialog/RegisterDialog;
.super Landroid/app/Dialog;
.source "RegisterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/dialog/RegisterDialog$BindAWSServiceTask;,
        Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;,
        Lcom/ecareme/pixwe/view/dialog/RegisterDialog$OKListener;,
        Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;,
        Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginDialog"

.field static ctx:Landroid/content/Context;

.field private static final lans:[Ljava/lang/String;

.field private static final lansPre:[Ljava/lang/String;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

.field private loginTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private pwd:Ljava/lang/String;

.field private registerTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;

.field private tvUEMAIL:Landroid/widget/EditText;

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;

.field private tvUPWconfirm:Landroid/widget/EditText;

.field private uid:Ljava/lang/String;

.field private ulConnection:Landroid/content/ServiceConnection;

.field private usBind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    .line 74
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    const-string v1, "en_"

    aput-object v1, v0, v3

    const-string v1, "zh_TW"

    aput-object v1, v0, v4

    const-string v1, "zh_CN"

    aput-object v1, v0, v5

    const-string v1, "de_"

    aput-object v1, v0, v6

    const-string v1, "fr_"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "it_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "es_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ja_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ko_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pt_"

    aput-object v2, v0, v1

    .line 74
    sput-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lansPre:[Ljava/lang/String;

    .line 76
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string v1, "en_US"

    aput-object v1, v0, v3

    const-string v1, "zh_TW"

    aput-object v1, v0, v4

    const-string v1, "zh_CN"

    aput-object v1, v0, v5

    const-string v1, "de_DE"

    aput-object v1, v0, v6

    const-string v1, "fr_FR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "es_ES"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ja_JP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ko_KR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pt_PT"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lans:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUID:Landroid/widget/EditText;

    .line 58
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPW:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPWconfirm:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUEMAIL:Landroid/widget/EditText;

    .line 62
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 63
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->uid:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->pwd:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->usBind:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->handler:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$1;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ulConnection:Landroid/content/ServiceConnection;

    .line 84
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->setCancelable(Z)V

    .line 85
    iput-object p3, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->listener:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->requestWindowFeature(I)Z

    .line 87
    sput-object p1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private CheckULServiceExit()Z
    .locals 7

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, mReturn:Z
    sget-object v4, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 372
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 374
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 382
    :cond_1
    :goto_0
    return v2

    .line 374
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 375
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ecareme.pixwe.service.UploadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 376
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 377
    const/4 v2, 0x1

    .line 379
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUEMAIL:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->registerTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->loginTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

    return-void
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->CheckULServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ulConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->usBind:Z

    return-void
.end method

.method static synthetic access$15(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->usBind:Z

    return v0
.end method

.method static synthetic access$16(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->listener:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$19(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->loginTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->registerTask:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;

    return-object v0
.end method

.method static synthetic access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPWconfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->pwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->languageMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->handler:Landroid/os/Handler;

    .line 327
    return-void
.end method

.method private languageMap()Ljava/lang/String;
    .locals 4

    .prologue
    .line 574
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 576
    .local v1, lo:Ljava/util/Locale;
    const-string v2, "================"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lansPre:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 581
    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lans:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    .line 579
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lansPre:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->lans:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    .line 578
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->setContentView(I)V

    .line 96
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    const-string v1, "PixWePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 98
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 100
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUID:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPW:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUPWconfirm:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->tvUEMAIL:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$OKListener;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Lcom/ecareme/pixwe/view/dialog/RegisterDialog$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->initHandler()V

    .line 116
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 125
    :pswitch_0
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 126
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 128
    :pswitch_1
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 129
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
