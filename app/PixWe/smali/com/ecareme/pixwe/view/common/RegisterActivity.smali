.class public Lcom/ecareme/pixwe/view/common/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;,
        Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;,
        Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;,
        Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterDialog"

.field private static final lans:[Ljava/lang/String;

.field private static final lansPre:[Ljava/lang/String;


# instance fields
.field private final accountFreezeDialog:I

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private final bindAWSHandlerCode:I

.field private ctx:Landroid/content/Context;

.field private final goHomeProcess:I

.field private handler:Landroid/os/Handler;

.field private final loginFailDialog:I

.field private final loginHandlerCode:I

.field private loginTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private final progressCancelHandlerCode:I

.field private final progressHandlerCode:I

.field private pwd:Ljava/lang/String;

.field private final registerDupDialog:I

.field private final registerFailDialog:I

.field private final registerHandlerCode:I

.field private registerTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

.field private final serverConnectionFailDialog:I

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

    .line 86
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 87
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

    .line 86
    sput-object v0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 89
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

    .line 88
    sput-object v0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 63
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 64
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->uid:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->usBind:Z

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->progressHandlerCode:I

    .line 70
    const/16 v0, 0x14

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->loginHandlerCode:I

    .line 71
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->registerHandlerCode:I

    .line 72
    const/16 v0, 0x28

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->bindAWSHandlerCode:I

    .line 73
    const/16 v0, 0x32

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->progressCancelHandlerCode:I

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->serverConnectionFailDialog:I

    .line 75
    const/16 v0, 0x46

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->accountFreezeDialog:I

    .line 76
    const/16 v0, 0x50

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->goHomeProcess:I

    .line 77
    const/16 v0, 0x5a

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->loginFailDialog:I

    .line 78
    const/16 v0, 0x64

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->registerFailDialog:I

    .line 79
    const/16 v0, 0x6e

    iput v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->registerDupDialog:I

    .line 376
    new-instance v0, Lcom/ecareme/pixwe/view/common/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->ulConnection:Landroid/content/ServiceConnection;

    .line 43
    return-void
.end method

.method private CheckULServiceExit()Z
    .locals 7

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 363
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 365
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 373
    :cond_1
    :goto_0
    return v2

    .line 365
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 366
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ecareme.pixwe.service.UploadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 367
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 368
    const/4 v2, 0x1

    .line 370
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->registerTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->loginTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    return-void
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->CheckULServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->ulConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ecareme/pixwe/view/common/RegisterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->usBind:Z

    return-void
.end method

.method static synthetic access$16(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->usBind:Z

    return v0
.end method

.method static synthetic access$17(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$19(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->loginTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->registerTask:Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

    return-object v0
.end method

.method static synthetic access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->languageMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->handler:Landroid/os/Handler;

    .line 318
    return-void
.end method

.method private languageMap()Ljava/lang/String;
    .locals 4

    .prologue
    .line 560
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 562
    .local v1, lo:Ljava/util/Locale;
    const-string v2, "================"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 567
    sget-object v2, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    .line 565
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ecareme/pixwe/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    .line 564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "PixWePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 96
    iput-object p0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 98
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->setContentView(I)V

    .line 102
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 106
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->initHandler()V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    const-string v0, "RegisterDialog"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 54
    return-void
.end method
