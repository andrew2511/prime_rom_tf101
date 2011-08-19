.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;


# static fields
.field public static final DALVIK:Ljava/lang/String; = "twitter4j.dalvik"

.field private static final DEFAULT_OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/access_token"

.field private static final DEFAULT_OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authenticate"

.field private static final DEFAULT_OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authorize"

.field private static final DEFAULT_OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/request_token"

.field private static final DEFAULT_REST_BASE_URL:Ljava/lang/String; = "http://api.twitter.com/1/"

.field private static final DEFAULT_SEARCH_BASE_URL:Ljava/lang/String; = "http://search.twitter.com/"

.field private static final DEFAULT_SITE_STREAM_BASE_URL:Ljava/lang/String; = "https://betastream.twitter.com/2b/"

.field private static final DEFAULT_STREAM_BASE_URL:Ljava/lang/String; = "http://stream.twitter.com/1/"

.field private static final DEFAULT_USER_STREAM_BASE_URL:Ljava/lang/String; = "https://userstream.twitter.com/2/"

.field static dalvikDetected:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x5bbd3477f3537f08L


# instance fields
.field private IS_DALVIK:Z

.field private asyncNumThreads:I

.field private clientURL:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private debug:Z

.field private defaultMaxPerRoute:I

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEntitiesEnabled:Z

.field private includeRTsEnabled:Z

.field private maxTotalConnections:I

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private prettyDebug:Z

.field requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private restBaseURL:Ljava/lang/String;

.field private searchBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private streamBaseURL:Ljava/lang/String;

.field private useSSL:Z

.field private user:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 118
    const-string v1, "true"

    sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    const-string v1, "false"

    sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V

    .line 126
    const-string v2, "Twitter4J"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSource(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V

    .line 130
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V

    .line 131
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 134
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V

    .line 135
    const/16 v2, 0x4e20

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V

    .line 136
    const v2, 0x1d4c0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V

    .line 137
    const v2, 0x493e0

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V

    .line 138
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V

    .line 139
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V

    .line 140
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V

    .line 141
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V

    .line 142
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V

    .line 147
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://twitter4j.org/en/twitter4j-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "twitter4j http://twitter4j.org/ /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 153
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setIncludeEntitiesEnbled(Z)V

    .line 156
    const-string v2, "http://api.twitter.com/oauth/request_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 157
    const-string v2, "http://api.twitter.com/oauth/authorize"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 158
    const-string v2, "http://api.twitter.com/oauth/access_token"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 159
    const-string v2, "http://api.twitter.com/oauth/authenticate"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 161
    const-string v2, "http://api.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V

    .line 164
    const-string v2, "http://search.twitter.com/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSearchBaseURL(Ljava/lang/String;)V

    .line 167
    const-string v2, "http://stream.twitter.com/1/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V

    .line 168
    const-string v2, "https://userstream.twitter.com/2/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 169
    const-string v2, "https://betastream.twitter.com/2b/"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 171
    const-string v2, "twitter4j.internal.async.DispatcherImpl"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V

    .line 174
    invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V

    .line 177
    :try_start_0
    const-string v2, "twitter4j.dalvik"

    sget-object v3, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    .local v1, isDalvik:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    .line 184
    const-string v2, "YFROG"

    invoke-virtual {p0, v2}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v4}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 186
    return-void

    .line 178
    .end local v1           #isDalvik:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 180
    .local v0, ignore:Ljava/lang/SecurityException;
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;

    .restart local v1       #isDalvik:Ljava/lang/String;
    goto :goto_0
.end method

.method private fixRestBaseURL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    const-string v0, "http://api.twitter.com/1/"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v2, v0}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 438
    :cond_0
    :goto_0
    const-string v0, "http://api.twitter.com/oauth/access_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 441
    :cond_1
    const-string v0, "http://api.twitter.com/oauth/authenticate"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 444
    :cond_2
    const-string v0, "http://api.twitter.com/oauth/authorize"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 447
    :cond_3
    const-string v0, "http://api.twitter.com/oauth/request_token"

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 450
    :cond_4
    return-void

    .line 435
    :cond_5
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    goto :goto_0
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "useSSL"
    .parameter "url"

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    const/4 v2, 0x0

    .line 671
    :goto_0
    return-object v2

    .line 663
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 665
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url should contain \'://\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_1
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, hostAndLater:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 669
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 671
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initRequestHeaders()V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    .line 253
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAsyncNumThreads()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    return v0
.end method

.method public final getHttpDefaultMaxPerRoute()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    return v0
.end method

.method public final getHttpMaxTotalConnections()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    return v0
.end method

.method public final getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpProxyPort()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    return v0
.end method

.method public final getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    return v0
.end method

.method public final getHttpRetryCount()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return v0
.end method

.method public final getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v1, :cond_0

    move v0, v4

    .line 571
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 572
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 573
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 574
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    add-int v0, v1, v2

    .line 575
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_5
    add-int v0, v1, v2

    .line 576
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v1, v2

    .line 577
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v1, v2

    .line 578
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v1, v2

    .line 579
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    add-int v0, v1, v2

    .line 580
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    add-int v0, v1, v2

    .line 581
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    add-int v0, v1, v2

    .line 582
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int v0, v1, v2

    .line 583
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int v0, v1, v2

    .line 584
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int v0, v1, v2

    .line 585
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    add-int v0, v1, v2

    .line 586
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    add-int v0, v1, v2

    .line 587
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v1, v2

    .line 588
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v1, v2

    .line 589
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v1, v2

    .line 590
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v1, v2

    .line 591
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v1, v2

    .line 592
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v1, v2

    .line 593
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int v0, v1, v2

    .line 594
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int v0, v1, v2

    .line 595
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int v0, v1, v2

    .line 596
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int v0, v1, v2

    .line 597
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int v0, v1, v2

    .line 598
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int v0, v1, v2

    .line 599
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int v0, v1, v2

    .line 600
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int v0, v1, v2

    .line 601
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int v0, v1, v2

    .line 602
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    if-eqz v2, :cond_17

    move v2, v4

    :goto_17
    add-int v0, v1, v2

    .line 603
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eqz v2, :cond_18

    move v2, v4

    :goto_18
    add-int v0, v1, v2

    .line 604
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v1, v2

    .line 605
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int v0, v1, v2

    .line 606
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    if-eqz v2, :cond_1b

    move v2, v4

    :goto_1b
    add-int v0, v1, v2

    .line 607
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1c
    add-int v0, v1, v2

    .line 608
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d
    add-int v0, v1, v2

    .line 609
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1e
    add-int v0, v1, v2

    .line 610
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 570
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 571
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 572
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 573
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 574
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 575
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 576
    goto/16 :goto_6

    :cond_7
    move v2, v3

    .line 577
    goto/16 :goto_7

    :cond_8
    move v2, v3

    .line 578
    goto/16 :goto_8

    :cond_9
    move v2, v3

    .line 587
    goto/16 :goto_9

    :cond_a
    move v2, v3

    .line 588
    goto/16 :goto_a

    :cond_b
    move v2, v3

    .line 589
    goto/16 :goto_b

    :cond_c
    move v2, v3

    .line 590
    goto/16 :goto_c

    :cond_d
    move v2, v3

    .line 591
    goto/16 :goto_d

    :cond_e
    move v2, v3

    .line 592
    goto/16 :goto_e

    :cond_f
    move v2, v3

    .line 593
    goto/16 :goto_f

    :cond_10
    move v2, v3

    .line 594
    goto/16 :goto_10

    :cond_11
    move v2, v3

    .line 595
    goto/16 :goto_11

    :cond_12
    move v2, v3

    .line 596
    goto/16 :goto_12

    :cond_13
    move v2, v3

    .line 597
    goto/16 :goto_13

    :cond_14
    move v2, v3

    .line 598
    goto/16 :goto_14

    :cond_15
    move v2, v3

    .line 599
    goto/16 :goto_15

    :cond_16
    move v2, v3

    .line 600
    goto/16 :goto_16

    :cond_17
    move v2, v3

    .line 602
    goto/16 :goto_17

    :cond_18
    move v2, v3

    .line 603
    goto/16 :goto_18

    :cond_19
    move v2, v3

    .line 604
    goto/16 :goto_19

    :cond_1a
    move v2, v3

    .line 605
    goto/16 :goto_1a

    :cond_1b
    move v2, v3

    .line 606
    goto :goto_1b

    :cond_1c
    move v2, v3

    .line 607
    goto :goto_1c

    :cond_1d
    move v2, v3

    .line 608
    goto :goto_1d

    :cond_1e
    move v2, v3

    .line 609
    goto :goto_1e
.end method

.method public final isDalvik()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    return v0
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0
.end method

.method public isIncludeRTsEnabled()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return v0
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0
    .parameter "asyncNumThreads"

    .prologue
    .line 400
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 401
    return-void
.end method

.method protected final setClientURL(Ljava/lang/String;)V
    .locals 0
    .parameter "clientURL"

    .prologue
    .line 417
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 419
    return-void
.end method

.method protected final setClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "clientVersion"

    .prologue
    .line 408
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 410
    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 198
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 199
    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0
    .parameter "dispatcherImpl"

    .prologue
    .line 525
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 526
    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 307
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    .line 308
    return-void
.end method

.method protected final setHttpDefaultMaxPerRoute(I)V
    .locals 0
    .parameter "defaultMaxPerRoute"

    .prologue
    .line 356
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    .line 357
    return-void
.end method

.method protected final setHttpMaxTotalConnections(I)V
    .locals 0
    .parameter "maxTotalConnections"

    .prologue
    .line 348
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    .line 349
    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyHost"

    .prologue
    .line 275
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    .line 276
    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyPassword"

    .prologue
    .line 291
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    .line 292
    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 0
    .parameter "proxyPort"

    .prologue
    .line 299
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    .line 300
    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyUser"

    .prologue
    .line 283
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    .line 284
    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 315
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    .line 316
    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0
    .parameter "retryCount"

    .prologue
    .line 332
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 333
    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0
    .parameter "retryIntervalSeconds"

    .prologue
    .line 340
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 341
    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0
    .parameter "httpStreamingReadTimeout"

    .prologue
    .line 323
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 324
    return-void
.end method

.method protected final setIncludeEntitiesEnbled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 541
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 542
    return-void
.end method

.method protected final setIncludeRTsEnbled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 533
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    .line 534
    return-void
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaProvider"

    .prologue
    .line 557
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 558
    return-void
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaProviderAPIKey"

    .prologue
    .line 565
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 566
    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessToken"

    .prologue
    .line 384
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 385
    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessTokenSecret"

    .prologue
    .line 392
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 393
    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAccessTokenURL"

    .prologue
    .line 507
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 509
    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAuthenticationURL"

    .prologue
    .line 516
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 517
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 518
    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthAuthorizationURL"

    .prologue
    .line 498
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 499
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 500
    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthConsumerKey"

    .prologue
    .line 366
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 368
    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthConsumerSecret"

    .prologue
    .line 375
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 376
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 377
    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter "oAuthRequestTokenURL"

    .prologue
    .line 489
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 490
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 491
    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 232
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 233
    return-void
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 0
    .parameter "prettyDebug"

    .prologue
    .line 245
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z

    .line 246
    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "restBaseURL"

    .prologue
    .line 426
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 428
    return-void
.end method

.method protected final setSearchBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "searchBaseURL"

    .prologue
    .line 457
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    .line 458
    return-void
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "siteStreamBaseURL"

    .prologue
    .line 481
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    .line 482
    return-void
.end method

.method protected final setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 215
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->source:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 217
    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "streamBaseURL"

    .prologue
    .line 465
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 466
    return-void
.end method

.method protected final setUseSSL(Z)V
    .locals 0
    .parameter "useSSL"

    .prologue
    .line 240
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    .line 241
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V

    .line 242
    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 224
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 225
    return-void
.end method

.method protected final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 206
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V

    .line 208
    return-void
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "siteStreamBaseURL"

    .prologue
    .line 473
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    .line 474
    return-void
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 549
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 550
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 615
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ConfigurationBase{debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userAgent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", useSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpConnectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpStreamingReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", httpRetryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxTotalConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", defaultMaxPerRoute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthConsumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthConsumerSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthRequestTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAuthorizationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oAuthAuthenticationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", restBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", searchBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", siteStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", dispatcherImpl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", asyncNumThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", includeRTsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", includeEntitiesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userStreamRepliesAllEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", clientVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", clientURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", IS_DALVIK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaProviderAPIKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
