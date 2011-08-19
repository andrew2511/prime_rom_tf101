.class public Lcom/newspaperdirect/pressreader/android/core/Sharing;
.super Ljava/lang/Object;
.source "Sharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
    }
.end annotation


# instance fields
.field private mAccessSecret:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

.field private mType:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 0
    .parameter "activity"
    .parameter "article"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 48
    return-void
.end method

.method private TryAuthorize()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mArticle:Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mType:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mAccessSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->TryAuthorize()V

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mAccessSecret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->message:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v1, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    const v6, 0x7f09000b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 60
    .local v2, mProgressDialog:Landroid/app/ProgressDialog;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Landroid/app/ProgressDialog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Landroid/content/Context;)V

    new-array v5, v8, [Ljava/lang/Void;

    .line 145
    const/4 v6, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 147
    .local v3, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 148
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Landroid/os/AsyncTask;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method


# virtual methods
.method public share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mType:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    .line 195
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mType:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v5, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Email:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-eq v4, v5, :cond_0

    .line 197
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 226
    .local v1, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    const v6, 0x7f09000b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 229
    .local v2, mProgressDialog:Landroid/app/ProgressDialog;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

    invoke-direct {v4, p0, v2, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Landroid/app/ProgressDialog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    new-array v5, v8, [Ljava/lang/Void;

    .line 306
    const/4 v6, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 308
    .local v3, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 309
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/Sharing$6;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Landroid/os/AsyncTask;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method
