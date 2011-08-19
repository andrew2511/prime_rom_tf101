.class public Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;
.super Landroid/app/Activity;
.source "BeforeLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeforeLoginActivity"

.field public static final accountFreezeDialog:I = 0x46

.field public static final bindAWSHandlerCode:I = 0x28

.field static ctx:Landroid/content/Context; = null

.field public static final goHomeProcess:I = 0x50

.field public static final loginFailDialog:I = 0x5a

.field public static final loginHandlerCode:I = 0x14

.field public static final progressCancelHandlerCode:I = 0x32

.field public static final progressHandlerCode:I = 0xa

.field public static final registerDupDialog:I = 0x6e

.field public static final registerFailDialog:I = 0x64

.field public static final registerHandlerCode:I = 0x1e

.field public static final serverConnectionFailDialog:I = 0x3c


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private usBind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->usBind:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v1, "PixWePrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 55
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 56
    sput-object p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    .line 62
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->setContentView(I)V

    .line 64
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    sget-object v1, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;-><init>(Landroid/content/Context;ZLcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;)V

    .line 86
    .local v0, loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;
    const v1, 0x7f09002d

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
