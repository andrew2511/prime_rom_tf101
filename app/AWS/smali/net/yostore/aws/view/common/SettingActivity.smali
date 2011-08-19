.class public Lnet/yostore/aws/view/common/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Setting"


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field application:Lcom/ecareme/asuswebstorage/ASUSWebstorage;

.field ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private logoutBt:Landroid/widget/Button;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private referralUrl:Ljava/lang/String;

.field private stp_fts:Landroid/widget/RadioButton;

.field private stp_grp:Landroid/widget/RadioGroup;

.field private stp_sqs:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->handler:Landroid/os/Handler;

    .line 50
    iput-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_grp:Landroid/widget/RadioGroup;

    .line 51
    iput-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_sqs:Landroid/widget/RadioButton;

    .line 52
    iput-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_fts:Landroid/widget/RadioButton;

    .line 397
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->KB:J

    .line 398
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->MB:J

    .line 399
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->GB:J

    .line 400
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->TB:J

    .line 38
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lnet/yostore/aws/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_grp:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_sqs:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/SettingActivity;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lnet/yostore/aws/view/common/SettingActivity;->updateBrowseSort(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_fts:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/common/SettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/SettingActivity;->displayCapacity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/common/SettingActivity;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/common/SettingActivity;->getSizeDisp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/common/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lnet/yostore/aws/view/common/SettingActivity;->tryDeleteAccInfo()V

    return-void
.end method

.method private displayCapacity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capacity"

    .prologue
    .line 387
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, capDsp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 390
    .local v1, capInt:I
    const v2, 0xfa000

    if-ge v1, v2, :cond_0

    .line 391
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

    .line 394
    .end local v1           #capInt:I
    :cond_0
    return-object v0
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 402
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private tryDeleteAccInfo()V
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, awsacc:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
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

    .line 360
    const-string v2, "/asus/webstorage/account.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v0       #awsacc:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateBrowseSort(Ljava/lang/String;II)V
    .locals 3
    .parameter "uid"
    .parameter "sort"
    .parameter "sortByDesc"

    .prologue
    .line 103
    sput p2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    .line 104
    sput p3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    .line 105
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    sget v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v0, p1, v1, v2}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccBrowseSort(Landroid/content/Context;Ljava/lang/String;II)V

    .line 107
    return-void
.end method


# virtual methods
.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 99
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SettingActivity;->finish()V

    .line 100
    return-void
.end method

.method public clearCacheFunction(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 180
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->cacheRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lnet/yostore/aws/ansytask/CacheClearTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Lnet/yostore/aws/ansytask/CacheClearTask;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/CacheClearTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    :cond_0
    return-void
.end method

.method public exitFunction(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 188
    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    const v1, 0x7f060026

    new-instance v2, Lnet/yostore/aws/view/common/SettingActivity$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/SettingActivity$2;-><init>(Lnet/yostore/aws/view/common/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    const v1, 0x7f060027

    new-instance v2, Lnet/yostore/aws/view/common/SettingActivity$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/SettingActivity$3;-><init>(Lnet/yostore/aws/view/common/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return-void
.end method

.method public faqFunction(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    .line 140
    const-string v2, "mailto:contact@asuswebstorage.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v0, it:Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f0600f2

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/yostore/aws/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "Choose Email Client"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public feedBackFunction(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 153
    const-string v2, "http://forum.asuswebstorage.com"

    .line 154
    .local v2, urlStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public logoutFunction(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 160
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    const v2, 0x7f06004d

    new-instance v3, Lnet/yostore/aws/view/common/SettingActivity$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/common/SettingActivity$1;-><init>(Lnet/yostore/aws/view/common/SettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    const v2, 0x7f06004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 177
    .local v0, show:Landroid/app/AlertDialog;
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iput-object p0, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    .line 59
    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->setContentView(I)V

    .line 60
    new-instance v3, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-direct {v3, p0, v6}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;-><init>(Lnet/yostore/aws/view/common/SettingActivity;Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V

    invoke-virtual {v3, v6}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    const v3, 0x7f090059

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->logoutBt:Landroid/widget/Button;

    .line 64
    const v3, 0x7f090055

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_grp:Landroid/widget/RadioGroup;

    .line 65
    const v3, 0x7f090043

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_sqs:Landroid/widget/RadioButton;

    .line 66
    const v3, 0x7f090044

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_fts:Landroid/widget/RadioButton;

    .line 67
    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    packed-switch v3, :pswitch_data_0

    .line 75
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_sqs:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    :goto_0
    :try_start_0
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, manager:Landroid/content/pm/PackageManager;
    const-string v3, "com.asus.webstorage.id"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    .local v0, appInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->logoutBt:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 69
    :pswitch_0
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_sqs:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->stp_fts:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 85
    .restart local v0       #appInfo:Landroid/content/pm/PackageInfo;
    .restart local v2       #manager:Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->logoutBt:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 88
    .end local v0           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 91
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity;->logoutBt:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 382
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SettingActivity;->backFunction(Landroid/view/View;)V

    .line 380
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public referralFunction(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, it:Landroid/content/Intent;
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v6

    .line 121
    .local v1, tos:[Ljava/lang/String;
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f0600e8

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0600e9

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br><a href = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/common/SettingActivity;->referralUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0600ea

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a><a href=\'http://www.youtube.com/user/asuswebstorage?feature=mhsn#p/u/5/zpLTDeSx8aU\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0600eb

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 124
    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f0600e7

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lnet/yostore/aws/view/common/SettingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "Choose Email Client"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public watchAWSVideo(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 129
    const-string v2, "https://www.asuswebstorage.com/navigate/clips/?n=0"

    .line 130
    .local v2, urlStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
