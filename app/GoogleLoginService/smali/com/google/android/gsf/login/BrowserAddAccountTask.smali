.class public Lcom/google/android/gsf/login/BrowserAddAccountTask;
.super Landroid/os/AsyncTask;
.source "BrowserAddAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenSecret:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCookies:Ljava/lang/String;

.field private mLoginData:Lcom/google/android/gsf/LoginData;

.field private mRequestToken:Ljava/lang/String;

.field private mRequestTokenSecret:Ljava/lang/String;

.field private mRequestTokenVerifier:Ljava/lang/String;

.field private mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

.field private mTaskCompletionCallback:Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;

.field private mUpdateAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;Lcom/google/android/gsf/login/WebAddAccountSession;Ljava/lang/String;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "context"
    .parameter "updateAccount"
    .parameter "taskCompletionCallback"
    .parameter "session"
    .parameter "requestTokenSecret"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/gsf/LoginData;

    invoke-direct {v0}, Lcom/google/android/gsf/LoginData;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 107
    iput-object p4, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mTaskCompletionCallback:Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;

    .line 108
    iput-object p2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    .line 109
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    iput-object p3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mUpdateAccount:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    .line 112
    iput-object p6, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenSecret:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private addCookies(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 12
    .parameter "cookies"
    .parameter "httpclient"
    .parameter "domain"

    .prologue
    const/4 v11, 0x2

    .line 132
    const-string v8, "GoogleLoginService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    const-string v8, "GoogleLoginService"

    const-string v9, "addCookies()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const-string v8, "\\;"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 136
    .local v2, cookie:Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 137
    .local v3, equals:I
    if-ltz v3, :cond_2

    .line 138
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, name:Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, value:Ljava/lang/String;
    const-string v8, "GoogleLoginService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v1, v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v1, clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v1, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 135
    .end local v1           #clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v2           #cookie:Ljava/lang/String;
    .end local v3           #equals:I
    :cond_3
    return-void
.end method

.method private createAccount()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 290
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 291
    .local v0, accountManager:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iput v4, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 292
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    const-string v2, "1"

    iput-object v2, v1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iput-object v2, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 297
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->tryNewAccountInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V

    .line 299
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-eq v1, v2, :cond_0

    .line 300
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryNewAccountInternal() error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 318
    :goto_0
    return v1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mUpdateAccount:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mUpdateAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryNewAccountInternal() wrong username "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mUpdateAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->updateOAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 315
    goto :goto_0
.end method

.method private getAccessToken()I
    .locals 24

    .prologue
    .line 222
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v13, oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenVerifier:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 224
    const-string v17, "oauth_verifier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenVerifier:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    new-instance v12, Lnet/oauth/OAuthConsumer;

    const-string v17, "*not-used*"

    const-string v18, "anonymous"

    const-string v19, "anonymous"

    new-instance v20, Lnet/oauth/OAuthServiceProvider;

    const-string v21, "*not-used*"

    const-string v22, "*not-used*"

    const-string v23, "*not-used*"

    invoke-direct/range {v20 .. v23}, Lnet/oauth/OAuthServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oauth/OAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V

    .line 230
    .local v12, oauthConsumer:Lnet/oauth/OAuthConsumer;
    new-instance v5, Lnet/oauth/OAuthAccessor;

    invoke-direct {v5, v12}, Lnet/oauth/OAuthAccessor;-><init>(Lnet/oauth/OAuthConsumer;)V

    .line 231
    .local v5, accessor:Lnet/oauth/OAuthAccessor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestToken:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenVerifier:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenSecret:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenSecret:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    .line 238
    :goto_0
    const-string v17, "GET"

    const-string v18, "https://www.google.com/accounts/OAuthGetAccessToken"

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lnet/oauth/OAuthAccessor;->newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v11

    .line 240
    .local v11, message:Lnet/oauth/OAuthMessage;
    const-string v17, "https://www.google.com/accounts/OAuthGetAccessToken"

    invoke-virtual {v11}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/oauth/OAuth;->addParameters(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    .line 242
    .local v16, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v8

    .line 243
    .local v8, httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/HttpHelper;->requestUrl(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 244
    .local v15, response:Lorg/apache/http/HttpResponse;
    const-string v6, ""

    .line 245
    .local v6, body:Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 246
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 249
    :cond_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 268
    const-string v17, "GoogleLoginService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v17, 0x1

    .line 282
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :goto_1
    return v17

    .line 235
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;
    :try_end_0
    .catch Lnet/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 271
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 272
    .local v7, e:Lnet/oauth/OAuthException;
    const-string v17, "GoogleLoginService"

    const-string v18, "oauth handling exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/16 v17, 0x1

    goto :goto_1

    .line 252
    .end local v7           #e:Lnet/oauth/OAuthException;
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-static {v6}, Lnet/oauth/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 253
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 254
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 255
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oauth/OAuth$Parameter;

    .line 256
    .local v14, p:Lnet/oauth/OAuth$Parameter;
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_TOKEN_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 257
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessToken:Ljava/lang/String;
    :try_end_1
    .catch Lnet/oauth/OAuthException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 274
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #p:Lnet/oauth/OAuth$Parameter;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 275
    .local v7, e:Ljava/io/IOException;
    const-string v17, "GoogleLoginService"

    const-string v18, "oauth handling exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/16 v17, 0x1

    goto :goto_1

    .line 258
    .end local v7           #e:Ljava/io/IOException;
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #p:Lnet/oauth/OAuth$Parameter;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_TOKEN_SECRET_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 259
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessTokenSecret:Ljava/lang/String;
    :try_end_2
    .catch Lnet/oauth/OAuthException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 277
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #p:Lnet/oauth/OAuth$Parameter;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_2
    move-exception v17

    move-object/from16 v7, v17

    .line 278
    .local v7, e:Ljava/net/URISyntaxException;
    const-string v17, "GoogleLoginService"

    const-string v18, "oauth handling exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 262
    .end local v7           #e:Ljava/net/URISyntaxException;
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessToken:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mAccessTokenSecret:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Lnet/oauth/OAuthException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 280
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_3
    move-exception v17

    move-object/from16 v7, v17

    .line 281
    .local v7, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v17, "GoogleLoginService"

    const-string v18, "exception getting access token "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestToken()I
    .locals 20

    .prologue
    .line 156
    :try_start_0
    const-string v18, "GoogleLoginService"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 157
    const-string v18, "GoogleLoginService"

    const-string v19, "getRequestToken()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/WebAddAccountSession;->getFinalUrl()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 162
    .local v6, finalUrl:Ljava/lang/String;
    :try_start_1
    new-instance v16, Ljava/net/URI;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 163
    .local v16, uri:Ljava/net/URI;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 165
    .local v13, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v13, :cond_5

    .line 166
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 167
    .local v10, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 168
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/NameValuePair;

    .line 169
    .local v12, param:Lorg/apache/http/NameValuePair;
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_TOKEN_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 170
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 179
    .end local v10           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v12           #param:Lorg/apache/http/NameValuePair;
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16           #uri:Ljava/net/URI;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 181
    .local v5, e:Ljava/net/URISyntaxException;
    :try_start_2
    const-string v18, "oAuthURL was not a valid URI"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v5           #e:Ljava/net/URISyntaxException;
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v18

    const-string v19, "https://www.google.com/accounts/o8/GetOAuthToken?scope=https://www.google.com/accounts/OAuthLogin&xoauth_display_name=Login%20Service"

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mCookies:Ljava/lang/String;

    .line 186
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 187
    .local v7, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mCookies:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "https://www.google.com/accounts/o8/GetOAuthToken?scope=https://www.google.com/accounts/OAuthLogin&xoauth_display_name=Login%20Service"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->addCookies(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 188
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    const-string v18, "https://www.google.com/accounts/o8/GetOAuthToken?scope=https://www.google.com/accounts/OAuthLogin&xoauth_display_name=Login%20Service"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    .local v8, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v7, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 191
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v15

    .line 192
    .local v15, resultCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v15, :cond_6

    .line 193
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 194
    .local v4, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, name:Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 196
    .local v17, value:Ljava/lang/String;
    const-string v18, "oauth_token"

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 197
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestToken:Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 206
    .end local v4           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v6           #finalUrl:Ljava/lang/String;
    .end local v7           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #resultCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v17           #value:Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 207
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v18, "GoogleLoginService"

    const-string v19, "exception getting request token "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/16 v18, 0x1

    .line 213
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    return v18

    .line 171
    .restart local v6       #finalUrl:Ljava/lang/String;
    .restart local v10       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .restart local v12       #param:Lorg/apache/http/NameValuePair;
    .restart local v13       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16       #uri:Ljava/net/URI;
    :cond_4
    :try_start_3
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_VERIFIER_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 172
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestTokenVerifier:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 209
    .end local v6           #finalUrl:Ljava/lang/String;
    .end local v10           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v12           #param:Lorg/apache/http/NameValuePair;
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16           #uri:Ljava/net/URI;
    :catch_2
    move-exception v18

    move-object/from16 v5, v18

    .line 210
    .local v5, e:Ljava/io/IOException;
    const-string v18, "GoogleLoginService"

    const-string v19, "exception getting request token "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/16 v18, 0x1

    goto :goto_2

    .line 176
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #finalUrl:Ljava/lang/String;
    .restart local v13       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16       #uri:Ljava/net/URI;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestToken:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v18

    if-nez v18, :cond_2

    .line 177
    const/16 v18, 0x0

    goto :goto_2

    .line 201
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16           #uri:Ljava/net/URI;
    .restart local v7       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #resultCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mRequestToken:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 202
    const-string v18, "GoogleLoginService"

    const-string v19, "no request token cookie found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 203
    const/16 v18, 0x1

    goto :goto_2

    .line 213
    :cond_7
    const/16 v18, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->getRequestToken()I

    move-result v0

    .line 118
    .local v0, interimResult:I
    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->getAccessToken()I

    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->createAccount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mTaskCompletionCallback:Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;->onAddAccountTaskComplete(ILcom/google/android/gsf/LoginData;)V

    .line 324
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
