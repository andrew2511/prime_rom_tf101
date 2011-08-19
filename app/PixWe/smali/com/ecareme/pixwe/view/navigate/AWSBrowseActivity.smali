.class public Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
.super Landroid/app/ListActivity;
.source "AWSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;,
        Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;,
        Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AWSBrowseActivity"

.field static ctx:Landroid/content/Context;

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field public static root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

.field private btnGoBack:Landroid/widget/ImageButton;

.field private errmsg:Ljava/lang/String;

.field private errrun:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mPath:Landroid/widget/TextView;

.field private mdialog:Landroid/app/ProgressDialog;

.field private nav:Lnet/yostore/aws/handler/NavigateHandler;

.field naviStat:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

.field private topFolder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ctx:Landroid/content/Context;

    .line 47
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->AWS_ROOT:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 45
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    .line 46
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->topFolder:I

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->errmsg:Ljava/lang/String;

    .line 382
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$1;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->errrun:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mPath:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->btnGoBack:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->processdialogdismiss()V

    return-void
.end method

.method static synthetic access$13(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$14(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->naviTo(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V

    return-void
.end method

.method static synthetic access$15(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->importAWS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lnet/yostore/aws/handler/NavigateHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->errrun:Ljava/lang/Runnable;

    return-object v0
.end method

.method private importAWS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "awsFolderName"
    .parameter "folderId"

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "albumName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "awsFolderId"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 423
    const-string v1, "uploadFrom"

    iget v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->topFolder:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method private initHeader()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 226
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 227
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    return-void
.end method

.method private initNavigate()V
    .locals 2

    .prologue
    .line 208
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 209
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$3;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->btnGoBack:Landroid/widget/ImageButton;

    .line 216
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->btnGoBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$4;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method private naviTo(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V
    .locals 3
    .parameter "na"

    .prologue
    const/4 v2, 0x1

    .line 261
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 262
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->naviStat:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    .line 263
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)V

    new-array v1, v2, [Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    return-void
.end method

.method private processdialogdismiss()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 64
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mPath:Landroid/widget/TextView;

    .line 65
    sput-object p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->ctx:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->initHeader()V

    .line 68
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->initNavigate()V

    .line 69
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->initList()V

    .line 73
    :try_start_0
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$2;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v3, v0, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 186
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;

    invoke-direct {v0, p0, v3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 194
    sget-boolean v1, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, _intent:Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->finish()V

    .line 200
    .end local v0           #_intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 56
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 57
    return-void
.end method

.method protected showFolderContextMenu(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 390
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f060099

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const v3, 0x7f06009a

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 391
    .local v1, itemArray:[Ljava/lang/String;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/NavigateHandler;->isTop()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "system."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".home.root"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    iput v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->topFolder:I

    .line 398
    :cond_0
    :goto_0
    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-direct {p0, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->naviTo(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V

    .line 417
    :goto_1
    return-void

    .line 394
    :cond_1
    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    const-string v3, "system.backup.root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    const/4 v2, -0x3

    iput v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->topFolder:I

    goto :goto_0

    .line 396
    :cond_2
    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getMySyncFolder()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v2, -0x5

    iput v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->topFolder:I

    goto :goto_0

    .line 400
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    sget-object v3, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 402
    new-instance v3, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$6;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 415
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method
