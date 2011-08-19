.class public final Ltwitter4j/AsyncTwitterFactory;
.super Ljava/lang/Object;
.source "AsyncTwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x239b26796ab5a25bL


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private final listener:Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/AsyncTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 1
    .parameter "configTreePath"
    .parameter "listener"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 102
    iput-object p2, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    .line 103
    return-void
.end method

.method public constructor <init>(Ltwitter4j/TwitterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 91
    iput-object p1, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    .line 92
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 68
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    iput-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    .line 69
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "conf"
    .parameter "listener"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 82
    iput-object p2, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    .line 83
    return-void
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/AsyncTwitter;
    .locals 3
    .parameter "conf"

    .prologue
    .line 201
    new-instance v0, Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/AsyncTwitter;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/TwitterListener;)V

    return-object v0
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;
    .locals 2
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 198
    new-instance v0, Ltwitter4j/AsyncTwitter;

    iget-object v1, p0, Ltwitter4j/AsyncTwitterFactory;->listener:Ltwitter4j/TwitterListener;

    invoke-direct {v0, p1, p2, v1}, Ltwitter4j/AsyncTwitter;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/TwitterListener;)V

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/AsyncTwitter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/AsyncTwitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/AsyncTwitter;
    .locals 2
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    new-instance v1, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/AsyncTwitter;
    .locals 5
    .parameter "accessToken"

    .prologue
    .line 134
    iget-object v3, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, consumerKey:Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, consumerSecret:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 137
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_0
    new-instance v2, Ltwitter4j/http/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3, v0, v1, p1}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V

    .line 140
    .local v2, oauth:Ltwitter4j/http/OAuthAuthorization;
    iget-object v3, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v3, v2}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;

    move-result-object v3

    return-object v3
.end method

.method public getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;
    .locals 1
    .parameter "auth"

    .prologue
    .line 149
    iget-object v0, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0, p1}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizedInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/AsyncTwitter;
    .locals 3
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 161
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Consumer key and Consumer secret not supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, oauth:Ltwitter4j/http/OAuthAuthorization;
    iget-object v1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v1, v0}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAuthorizedInstance(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)Ltwitter4j/AsyncTwitter;
    .locals 3
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "accessToken"

    .prologue
    .line 178
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Consumer key and Consumer secret not supplied."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    new-instance v0, Ltwitter4j/http/OAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, oauth:Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {v0, p3}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 183
    iget-object v1, p0, Ltwitter4j/AsyncTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v1, v0}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/AsyncTwitter;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAuthorizedInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/AsyncTwitter;
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Ltwitter4j/AsyncTwitterFactory;->getInstance(Ltwitter4j/http/AccessToken;)Ltwitter4j/AsyncTwitter;

    move-result-object v0

    return-object v0
.end method
