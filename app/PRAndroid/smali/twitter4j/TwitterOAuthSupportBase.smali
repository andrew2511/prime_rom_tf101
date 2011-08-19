.class abstract Ltwitter4j/TwitterOAuthSupportBase;
.super Ltwitter4j/TwitterBase;
.source "TwitterOAuthSupportBase.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpResponseCode;
.implements Ltwitter4j/internal/http/HttpResponseListener;
.implements Ltwitter4j/http/OAuthSupport;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x60993f027bbf9372L


# instance fields
.field protected transient http:Ltwitter4j/internal/http/HttpClientWrapper;

.field protected rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 27
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 28
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "conf"
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 32
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 33
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 1
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 37
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBase;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 41
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v5, v5, Ltwitter4j/http/NullAuthorization;

    if-eqz v5, :cond_1

    .line 43
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, consumerKey:Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, consumerSecret:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 47
    new-instance v4, Ltwitter4j/http/OAuthAuthorization;

    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v4, v5, v2, v3}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v4, oauth:Ltwitter4j/http/OAuthAuthorization;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, accessToken:Ljava/lang/String;
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, accessTokenSecret:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 51
    new-instance v5, Ltwitter4j/http/AccessToken;

    invoke-direct {v5, v0, v1}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 53
    :cond_0
    iput-object v4, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    .line 56
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v1           #accessTokenSecret:Ljava/lang/String;
    .end local v2           #consumerKey:Ljava/lang/String;
    .end local v3           #consumerSecret:Ljava/lang/String;
    .end local v4           #oauth:Ltwitter4j/http/OAuthAuthorization;
    :cond_1
    new-instance v5, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 57
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v5, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 58
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/RateLimitStatusListener;

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 79
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBase;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 80
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V

    .line 81
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 169
    :goto_0
    return v2

    .line 161
    :cond_0
    instance-of v2, p1, Ltwitter4j/TwitterOAuthSupportBase;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 162
    :cond_1
    invoke-super {p0, p1}, Ltwitter4j/TwitterBase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 164
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/TwitterOAuthSupportBase;

    move-object v1, v0

    .line 166
    .local v1, that:Ltwitter4j/TwitterOAuthSupportBase;
    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    iget-object v3, v1, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 167
    goto :goto_0

    .line 166
    :cond_4
    iget-object v2, v1, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-nez v2, :cond_3

    :cond_5
    move v2, v5

    .line 169
    goto :goto_0
.end method

.method public abstract getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Ltwitter4j/TwitterBase;->hashCode()I

    move-result v0

    .line 175
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 176
    return v0

    .line 175
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 180
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    if-eqz v5, :cond_1

    .line 181
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getResponse()Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 182
    .local v1, res:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->getTwitterException()Ltwitter4j/TwitterException;

    move-result-object v4

    .line 185
    .local v4, te:Ltwitter4j/TwitterException;
    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v4}, Ltwitter4j/TwitterException;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    .line 187
    .local v0, rateLimitStatus:Ltwitter4j/RateLimitStatus;
    invoke-virtual {v4}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    .line 192
    .local v2, statusCode:I
    :goto_0
    if-eqz v0, :cond_1

    .line 193
    new-instance v3, Ltwitter4j/RateLimitStatusEvent;

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponseEvent;->isAuthenticated()Z

    move-result v5

    invoke-direct {v3, p0, v0, v5}, Ltwitter4j/RateLimitStatusEvent;-><init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V

    .line 195
    .local v3, statusEvent:Ltwitter4j/RateLimitStatusEvent;
    const/16 v5, 0x1a4

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1f7

    if-ne v2, v5, :cond_3

    .line 199
    :cond_0
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v5, v3}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    .line 200
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v5, v3}, Ltwitter4j/RateLimitStatusListener;->onRateLimitReached(Ltwitter4j/RateLimitStatusEvent;)V

    .line 206
    .end local v0           #rateLimitStatus:Ltwitter4j/RateLimitStatus;
    .end local v1           #res:Ltwitter4j/internal/http/HttpResponse;
    .end local v2           #statusCode:I
    .end local v3           #statusEvent:Ltwitter4j/RateLimitStatusEvent;
    .end local v4           #te:Ltwitter4j/TwitterException;
    :cond_1
    :goto_1
    return-void

    .line 189
    .restart local v1       #res:Ltwitter4j/internal/http/HttpResponse;
    .restart local v4       #te:Ltwitter4j/TwitterException;
    :cond_2
    invoke-static {v1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    .line 190
    .restart local v0       #rateLimitStatus:Ltwitter4j/RateLimitStatus;
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    .restart local v2       #statusCode:I
    goto :goto_0

    .line 202
    .restart local v3       #statusEvent:Ltwitter4j/RateLimitStatusEvent;
    :cond_3
    iget-object v5, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    invoke-interface {v5, v3}, Ltwitter4j/RateLimitStatusListener;->onRateLimitStatus(Ltwitter4j/RateLimitStatusEvent;)V

    goto :goto_1
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
.end method

.method public abstract setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 155
    iput-object p1, p0, Ltwitter4j/TwitterOAuthSupportBase;->rateLimitStatusListener:Ltwitter4j/RateLimitStatusListener;

    .line 156
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBase;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpClientWrapper;->shutdown()V

    .line 66
    :cond_0
    return-void
.end method
