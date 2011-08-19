.class public Lnet/yostore/aws/view/present/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/SettingActivity$GetAccountInfoTask;
    }
.end annotation


# static fields
.field private static final CheckBox:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingActivity"

.field public static isChanged:Z


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private tvUID:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/present/SettingActivity;->CheckBox:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/view/present/SettingActivity;->isChanged:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity;->tvUID:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity;->handler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lnet/yostore/aws/view/present/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity;->tvUID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/present/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lnet/yostore/aws/view/present/SettingActivity;->tryDeleteAccInfo()V

    return-void
.end method

.method private compareAWSLCheckBox()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lnet/yostore/aws/handler/entity/ImportInfoBean;

    iget-object v2, p0, Lnet/yostore/aws/view/present/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    sget-wide v1, Lcom/ecareme/mear/Mear;->myCollectionFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    sget-wide v1, Lcom/ecareme/mear/Mear;->mySyncFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_2
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    sget-wide v1, Lcom/ecareme/mear/Mear;->myBackupFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_3
    return-object v0
.end method

.method private displayCapacity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capacity"

    .prologue
    .line 312
    const-string v0, "Unlimited"

    .line 313
    .local v0, capDsp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 315
    .local v1, capInt:I
    const v2, 0xfa000

    if-ge v1, v2, :cond_0

    .line 316
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

    .line 319
    .end local v1           #capInt:I
    :cond_0
    return-object v0
.end method

.method private displayQuota(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "quota"

    .prologue
    .line 323
    const-string v1, ""

    .line 324
    .local v1, quotaDisp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    .local v0, capInt:I
    const/16 v2, 0x400

    if-lt v0, v2, :cond_1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit16 v3, v0, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .end local v0           #capInt:I
    :cond_0
    :goto_0
    return-object v1

    .line 329
    .restart local v0       #capInt:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initHeader()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method private tryDeleteAccInfo()V
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, awsacc:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
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

    .line 278
    const-string v2, "/asus/webstorage/account.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v0       #awsacc:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v4, 0x7f030013

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->setContentView(I)V

    .line 70
    const v4, 0x7f080023

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/present/SettingActivity;->tvUID:Landroid/widget/TextView;

    .line 72
    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 73
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_6

    .line 84
    .end local v17           #i:I
    :cond_0
    const/4 v4, 0x6

    new-array v15, v4, [I

    .line 85
    .local v15, expire:[I
    invoke-static/range {p0 .. p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v10

    .line 86
    .local v10, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->displayCapacity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, capacityStr:Ljava/lang/String;
    const v4, 0x7f08001d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f060084

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v12           #capacityStr:Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    check-cast v16, [Ljava/lang/String;

    .line 92
    .local v16, expireStr:[Ljava/lang/String;
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 94
    :cond_2
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 95
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x76c

    sub-int/2addr v5, v6

    aput v5, v15, v4

    .line 96
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput v5, v15, v4

    .line 97
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v15, v4

    .line 98
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 99
    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v15, v4

    .line 100
    const/4 v4, 0x4

    const/4 v5, 0x4

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v15, v4

    .line 101
    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v15, v4

    .line 108
    :cond_3
    :goto_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v20

    .line 109
    .local v20, nowY:I
    new-instance v3, Ljava/util/Date;

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    const/4 v6, 0x2

    aget v6, v15, v6

    const/4 v7, 0x3

    aget v7, v15, v7

    const/4 v8, 0x4

    aget v8, v15, v8

    const/4 v9, 0x5

    aget v9, v15, v9

    invoke-direct/range {v3 .. v9}, Ljava/util/Date;-><init>(IIIIII)V

    .line 110
    .local v3, expireDate:Ljava/util/Date;
    const/4 v4, 0x0

    aget v4, v15, v4

    sub-int v4, v4, v20

    const/16 v5, 0x32

    if-gt v4, v5, :cond_4

    .line 113
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    .line 114
    .local v13, dateFormat:Ljava/text/DateFormat;
    const v4, 0x7f080021

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v4, 0x7f08001f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    .end local v13           #dateFormat:Ljava/text/DateFormat;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/SettingActivity;->handler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lnet/yostore/aws/view/present/SettingActivity$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$1;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    const v4, 0x7f080032

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 163
    new-instance v4, Lnet/yostore/aws/view/present/SettingActivity$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$2;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 162
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v4, 0x7f080024

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 173
    new-instance v4, Lnet/yostore/aws/view/present/SettingActivity$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$3;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 172
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const/16 v18, 0x8

    .line 196
    .local v18, logoutVisibility:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/yostore/aws/view/present/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 197
    .local v19, manager:Landroid/content/pm/PackageManager;
    const-string v4, "com.asus.webstorage.id"

    const/16 v5, 0x40

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 198
    .local v11, appInfo:Landroid/content/pm/PackageInfo;
    if-nez v11, :cond_5

    .line 199
    const/16 v18, 0x0

    .line 208
    :cond_5
    const v4, 0x7f080024

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    .end local v11           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v19           #manager:Landroid/content/pm/PackageManager;
    :goto_2
    const v4, 0x7f080034

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 212
    new-instance v4, Lnet/yostore/aws/view/present/SettingActivity$4;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$4;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 211
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v4, 0x7f080035

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 222
    new-instance v4, Lnet/yostore/aws/view/present/SettingActivity$5;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$5;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 221
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v4, 0x7f080036

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 232
    new-instance v4, Lnet/yostore/aws/view/present/SettingActivity$6;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity$6;-><init>(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 231
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-void

    .line 74
    .end local v3           #expireDate:Ljava/util/Date;
    .end local v10           #ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v15           #expire:[I
    .end local v16           #expireStr:[Ljava/lang/String;
    .end local v18           #logoutVisibility:I
    .end local v20           #nowY:I
    .restart local v17       #i:I
    :cond_6
    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/ecareme/mear/Mear;->myCollectionFolderId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 75
    const v4, 0x7f08002e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    :cond_7
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 76
    :cond_8
    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/ecareme/mear/Mear;->mySyncFolderId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 77
    const v4, 0x7f080030

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 78
    :cond_9
    sget-object v4, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/ecareme/mear/Mear;->myBackupFolderId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 79
    const v4, 0x7f08002f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 103
    .end local v17           #i:I
    .restart local v10       #ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .restart local v15       #expire:[I
    .restart local v16       #expireStr:[Ljava/lang/String;
    :cond_a
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v15, v4

    .line 104
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v15, v4

    .line 105
    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v15, v4

    goto/16 :goto_1

    .line 202
    .restart local v3       #expireDate:Ljava/util/Date;
    .restart local v18       #logoutVisibility:I
    .restart local v20       #nowY:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 206
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v18, 0x0

    .line 208
    const v4, 0x7f080024

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 207
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    .line 208
    const v5, 0x7f080024

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    throw v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 338
    .line 340
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    invoke-direct {p0}, Lnet/yostore/aws/view/present/SettingActivity;->compareAWSLCheckBox()Ljava/util/List;

    move-result-object v1

    .line 249
    .local v1, awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-nez v2, :cond_0

    .line 250
    new-instance v2, Lnet/yostore/aws/handler/entity/ImportInfoBean;

    iget-object v3, p0, Lnet/yostore/aws/view/present/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v2, v3}, Lnet/yostore/aws/handler/entity/ImportInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    .line 252
    :cond_0
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v2, v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->caompareAwslDiff(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    const/4 v2, 0x1

    sput-boolean v2, Lnet/yostore/aws/view/present/SettingActivity;->isChanged:Z

    .line 254
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v2, v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->setAwsl(Ljava/util/List;)V

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    .line 256
    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 257
    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-eqz v2, :cond_2

    .line 261
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 262
    const/4 v0, 0x0

    .end local p0
    .local v0, a:I
    :goto_0
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 269
    .end local v0           #a:I
    :cond_2
    const/4 v2, 0x0

    sput v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    .line 270
    sget-object v2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->saveImportInfo()V

    .line 272
    :cond_3
    return-void

    .line 263
    .restart local v0       #a:I
    :cond_4
    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    if-nez v2, :cond_5

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    .line 265
    :cond_5
    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget-object v3, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
