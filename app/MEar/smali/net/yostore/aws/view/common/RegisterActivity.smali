.class public Lnet/yostore/aws/view/common/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/RegisterActivity$OKListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterDialog"

.field private static final lans:[Ljava/lang/String;

.field private static final lansPre:[Ljava/lang/String;


# instance fields
.field private afterRegister:Ljava/lang/Runnable;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private pwd:Ljava/lang/String;

.field registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;

.field private tvUEMAIL:Landroid/widget/EditText;

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;

.field private tvUPWconfirm:Landroid/widget/EditText;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 61
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

    .line 60
    sput-object v0, Lnet/yostore/aws/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    .line 62
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 63
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

    .line 62
    sput-object v0, Lnet/yostore/aws/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 52
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 57
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->handler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lnet/yostore/aws/view/common/RegisterActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->afterRegister:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lnet/yostore/aws/view/common/RegisterActivity;->languageMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->afterRegister:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    return-void
.end method

.method private languageMap()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 253
    .local v1, lo:Ljava/util/Locale;
    const-string v2, "================"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lnet/yostore/aws/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 258
    sget-object v2, Lnet/yostore/aws/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    .line 256
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/view/common/RegisterActivity;->lansPre:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/yostore/aws/view/common/RegisterActivity;->lans:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 70
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 71
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/RegisterActivity$2;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 45
    const-string v0, "RegisterDialog"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 47
    return-void
.end method
