.class public Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;
.super Ljava/lang/Object;
.source "BrowserAuthRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;,
        Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;,
        Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

.field private static final PARAM_AUTH_TOKEN_SOURCE:Ljava/lang/String;

.field private static final TOKEN_AUTH_URL:Landroid/net/Uri;


# instance fields
.field private account:Landroid/accounts/Account;

.field private final mAuthTokenService:Ljava/lang/String;

.field private mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/config/G;->authTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->PARAM_AUTH_TOKEN_SOURCE:Ljava/lang/String;

    .line 59
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    .line 66
    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->TOKEN_AUTH_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;)V
    .locals 0
    .parameter "queue"
    .parameter "url"
    .parameter "accountName"
    .parameter "authTokenService"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p5, listener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;,"Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 104
    iput-object p5, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    .line 105
    iput-object p2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mUrl:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mAuthTokenService:Ljava/lang/String;

    .line 107
    invoke-direct {p0, p3}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->getSidToken(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;)Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->deliverUri(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deliverUri(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "error"
    .parameter "message"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;->onResponse(Ljava/lang/Object;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private getSidToken(Ljava/lang/String;)V
    .locals 7
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->account:Landroid/accounts/Account;

    .line 117
    new-instance v5, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;

    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->account:Landroid/accounts/Account;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;-><init>(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/accounts/Account;)V

    .line 118
    .local v5, callback:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 119
    .local v0, am:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->account:Landroid/accounts/Account;

    const-string v2, "SID"

    iget-object v4, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mListener:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    invoke-interface {v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 120
    return-void
.end method

.method private getUberToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sid"
    .parameter "lsid"

    .prologue
    .line 188
    sget-object v2, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "SID"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "LSID"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    invoke-direct {v0, v1, p0, p0}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 191
    .local v0, request:Lcom/android/volley/toolbox/StringRequest;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)V

    .line 192
    iget-object v2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 193
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->deliverUri(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 212
    sget-object v2, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->TOKEN_AUTH_URL:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "service"

    iget-object v4, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mAuthTokenService:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "source"

    sget-object v4, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->PARAM_AUTH_TOKEN_SOURCE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "auth"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "continue"

    iget-object v4, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 217
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/volley/Response$ErrorCode;->OK:Lcom/android/volley/Response$ErrorCode;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->deliverUri(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 219
    return-void
.end method
