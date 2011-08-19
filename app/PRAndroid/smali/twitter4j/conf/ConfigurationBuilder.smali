.class public final Ltwitter4j/conf/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"


# instance fields
.field private configurationBean:Ltwitter4j/conf/ConfigurationBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-void
.end method

.method private checkNotBuilt()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this builder any longer, build() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Ltwitter4j/conf/Configuration;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 291
    :try_start_0
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    throw v0
.end method

.method public setAsyncNumThreads(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "asyncNumThreads"

    .prologue
    .line 235
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 236
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 237
    return-object p0
.end method

.method public setClientURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "clientURL"

    .prologue
    .line 247
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 248
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 249
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "clientVersion"

    .prologue
    .line 241
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 242
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 243
    return-object p0
.end method

.method public setDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "debugEnabled"

    .prologue
    .line 54
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 55
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 56
    return-object p0
.end method

.method public setDispatcherImpl(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "dispatcherImpl"

    .prologue
    .line 253
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 254
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 255
    return-object p0
.end method

.method public setHttpConnectionTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpConnectionTimeout"

    .prologue
    .line 114
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 115
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 116
    return-object p0
.end method

.method public setHttpDefaultMaxPerRoute(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpDefaultMaxPerRoute"

    .prologue
    .line 145
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 146
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V

    .line 147
    return-object p0
.end method

.method public setHttpMaxTotalConnections(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpMaxConnections"

    .prologue
    .line 139
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 140
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V

    .line 141
    return-object p0
.end method

.method public setHttpProxyHost(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyHost"

    .prologue
    .line 90
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 91
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public setHttpProxyPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyPassword"

    .prologue
    .line 102
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 103
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 104
    return-object p0
.end method

.method public setHttpProxyPort(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyPort"

    .prologue
    .line 108
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 109
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 110
    return-object p0
.end method

.method public setHttpProxyUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpProxyUser"

    .prologue
    .line 96
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 97
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 98
    return-object p0
.end method

.method public setHttpReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpReadTimeout"

    .prologue
    .line 120
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 121
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 122
    return-object p0
.end method

.method public setHttpRetryCount(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpRetryCount"

    .prologue
    .line 132
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 133
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 134
    return-object p0
.end method

.method public setHttpRetryIntervalSeconds(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpRetryIntervalSeconds"

    .prologue
    .line 151
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 152
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 153
    return-object p0
.end method

.method public setHttpStreamingReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "httpStreamingReadTimeout"

    .prologue
    .line 126
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 127
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 128
    return-object p0
.end method

.method public setIncludeEntitiesEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 265
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 266
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeEntitiesEnbled(Z)V

    .line 267
    return-object p0
.end method

.method public setIncludeRTsEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 259
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 260
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 261
    return-object p0
.end method

.method public setMediaProvider(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "mediaProvider"

    .prologue
    .line 277
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 278
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V

    .line 279
    return-object p0
.end method

.method public setMediaProviderAPIKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "mediaProviderAPIKey"

    .prologue
    .line 283
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 284
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 285
    return-object p0
.end method

.method public setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessToken"

    .prologue
    .line 169
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 170
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 171
    return-object p0
.end method

.method public setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessTokenSecret"

    .prologue
    .line 175
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 176
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 177
    return-object p0
.end method

.method public setOAuthAccessTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAccessTokenURL"

    .prologue
    .line 193
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 194
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 195
    return-object p0
.end method

.method public setOAuthAuthenticationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAuthenticationURL"

    .prologue
    .line 199
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 200
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public setOAuthAuthorizationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthAuthorizationURL"

    .prologue
    .line 187
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 188
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 189
    return-object p0
.end method

.method public setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthConsumerKey"

    .prologue
    .line 157
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 158
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 159
    return-object p0
.end method

.method public setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthConsumerSecret"

    .prologue
    .line 163
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 164
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 165
    return-object p0
.end method

.method public setOAuthRequestTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "oAuthRequestTokenURL"

    .prologue
    .line 181
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 182
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 183
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "password"

    .prologue
    .line 84
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 85
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public setPrettyDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "prettyDebugEnabled"

    .prologue
    .line 48
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 49
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V

    .line 50
    return-object p0
.end method

.method public setRestBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "restBaseURL"

    .prologue
    .line 205
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 206
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 207
    return-object p0
.end method

.method public setSearchBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "searchBaseURL"

    .prologue
    .line 211
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 212
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 213
    return-object p0
.end method

.method public setSiteStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "siteStreamBaseURL"

    .prologue
    .line 229
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 230
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 231
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "source"

    .prologue
    .line 66
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 67
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSource(Ljava/lang/String;)V

    .line 68
    return-object p0
.end method

.method public setStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "streamBaseURL"

    .prologue
    .line 217
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 218
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 219
    return-object p0
.end method

.method public setUseSSL(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "useSSL"

    .prologue
    .line 42
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 43
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 44
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "user"

    .prologue
    .line 78
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 79
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 72
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 73
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public setUserStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "userStreamBaseURL"

    .prologue
    .line 223
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 224
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setUserStreamRepliesAllEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 271
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V

    .line 272
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V

    .line 273
    return-object p0
.end method
