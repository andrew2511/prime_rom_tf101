.class public final Ltwitter4j/TwitterStreamFactory;
.super Ljava/lang/Object;
.source "TwitterStreamFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x710cabc8cc4cda59L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private final listener:Ltwitter4j/StreamListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "configTreePath"

    .prologue
    .line 93
    const/4 v0, 0x0

    check-cast v0, Ltwitter4j/StatusListener;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterStreamFactory;-><init>(Ljava/lang/String;Ltwitter4j/StatusListener;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/StatusListener;)V
    .locals 1
    .parameter "configTreePath"
    .parameter "listener"

    .prologue
    .line 103
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/UserStreamListener;)V
    .locals 1
    .parameter "configTreePath"
    .parameter "listener"

    .prologue
    .line 114
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/UserStreamListener;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ltwitter4j/StatusListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 74
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    .line 75
    return-void
.end method

.method public constructor <init>(Ltwitter4j/UserStreamListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 85
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    .line 86
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    .line 65
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V
    .locals 2
    .parameter "conf"
    .parameter "listener"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 129
    iput-object p2, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    .line 130
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/UserStreamListener;)V
    .locals 2
    .parameter "conf"
    .parameter "listener"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 144
    iput-object p2, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    .line 145
    return-void
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/TwitterStream;
    .locals 3
    .parameter "conf"

    .prologue
    .line 227
    new-instance v0, Ltwitter4j/TwitterStream;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/TwitterStream;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StreamListener;)V

    return-object v0
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;
    .locals 2
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 224
    new-instance v0, Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StreamListener;

    invoke-direct {v0, p1, p2, v1}, Ltwitter4j/TwitterStream;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StreamListener;)V

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/TwitterStream;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/TwitterStream;
    .locals 2
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 166
    iget-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    new-instance v1, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/TwitterStream;
    .locals 5
    .parameter "accessToken"

    .prologue
    .line 178
    iget-object v3, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, consumerKey:Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, consumerSecret:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 181
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_0
    new-instance v2, Ltwitter4j/http/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3, v0, v1, p1}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V

    .line 184
    .local v2, oauth:Ltwitter4j/http/OAuthAuthorization;
    iget-object v3, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v3, v2}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v3

    return-object v3
.end method

.method public getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;
    .locals 1
    .parameter "auth"

    .prologue
    .line 221
    iget-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizedInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/TwitterStream;
    .locals 3
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 196
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Consumer key and Consumer secret not supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, oauth:Ltwitter4j/http/OAuthAuthorization;
    iget-object v1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v1, v0}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAuthorizedInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/TwitterStream;
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method
