.class public Lcom/android/browser/GoogleAccountLogin;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static final TOKEN_AUTH_URL:Landroid/net/Uri;


# instance fields
.field private ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mLsid:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSid:Ljava/lang/String;

.field private mState:I

.field private mTokensInvalidated:Z

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/GoogleAccountLogin;->TOKEN_AUTH_URL:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "activity"
    .parameter "account"
    .parameter "runnable"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object p2, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    .line 82
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    .line 83
    iput-object p3, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    .line 88
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 89
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 91
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/GoogleAccountLogin$1;

    invoke-direct {v1, p0}, Lcom/android/browser/GoogleAccountLogin$1;-><init>(Lcom/android/browser/GoogleAccountLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/GoogleAccountLogin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->saveLoginTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/GoogleAccountLogin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/GoogleAccountLogin;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/GoogleAccountLogin;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private declared-synchronized done()V
    .locals 4

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "BrowserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished login attempt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/GoogleAccountLogin$3;

    invoke-direct {v1, p0}, Lcom/android/browser/GoogleAccountLogin$3;-><init>(Lcom/android/browser/GoogleAccountLogin;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    .line 297
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 264
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private invalidateTokens()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 190
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 191
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-boolean v4, p0, Lcom/android/browser/GoogleAccountLogin;->mTokensInvalidated:Z

    .line 194
    iput v4, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 195
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "SID"

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 196
    return-void
.end method

.method private static isLoggedIn(Landroid/content/Context;)Z
    .locals 6
    .parameter "ctx"

    .prologue
    const-wide/16 v4, -0x1

    .line 270
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 273
    .local v0, lastLogin:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 274
    const/4 v2, 0x0

    .line 276
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveLoginTime()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_autologin_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method private startLogin()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 251
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0900a0

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 258
    iput v3, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 259
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "SID"

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v3, v8

    move-object v5, p0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 261
    return-void
.end method

.method public static startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 233
    invoke-static {p0}, Lcom/android/browser/GoogleAccountLogin;->isLoggedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 248
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/android/browser/GoogleAccountLogin;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 240
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 241
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v1, Lcom/android/browser/GoogleAccountLogin;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/browser/GoogleAccountLogin;-><init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/Runnable;)V

    .line 247
    .local v1, login:Lcom/android/browser/GoogleAccountLogin;
    invoke-direct {v1}, Lcom/android/browser/GoogleAccountLogin;->startLogin()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "unused"

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    .line 304
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 114
    iget-object v10, p0, Lcom/android/browser/GoogleAccountLogin;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "SID"

    iget-object v12, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "LSID"

    iget-object v12, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, url:Ljava/lang/String;
    const/4 v8, 0x0

    .line 121
    .local v8, ua:Ljava/lang/String;
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v10, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_0

    .line 123
    monitor-exit p0

    .line 187
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v10, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 129
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v6, 0x0

    .line 133
    .local v6, result:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 134
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 135
    .local v7, status:I
    const/16 v10, 0xc8

    if-eq v7, v10, :cond_2

    .line 136
    const-string v10, "BrowserLogin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LOGIN_FAIL: Bad status from auth url "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v10, 0x193

    if-ne v7, v10, :cond_1

    iget-boolean v10, p0, Lcom/android/browser/GoogleAccountLogin;->mTokensInvalidated:Z

    if-nez v10, :cond_1

    .line 142
    const-string v10, "BrowserLogin"

    const-string v11, "LOGIN_FAIL: Invalidating tokens..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->invalidateTokens()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 126
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #status:I
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 150
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v4       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #result:Ljava/lang/String;
    .restart local v7       #status:I
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 154
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_3

    .line 155
    const-string v10, "BrowserLogin"

    const-string v11, "LOGIN_FAIL: Null entity in response"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 159
    :cond_3
    :try_start_5
    const-string v10, "UTF-8"

    invoke-static {v2, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 168
    sget-object v10, Lcom/android/browser/GoogleAccountLogin;->TOKEN_AUTH_URL:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "source"

    const-string v12, "android-browser"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "auth"

    invoke-virtual {v10, v11, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "continue"

    iget-object v12, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, newUrl:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    new-instance v11, Lcom/android/browser/GoogleAccountLogin$2;

    invoke-direct {v11, p0, v3}, Lcom/android/browser/GoogleAccountLogin$2;-><init>(Lcom/android/browser/GoogleAccountLogin;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 160
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #newUrl:Ljava/lang/String;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 161
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "BrowserLogin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LOGIN_FAIL: Exception acquiring uber token "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 163
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v10
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, id:Ljava/lang/String;
    iget v0, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible to get into this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v8           #id:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 221
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "BrowserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOGIN_FAIL: Exception in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    .line 226
    .end local v7           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 210
    .restart local v8       #id:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iput-object v8, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 212
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "LSID"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 216
    :pswitch_1
    iput-object v8, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
