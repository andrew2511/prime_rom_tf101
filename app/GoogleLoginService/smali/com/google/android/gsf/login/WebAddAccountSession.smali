.class public Lcom/google/android/gsf/login/WebAddAccountSession;
.super Ljava/lang/Object;
.source "WebAddAccountSession.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccountCreationUrl:Ljava/lang/String;

.field private mContinueUrl:Ljava/lang/String;

.field private mFinalUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "GoogleLoginService"

    iput-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mFinalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "https://mail.google.com/mail/signup"

    return-object v0
.end method

.method public getRedirUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mAccountCreationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isInitialPage(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www.google.com/accounts/NewAccount"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPageStart(Ljava/lang/String;)I
    .locals 13
    .parameter "url"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 95
    const-string v8, "GoogleLoginService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 96
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onUrlLoad: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const/4 v6, 0x0

    .line 105
    .local v6, strippedUrl:Ljava/lang/String;
    const/4 v5, 0x0

    .line 108
    .local v5, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 109
    .local v7, uri:Ljava/net/URI;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    const-string v8, "GoogleLoginService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strippedUrl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 117
    .end local v7           #uri:Ljava/net/URI;
    :goto_0
    iget-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    if-nez v8, :cond_3

    if-eqz v5, :cond_3

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    .local v3, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 121
    .local v4, param:Lorg/apache/http/NameValuePair;
    const-string v8, "continue"

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, continueParam:Ljava/lang/String;
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, continueUri:Ljava/net/URI;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    .line 126
    const-string v8, "GoogleLoginService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mContinueURl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 129
    .end local v0           #continueParam:Ljava/lang/String;
    .end local v1           #continueUri:Ljava/net/URI;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 114
    .end local v3           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #param:Lorg/apache/http/NameValuePair;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 115
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception parsing url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v2           #e:Ljava/net/URISyntaxException;
    :cond_3
    if-eqz v6, :cond_5

    const-string v8, "www.google.com/accounts/NewAccount"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 145
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "btmpl=android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "btmpl=android"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mAccountCreationUrl:Ljava/lang/String;

    .line 148
    const-string v8, "GoogleLoginService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 149
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "redirecting to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mAccountCreationUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v8, v11

    .line 168
    :goto_2
    return v8

    .line 156
    :cond_5
    iget-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    iget-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 158
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mFinalUrl:Ljava/lang/String;

    move v8, v12

    .line 159
    goto :goto_2

    .line 163
    :cond_6
    iget-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 164
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mFinalUrl:Ljava/lang/String;

    move v8, v12

    .line 165
    goto :goto_2

    .line 168
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 131
    .restart local v3       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #param:Lorg/apache/http/NameValuePair;
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method

.method public setContinueUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountSession;->mContinueUrl:Ljava/lang/String;

    .line 80
    return-void
.end method
