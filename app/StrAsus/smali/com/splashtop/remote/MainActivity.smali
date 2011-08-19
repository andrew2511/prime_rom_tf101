.class public Lcom/splashtop/remote/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;,
        Lcom/splashtop/remote/MainActivity$MainAsyncTask;,
        Lcom/splashtop/remote/MainActivity$ShowUpdateThread;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt2MmogZlGs6TRLbEp1G70a5WQvqackYuvNCUY9edcaDvnk3hkQE3EUtc5zj55bjr3Us6FAKYEUYBQHSYBVjGCke/GhTdLmmEnX0ObbHMcK5fo0ECqOjnoZarptIo9VH/Pne5wFzM+lnqCsw+RN2epgpzmrjn6LSN0FCUMzUHSkBAEElu+1wtnUmj4pn1oWnETO+nanPnvU4IaLqnWBC7K94DWXI3H5YUHOSJuGfU7RPOalmWMyIjpuUSwccAPhc7xwKwZ057fmU/NYfoO578IIVp2IS6KmJ4+Z2ZVeuLBb0gd5P1j4AqTy7UdB4RYDP4nFW4bfHojCkQlHCpLiaCiQIDAQAB"

.field private static final DEBUG:Z = false

.field private static final SALT:[B = null

.field private static final TAG:Ljava/lang/String; = "IRISMain"


# instance fields
.field private bAutoDetectGL:Z

.field private bCheckLicense:Z

.field private bCheckPlatform:Z

.field private bCheckUpdate:Z

.field private bForceUseGL:Z

.field private bInProbeProcess:Z

.field private bLicenseCheckSucceed:Z

.field private bNeedAutoReconnect:Z

.field private bPromptReconnect:Z

.field private bReleaseKey:Z

.field private bShowTaskLog:Z

.field private bUserTracking:Z

.field private checkUpdate:Ljava/lang/Thread;

.field private db:Lcom/splashtop/remote/utils/DBAdapter;

.field private ibAdd:Landroid/widget/ImageButton;

.field private ibRefresh:Landroid/widget/ImageButton;

.field private listView:Lcom/splashtop/remote/ServerListView;

.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private mMacBean:Lcom/splashtop/remote/bean/MacBean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressbarDialog:Landroid/app/Dialog;

.field private mRandomNum:D

.field private mSaveIntoDB:Z

.field private mSessionState:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field protected sReceiver:Landroid/content/BroadcastReceiver;

.field private scanProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/splashtop/remote/MainActivity;->SALT:[B

    return-void

    :array_0
    .array-data 0x1
        0xd2t
        0x41t
        0x1et
        0x80t
        0x99t
        0xc7t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xd3t
        0x4dt
        0x8bt
        0xdct
        0x8ft
        0xf5t
        0x20t
        0xc0t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    .line 74
    iput-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bLicenseCheckSucceed:Z

    .line 85
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bShowTaskLog:Z

    .line 86
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bCheckLicense:Z

    .line 88
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bAutoDetectGL:Z

    .line 89
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bForceUseGL:Z

    .line 90
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bCheckUpdate:Z

    .line 91
    iput-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bCheckPlatform:Z

    .line 92
    iput-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bReleaseKey:Z

    .line 93
    iput-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bPromptReconnect:Z

    .line 102
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bNeedAutoReconnect:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->mProgressbarDialog:Landroid/app/Dialog;

    .line 106
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bInProbeProcess:Z

    .line 170
    new-instance v0, Lcom/splashtop/remote/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/MainActivity$1;-><init>(Lcom/splashtop/remote/MainActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->checkUpdate:Ljava/lang/Thread;

    .line 416
    new-instance v0, Lcom/splashtop/remote/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/MainActivity$8;-><init>(Lcom/splashtop/remote/MainActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 960
    new-instance v0, Lcom/splashtop/remote/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/MainActivity$12;-><init>(Lcom/splashtop/remote/MainActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/splashtop/remote/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/splashtop/remote/MainActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/splashtop/remote/MainActivity;->mRandomNum:D

    return-wide v0
.end method

.method static synthetic access$1004(Lcom/splashtop/remote/MainActivity;)D
    .locals 4
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/splashtop/remote/MainActivity;->mRandomNum:D

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/splashtop/remote/MainActivity;->mRandomNum:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/splashtop/remote/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mProgressbarDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/splashtop/remote/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bLicenseCheckSucceed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/splashtop/remote/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/splashtop/remote/MainActivity;->bLicenseCheckSucceed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/splashtop/remote/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bInProbeProcess:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/splashtop/remote/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/splashtop/remote/MainActivity;->bInProbeProcess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)Lcom/splashtop/remote/bean/MacBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/splashtop/remote/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->createItemDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/utils/DBAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/ServerListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/splashtop/remote/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/splashtop/remote/MainActivity;->mSessionState:I

    return v0
.end method

.method static synthetic access$902(Lcom/splashtop/remote/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/splashtop/remote/MainActivity;->bNeedAutoReconnect:Z

    return p1
.end method

.method private createItemDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 289
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/bean/MacBean;

    .line 290
    .local v0, macBean:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v0}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const v2, 0x7f050001

    move v1, v2

    .line 291
    .local v1, menu:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/splashtop/remote/MainActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/splashtop/remote/MainActivity$7;-><init>(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 290
    .end local v1           #menu:I
    :cond_0
    const/high16 v2, 0x7f05

    move v1, v2

    goto :goto_0
.end method

.method private doCheckPlatformLock()V
    .locals 2

    .prologue
    .line 918
    const-string v0, "asus"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lcom/splashtop/remote/dialog/SimpleAlertDialog;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p0, v1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;->show()V

    .line 922
    :cond_0
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    .line 207
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/ServerListView;

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    .line 208
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    .line 210
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    .line 211
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    new-instance v1, Lcom/splashtop/remote/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/splashtop/remote/MainActivity$2;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    new-instance v1, Lcom/splashtop/remote/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/splashtop/remote/MainActivity$3;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    new-instance v1, Lcom/splashtop/remote/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/splashtop/remote/MainActivity$4;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    new-instance v1, Lcom/splashtop/remote/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/splashtop/remote/MainActivity$5;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    new-instance v1, Lcom/splashtop/remote/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/splashtop/remote/MainActivity$6;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/ServerListView;->setListViewListener(Lcom/splashtop/remote/ServerListView$ListViewListener;)V

    .line 286
    return-void
.end method

.method private noNetwork()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListView;->darkenItem()V

    .line 477
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    .line 478
    return-void
.end method

.method private setBackground(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 861
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 869
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 867
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "IRISMain"

    const-string v2, "MainActivity::setBackground OutOfMemory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addComputer()V
    .locals 6

    .prologue
    .line 340
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "action"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 344
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 345
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show_first_help"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isFirstMenu"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    const/16 v3, 0x66

    invoke-virtual {p0, v1, v3}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method

.method public connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V
    .locals 4
    .parameter "macBean"
    .parameter "bReconnect"

    .prologue
    const/16 v1, 0xd

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 455
    invoke-static {p0}, Lcom/splashtop/remote/net/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    .line 457
    iget-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bPromptReconnect:Z

    if-eqz v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 459
    invoke-virtual {p0, v1}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    .line 473
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    :cond_1
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 462
    invoke-virtual {p0, v2}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 463
    invoke-virtual {p0, v2}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mProgressbarDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mProgressbarDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 466
    :cond_3
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    .line 468
    :cond_4
    new-instance v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;-><init>(Lcom/splashtop/remote/MainActivity;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 471
    :cond_5
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->noNetwork()V

    goto :goto_0
.end method

.method public doCheckLicense()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 915
    return-void
.end method

.method public doHandshake()V
    .locals 1

    .prologue
    .line 839
    invoke-static {p0}, Lcom/splashtop/remote/net/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListView;->doHandshake()V

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->noNetwork()V

    goto :goto_0
.end method

.method public editServer(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 6
    .parameter "macBean"

    .prologue
    .line 351
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "action"

    const-string v4, "update"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "macbean"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 355
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 357
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isFirstMenu"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    const/16 v3, 0x66

    invoke-virtual {p0, v1, v3}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    return-void
.end method

.method public getThisTaskInfo()V
    .locals 5

    .prologue
    .line 952
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/splashtop/remote/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 953
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 954
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v2, "IRISMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the number of activitys is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v2, "IRISMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the number of running activitys is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v2, "IRISMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the top of activitys is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v2, "IRISMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the base of running activitys is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 766
    packed-switch p1, :pswitch_data_0

    .line 834
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 836
    return-void

    .line 768
    :pswitch_1
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v7, :cond_1

    .line 770
    const-string v7, "CONNECT-SUCCESSFUL"

    invoke-static {v7}, Lcom/flurry/android/FlurryAgent;->endTimedEvent(Ljava/lang/String;)V

    .line 771
    const-string v7, "SESSION-ESTABLISH"

    invoke-static {v7}, Lcom/flurry/android/FlurryAgent;->endTimedEvent(Ljava/lang/String;)V

    .line 773
    :cond_1
    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    .line 774
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {p0, v7, v9}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    goto :goto_0

    .line 775
    :cond_2
    if-nez p2, :cond_0

    .line 776
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bPromptReconnect:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bNeedAutoReconnect:Z

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    if-eqz v7, :cond_4

    .line 778
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    .line 781
    :cond_4
    iput v9, p0, Lcom/splashtop/remote/MainActivity;->mSessionState:I

    goto :goto_0

    .line 785
    :pswitch_2
    if-eqz p3, :cond_0

    .line 786
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 787
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "ret"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 788
    const-string v7, "action"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, action:Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 790
    .local v3, id:J
    const-string v7, "macbean"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/splashtop/remote/bean/MacBean;

    .line 791
    .local v5, macBean:Lcom/splashtop/remote/bean/MacBean;
    if-eqz v5, :cond_5

    .line 793
    :try_start_0
    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 794
    .local v6, serverip:Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v6           #serverip:Ljava/net/InetAddress;
    :cond_5
    :goto_1
    const-string v7, "new"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 800
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v7, v5}, Lcom/splashtop/remote/ServerListView;->addToDB(Lcom/splashtop/remote/bean/MacBean;)V

    goto :goto_0

    .line 795
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 796
    .local v2, ex:Ljava/net/UnknownHostException;
    const-string v7, "0.0.0.0"

    invoke-virtual {v5, v7}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V

    goto :goto_1

    .line 801
    .end local v2           #ex:Ljava/net/UnknownHostException;
    :cond_6
    const-string v7, "update"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 802
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v7, v5}, Lcom/splashtop/remote/ServerListView;->updateToDB(Lcom/splashtop/remote/bean/MacBean;)V

    goto/16 :goto_0

    .line 803
    :cond_7
    const-string v7, "delete"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 804
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v7, v3, v4}, Lcom/splashtop/remote/utils/DBAdapter;->deleteData(J)Z

    .line 805
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v7, v3, v4}, Lcom/splashtop/remote/ServerListView;->deleteFromDB(J)V

    goto/16 :goto_0

    .line 810
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #id:J
    .end local v5           #macBean:Lcom/splashtop/remote/bean/MacBean;
    :pswitch_3
    if-nez p2, :cond_8

    .line 811
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->finish()V

    goto/16 :goto_0

    .line 813
    :cond_8
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 814
    invoke-static {p0}, Lcom/splashtop/remote/net/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 815
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->noNetwork()V

    .line 817
    :cond_9
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bCheckLicense:Z

    if-eqz v7, :cond_a

    .line 818
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 819
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->doCheckLicense()V

    .line 821
    :cond_a
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bCheckPlatform:Z

    if-eqz v7, :cond_0

    .line 822
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 823
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->doCheckPlatformLock()V

    goto/16 :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 856
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/splashtop/remote/MainActivity;->setBackground(I)V

    .line 857
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bReleaseKey:Z

    invoke-static {v7}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 114
    invoke-virtual {p0, v11}, Lcom/splashtop/remote/MainActivity;->requestWindowFeature(I)Z

    .line 115
    const v7, 0x7f03000e

    invoke-virtual {p0, v7}, Lcom/splashtop/remote/MainActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x7f030015

    invoke-virtual {v7, v11, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 117
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/splashtop/remote/MainActivity;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 119
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "USRTRACK"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    .line 120
    const-string v7, "INT_HANDLING"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bPromptReconnect:Z

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, bShowOOBE:Z
    const-string v7, "EULA_VERSION"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, eulaVersion:I
    const v7, 0x18af7

    if-ge v3, v7, :cond_4

    const/4 v0, 0x1

    .line 135
    :goto_0
    if-eqz v0, :cond_5

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/splashtop/remote/OOBEForAsusActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, eulaIntent:Landroid/content/Intent;
    const/16 v7, 0x65

    invoke-virtual {p0, v2, v7}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    .end local v2           #eulaIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->findView()V

    .line 143
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->initView()V

    .line 146
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v7}, Lcom/splashtop/remote/MainActivity;->setBackground(I)V

    .line 148
    new-instance v7, Lcom/splashtop/remote/utils/DBAdapter;

    invoke-direct {v7, p0}, Lcom/splashtop/remote/utils/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    .line 149
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v7}, Lcom/splashtop/remote/utils/DBAdapter;->open()V

    .line 151
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->probeServer()V

    .line 153
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, deviceId:Ljava/lang/String;
    new-instance v7, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/splashtop/remote/MainActivity$MyLicenseCheckerCallback;-><init>(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/MainActivity$1;)V

    iput-object v7, p0, Lcom/splashtop/remote/MainActivity;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 155
    new-instance v5, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v7, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v8, Lcom/splashtop/remote/MainActivity;->SALT:[B

    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, p0, v7}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 156
    .local v5, policy:Lcom/android/vending/licensing/Policy;
    new-instance v7, Lcom/android/vending/licensing/LicenseChecker;

    const-string v8, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt2MmogZlGs6TRLbEp1G70a5WQvqackYuvNCUY9edcaDvnk3hkQE3EUtc5zj55bjr3Us6FAKYEUYBQHSYBVjGCke/GhTdLmmEnX0ObbHMcK5fo0ECqOjnoZarptIo9VH/Pne5wFzM+lnqCsw+RN2epgpzmrjn6LSN0FCUMzUHSkBAEElu+1wtnUmj4pn1oWnETO+nanPnvU4IaLqnWBC7K94DWXI3H5YUHOSJuGfU7RPOalmWMyIjpuUSwccAPhc7xwKwZ057fmU/NYfoO578IIVp2IS6KmJ4+Z2ZVeuLBb0gd5P1j4AqTy7UdB4RYDP4nFW4bfHojCkQlHCpLiaCiQIDAQAB"

    invoke-direct {v7, p0, v5, v8}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/splashtop/remote/MainActivity;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 157
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bReleaseKey:Z

    invoke-static {v7}, Lcom/splashtop/remote/utils/Common;->setReleaseMode(Z)V

    .line 158
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bCheckLicense:Z

    if-eqz v7, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->doCheckLicense()V

    .line 162
    :cond_1
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/splashtop/remote/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 163
    .local v4, phoneMgr:Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v4, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 164
    iput v10, p0, Lcom/splashtop/remote/MainActivity;->mSessionState:I

    .line 166
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bShowTaskLog:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getThisTaskInfo()V

    .line 167
    :cond_2
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bCheckPlatform:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->doCheckPlatformLock()V

    .line 168
    :cond_3
    return-void

    .line 133
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v4           #phoneMgr:Landroid/telephony/TelephonyManager;
    .end local v5           #policy:Lcom/android/vending/licensing/Policy;
    :cond_4
    const-string v7, "FIRSTRUN"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 138
    :cond_5
    iget-boolean v7, p0, Lcom/splashtop/remote/MainActivity;->bCheckUpdate:Z

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, p0, Lcom/splashtop/remote/MainActivity;->checkUpdate:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 682
    sparse-switch p1, :sswitch_data_0

    .line 758
    new-instance v5, Lcom/splashtop/remote/dialog/SimpleAlertDialog;

    invoke-direct {v5, p0, p0, p1}, Lcom/splashtop/remote/dialog/SimpleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    :goto_0
    return-object v5

    .line 684
    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "macbean"

    iget-object v5, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 686
    new-instance v5, Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-direct {v5, p0, p0, p1, v0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 690
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v1, bundle2:Landroid/os/Bundle;
    const-string v6, "macbean"

    iget-object v5, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 692
    new-instance v5, Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-direct {v5, p0, p0, p1, v1}, Lcom/splashtop/remote/dialog/BundleAlertDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 698
    .end local v1           #bundle2:Landroid/os/Bundle;
    :sswitch_2
    iget-object v5, p0, Lcom/splashtop/remote/MainActivity;->mMacBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/splashtop/remote/bean/MacBean;

    .line 699
    .local v2, macBean:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const v5, 0x7f050001

    move v3, v5

    .line 700
    .local v3, menu:I
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/splashtop/remote/MainActivity$9;

    invoke-direct {v6, p0, v2}, Lcom/splashtop/remote/MainActivity$9;-><init>(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 699
    .end local v3           #menu:I
    :cond_0
    const/high16 v5, 0x7f05

    move v3, v5

    goto :goto_1

    .line 739
    .end local v2           #macBean:Lcom/splashtop/remote/bean/MacBean;
    :sswitch_3
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 740
    .local v4, pDialog:Landroid/app/ProgressDialog;
    const v5, 0x7f070010

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 741
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 742
    new-instance v5, Lcom/splashtop/remote/MainActivity$10;

    invoke-direct {v5, p0}, Lcom/splashtop/remote/MainActivity$10;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 749
    const v5, 0x7f07000b

    invoke-virtual {p0, v5}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/splashtop/remote/MainActivity$11;

    invoke-direct {v6, p0}, Lcom/splashtop/remote/MainActivity$11;-><init>(Lcom/splashtop/remote/MainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 754
    iput-object v4, p0, Lcom/splashtop/remote/MainActivity;->mProgressbarDialog:Landroid/app/Dialog;

    move-object v5, v4

    .line 755
    goto/16 :goto_0

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 335
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 908
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v0}, Lcom/splashtop/remote/utils/DBAdapter;->close()V

    .line 909
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 910
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 911
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 393
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 365
    :pswitch_0
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->addComputer()V

    goto :goto_0

    .line 368
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/splashtop/remote/SettingActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v2, settings:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "bAutoDetectGL"

    iget-boolean v4, p0, Lcom/splashtop/remote/MainActivity;->bAutoDetectGL:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const-string v3, "bForceUseGL"

    iget-boolean v4, p0, Lcom/splashtop/remote/MainActivity;->bForceUseGL:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 373
    const/16 v3, 0x67

    invoke-virtual {p0, v2, v3}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 376
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #settings:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/splashtop/remote/MoreActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v1, more:Landroid/content/Intent;
    const/16 v3, 0x68

    invoke-virtual {p0, v1, v3}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x7f090030
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 899
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 900
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "INT_HANDLING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bPromptReconnect:Z

    .line 901
    invoke-virtual {p0}, Lcom/splashtop/remote/MainActivity;->doHandshake()V

    .line 902
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 903
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 873
    iget-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 875
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 878
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 879
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/splashtop/remote/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 884
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 890
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 892
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 893
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 895
    return-void
.end method

.method public probeServer()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 401
    invoke-static {p0}, Lcom/splashtop/remote/net/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iput-boolean v1, p0, Lcom/splashtop/remote/MainActivity;->bInProbeProcess:Z

    .line 403
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListView;->startToProbe()V

    .line 404
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 406
    :cond_1
    invoke-virtual {p0, v1}, Lcom/splashtop/remote/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 407
    new-instance v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;-><init>(Lcom/splashtop/remote/MainActivity;)V

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->ibRefresh:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity;->scanProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    :cond_4
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 412
    invoke-direct {p0}, Lcom/splashtop/remote/MainActivity;->noNetwork()V

    goto :goto_0
.end method

.method public setSaveIntoDB(Z)V
    .locals 0
    .parameter "saveIntoDB"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/splashtop/remote/MainActivity;->mSaveIntoDB:Z

    .line 330
    return-void
.end method

.method public startDisplay(ILcom/splashtop/remote/bean/MacBean;)V
    .locals 11
    .parameter "ret"
    .parameter "macBean"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v10, 0x1

    .line 486
    packed-switch p1, :pswitch_data_0

    .line 546
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_0

    .line 548
    const-string v6, "TRYAUTH-OTHER_ERROR"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 550
    :cond_0
    const v6, 0x7f07003c

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, p0, v6}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 488
    :pswitch_0
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_2

    .line 490
    const-string v6, "CONNECT-SUCCESSFUL"

    invoke-static {v6, v8, v10}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 491
    const-string v6, "SESSION-ESTABLISH"

    invoke-static {v6, v8, v10}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 493
    :cond_2
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->mSaveIntoDB:Z

    if-eqz v6, :cond_3

    .line 494
    iget-object v6, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {p2}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/splashtop/remote/utils/DBAdapter;->fetchDataByAddr(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 495
    .local v2, cur:Landroid/database/Cursor;
    invoke-virtual {p2}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 496
    iget-object v6, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v6, p2}, Lcom/splashtop/remote/utils/DBAdapter;->insertData(Lcom/splashtop/remote/bean/MacBean;)J

    move-result-wide v3

    .line 497
    .local v3, id:J
    invoke-virtual {p2, v3, v4}, Lcom/splashtop/remote/bean/MacBean;->setId(J)V

    .line 498
    iget-object v6, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v6, p2}, Lcom/splashtop/remote/ServerListView;->addToDB(Lcom/splashtop/remote/bean/MacBean;)V

    .line 503
    .end local v3           #id:J
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 506
    .end local v2           #cur:Landroid/database/Cursor;
    :cond_3
    iget-boolean v0, p0, Lcom/splashtop/remote/MainActivity;->bForceUseGL:Z

    .line 507
    .local v0, bUseGLRender:Z
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bAutoDetectGL:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bForceUseGL:Z

    if-nez v6, :cond_4

    .line 508
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getRenderInfo()Z

    move-result v0

    .line 510
    :cond_4
    new-instance v5, Landroid/content/Intent;

    if-eqz v0, :cond_6

    const-class v6, Lcom/splashtop/remote/DesktopGLActivity;

    :goto_2
    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .local v5, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "server_name"

    invoke-virtual {p2}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 514
    if-eqz v0, :cond_7

    move v6, v10

    :goto_3
    invoke-static {v6}, Lcom/splashtop/remote/JNILib;->nativeSetRenderType(I)V

    .line 515
    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6}, Lcom/splashtop/remote/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    iput v10, p0, Lcom/splashtop/remote/MainActivity;->mSessionState:I

    goto :goto_0

    .line 500
    .end local v0           #bUseGLRender:Z
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #intent:Landroid/content/Intent;
    .restart local v2       #cur:Landroid/database/Cursor;
    :cond_5
    iget-object v6, p0, Lcom/splashtop/remote/MainActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v6, p2}, Lcom/splashtop/remote/utils/DBAdapter;->updateData(Lcom/splashtop/remote/bean/MacBean;)Z

    .line 501
    iget-object v6, p0, Lcom/splashtop/remote/MainActivity;->listView:Lcom/splashtop/remote/ServerListView;

    invoke-virtual {v6, p2}, Lcom/splashtop/remote/ServerListView;->updateToDB(Lcom/splashtop/remote/bean/MacBean;)V

    goto :goto_1

    .line 510
    .end local v2           #cur:Landroid/database/Cursor;
    .restart local v0       #bUseGLRender:Z
    :cond_6
    const-class v6, Lcom/splashtop/remote/DesktopActivity;

    goto :goto_2

    .line 514
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 519
    .end local v0           #bUseGLRender:Z
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_8

    .line 521
    const-string v6, "TRYAUTH-WRONG_PASSWORD"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 523
    :cond_8
    const v6, 0x7f070039

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, p0, v6}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :pswitch_2
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_9

    .line 528
    const-string v6, "TRYAUTH-SERVER_BUSY"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 530
    :cond_9
    const v6, 0x7f07003a

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, p0, v6}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :pswitch_3
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_1

    .line 535
    const-string v6, "TRYAUTH-CONNECT_CANCEL"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :pswitch_4
    iget-boolean v6, p0, Lcom/splashtop/remote/MainActivity;->bUserTracking:Z

    if-eqz v6, :cond_a

    .line 541
    const-string v6, "TRYAUTH-CONNECT_FAILED"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 543
    :cond_a
    const v6, 0x7f07003b

    invoke-virtual {p0, v6}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, p0, v6}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
