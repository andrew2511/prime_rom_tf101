.class public Lcom/ecareme/pixwe/view/common/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"


# static fields
.field private static final CheckBox:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingActivity"

.field public static isChanged:Z


# instance fields
.field ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private tvUID:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->CheckBox:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->isChanged:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->tvUID:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->handler:Landroid/os/Handler;

    .line 52
    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->tvUID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/common/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/SettingActivity;->tryDeleteAccInfo()V

    return-void
.end method

.method private displayCapacity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capacity"

    .prologue
    .line 336
    const v2, 0x7f0600a8

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, capDsp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    .local v1, capInt:I
    const v2, 0xfa000

    if-ge v1, v2, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit16 v3, v1, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .end local v1           #capInt:I
    :cond_0
    return-object v0
.end method

.method private tryDeleteAccInfo()V
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, awsacc:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    new-instance v0, Ljava/io/File;

    .end local v0           #awsacc:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v2, "/asus/webstorage/account.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v0       #awsacc:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f03000c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->setContentView(I)V

    .line 57
    const v3, 0x7f09003d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/view/common/SettingActivity;->tvUID:Landroid/widget/TextView;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/view/common/SettingActivity;->ctx:Landroid/content/Context;

    .line 62
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/view/common/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/view/common/SettingActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 63
    .local v17, pi:Landroid/content/pm/PackageInfo;
    const v3, 0x7f090044

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " V"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v17           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ctx:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 74
    .local v15, manager:Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v3, "com.asus.webstorage.id"

    const/16 v4, 0x40

    invoke-virtual {v15, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 75
    .local v9, appInfo:Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_0

    .line 76
    const v3, 0x7f09003e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v9           #appInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    const/4 v3, 0x6

    new-array v13, v3, [I

    .line 87
    .local v13, expire:[I
    invoke-static/range {p0 .. p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->displayCapacity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, capacityStr:Ljava/lang/String;
    const v3, 0x7f090041

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v10           #capacityStr:Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    .line 93
    .local v14, expireStr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->ai:Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 95
    :cond_2
    if-eqz v14, :cond_3

    array-length v3, v14

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 96
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    sub-int/2addr v4, v5

    aput v4, v13, v3

    .line 97
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput v4, v13, v3

    .line 98
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v13, v3

    .line 99
    array-length v3, v14

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 100
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v13, v3

    .line 101
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v13, v3

    .line 102
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v13, v3

    .line 109
    :cond_3
    :goto_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v16

    .line 110
    .local v16, nowY:I
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    aget v3, v13, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    const/4 v5, 0x2

    aget v5, v13, v5

    const/4 v6, 0x3

    aget v6, v13, v6

    const/4 v7, 0x4

    aget v7, v13, v7

    const/4 v8, 0x5

    aget v8, v13, v8

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    .line 111
    .local v2, expireDate:Ljava/util/Date;
    const/4 v3, 0x0

    aget v3, v13, v3

    sub-int v3, v3, v16

    const/16 v4, 0x32

    if-gt v3, v4, :cond_4

    .line 114
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v11

    .line 115
    .local v11, dateFormat:Ljava/text/DateFormat;
    const v3, 0x7f090043

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v3, 0x7f090042

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    .end local v11           #dateFormat:Ljava/text/DateFormat;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->handler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v4, Lcom/ecareme/pixwe/view/common/SettingActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/SettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    const v3, 0x7f09003f

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 166
    new-instance v3, Lcom/ecareme/pixwe/view/common/SettingActivity$2;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/SettingActivity;)V

    .line 165
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v3, 0x7f090045

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 188
    new-instance v3, Lcom/ecareme/pixwe/view/common/SettingActivity$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/SettingActivity;)V

    .line 187
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v3, 0x7f090046

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 207
    new-instance v3, Lcom/ecareme/pixwe/view/common/SettingActivity$4;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity$4;-><init>(Lcom/ecareme/pixwe/view/common/SettingActivity;)V

    .line 206
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void

    .line 65
    .end local v2           #expireDate:Ljava/util/Date;
    .end local v13           #expire:[I
    .end local v14           #expireStr:[Ljava/lang/String;
    .end local v15           #manager:Landroid/content/pm/PackageManager;
    .end local v16           #nowY:I
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 68
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SettingActivity"

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15       #manager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 83
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const v3, 0x7f09003e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 104
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13       #expire:[I
    .restart local v14       #expireStr:[Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v13, v3

    .line 105
    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v13, v3

    .line 106
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v13, v3

    goto/16 :goto_2
.end method
