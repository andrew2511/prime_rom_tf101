.class public Lnet/yostore/aws/view/present/OffLineSettingActivity;
.super Landroid/app/Activity;
.source "OffLineSettingActivity.java"


# static fields
.field private static final CheckBox:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OffLineSettingActivity"

.field public static isChanged:Z


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private tvUID:Landroid/widget/TextView;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->CheckBox:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->isChanged:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->tvUID:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->handler:Landroid/os/Handler;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->uid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/OffLineSettingActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/OffLineSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->tvUID:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayCapacity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capacity"

    .prologue
    .line 233
    const-string v0, "Unlimited"

    .line 234
    .local v0, capDsp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 236
    .local v1, capInt:I
    const v2, 0xfa000

    if-ge v1, v2, :cond_0

    .line 237
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

    .line 240
    .end local v1           #capInt:I
    :cond_0
    return-object v0
.end method

.method private displayQuota(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "quota"

    .prologue
    .line 244
    const-string v1, ""

    .line 245
    .local v1, quotaDisp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    .local v0, capInt:I
    const/16 v2, 0x400

    if-lt v0, v2, :cond_1

    .line 248
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

    .line 253
    .end local v0           #capInt:I
    :cond_0
    :goto_0
    return-object v1

    .line 250
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
    .line 231
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->setContentView(I)V

    .line 66
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->tvUID:Landroid/widget/TextView;

    .line 68
    const/4 v1, 0x6

    new-array v10, v1, [I

    .line 69
    .local v10, expire:[I
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v7

    .line 70
    .local v7, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->uid:Ljava/lang/String;

    .line 71
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->displayCapacity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, capacityStr:Ljava/lang/String;
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f060084

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f060085

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->displayQuota(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .end local v8           #capacityStr:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    check-cast v11, [Ljava/lang/String;

    .line 77
    .local v11, expireStr:[Ljava/lang/String;
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 79
    :cond_1
    if-eqz v11, :cond_2

    array-length v1, v11

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x76c

    sub-int/2addr v2, v3

    aput v2, v10, v1

    .line 81
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v10, v1

    .line 82
    const/4 v1, 0x2

    const/4 v2, 0x2

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v10, v1

    .line 83
    array-length v1, v11

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 84
    const/4 v1, 0x3

    const/4 v2, 0x3

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v10, v1

    .line 85
    const/4 v1, 0x4

    const/4 v2, 0x4

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v10, v1

    .line 86
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v10, v1

    .line 93
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v12

    .line 94
    .local v12, nowY:I
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x2

    aget v3, v10, v3

    const/4 v4, 0x3

    aget v4, v10, v4

    const/4 v5, 0x4

    aget v5, v10, v5

    const/4 v6, 0x5

    aget v6, v10, v6

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 95
    .local v0, expireDate:Ljava/util/Date;
    const/4 v1, 0x0

    aget v1, v10, v1

    sub-int/2addr v1, v12

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3

    .line 98
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    .line 99
    .local v9, dateFormat:Ljava/text/DateFormat;
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    .end local v9           #dateFormat:Ljava/text/DateFormat;
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;-><init>(Lnet/yostore/aws/view/present/OffLineSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 149
    new-instance v1, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;-><init>(Lnet/yostore/aws/view/present/OffLineSettingActivity;)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void

    .line 88
    .end local v0           #expireDate:Ljava/util/Date;
    .end local v12           #nowY:I
    :cond_4
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v10, v1

    .line 89
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v10, v1

    .line 90
    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v10, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 259
    .line 261
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    return-void
.end method
