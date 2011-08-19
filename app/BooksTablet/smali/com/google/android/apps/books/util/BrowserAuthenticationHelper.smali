.class public Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;
.super Ljava/lang/Object;
.source "BrowserAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;,
        Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;,
        Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;
    }
.end annotation


# static fields
.field private static final ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri; = null

.field private static final PARAM_AUTH:Ljava/lang/String; = "auth"

.field private static final PARAM_CONTINUATION:Ljava/lang/String; = "continue"

.field private static final TAG:Ljava/lang/String; = "BrowserAuthenticationHelper"

.field private static final TOKEN_AUTH_URL:Landroid/net/Uri;


# instance fields
.field private mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

.field private final mContinuationUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    .line 65
    const-string v0, "https://www.google.com/accounts/TokenAuth?service=print&source=print"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->TOKEN_AUTH_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "client"
    .parameter "accountName"
    .parameter "continuationUrl"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    .line 81
    iput-object p3, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mContinuationUrl:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->getSidToken(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private abort()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->deliverResult(Landroid/content/Intent;Ljava/lang/Exception;)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->abort()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->intentForToken(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->deliverResult(Landroid/content/Intent;Ljava/lang/Exception;)V

    return-void
.end method

.method private deliverResult(Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 1
    .parameter "intent"
    .parameter "exception"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->finished(Landroid/content/Intent;Ljava/lang/Exception;)V

    .line 202
    :cond_0
    return-void
.end method

.method private getSidToken(Ljava/lang/String;)V
    .locals 7
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v1, account:Landroid/accounts/Account;
    new-instance v5, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;-><init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Landroid/accounts/Account;)V

    .line 93
    .local v5, callback:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$SidTokenHandler;
    iget-object v2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 94
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v2, "SID"

    iget-object v4, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v4}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 95
    return-void
.end method

.method private getUberToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sid"
    .parameter "lsid"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$1;-><init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    .end local v0           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private intentForToken(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "token"

    .prologue
    .line 191
    sget-object v2, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->TOKEN_AUTH_URL:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "auth"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "continue"

    iget-object v4, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mContinuationUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 193
    .local v0, builder:Landroid/net/Uri$Builder;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v1, result:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    return-object v1
.end method


# virtual methods
.method public setClient(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;

    .line 88
    return-void
.end method
