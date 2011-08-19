.class Ltwitter4j/TwitterOAuthSupportBaseImpl;
.super Ltwitter4j/TwitterOAuthSupportBase;
.source "TwitterOAuthSupportBaseImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x1e0fb6f82e4a6fe5L


# instance fields
.field protected transient id:I

.field protected transient screenName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 61
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    .line 62
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    .line 53
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "conf"
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    .line 67
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 1
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBase;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    .line 72
    return-void
.end method

.method private getOAuth()Ltwitter4j/http/OAuthSupport;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthSupport;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object p0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    .end local p0
    check-cast p0, Ltwitter4j/http/OAuthSupport;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 247
    :goto_0
    return v2

    .line 238
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 239
    :cond_2
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    .line 241
    :cond_3
    move-object v0, p1

    check-cast v0, Ltwitter4j/TwitterOAuthSupportBaseImpl;

    move-object v1, v0

    .line 243
    .local v1, that:Ltwitter4j/TwitterOAuthSupportBaseImpl;
    iget v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    iget v3, v1, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 244
    :cond_4
    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 245
    goto :goto_0

    .line 244
    :cond_6
    iget-object v2, v1, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7
    move v2, v5

    .line 247
    goto :goto_0
.end method

.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v1

    .line 103
    .local v1, auth:Ltwitter4j/http/Authorization;
    instance-of v6, v1, Ltwitter4j/http/BasicAuthorization;

    if-eqz v6, :cond_1

    .line 104
    move-object v0, v1

    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    move-object v2, v0

    .line 105
    .local v2, basicAuth:Ltwitter4j/http/BasicAuthorization;
    iget-object v6, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    .line 106
    instance-of v6, v1, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v6, :cond_0

    .line 107
    iput-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    .line 108
    move-object v0, v1

    check-cast v0, Ltwitter4j/http/OAuthAuthorization;

    move-object v4, v0

    .line 109
    .local v4, oauthAuth:Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {v2}, Ltwitter4j/http/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ltwitter4j/http/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/http/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v3

    .line 123
    .end local v2           #basicAuth:Ltwitter4j/http/BasicAuthorization;
    .end local v4           #oauthAuth:Ltwitter4j/http/OAuthAuthorization;
    .local v3, oauthAccessToken:Ltwitter4j/http/AccessToken;
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Ltwitter4j/http/AccessToken;->getUserId()I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-object v3

    .line 111
    .end local v3           #oauthAccessToken:Ltwitter4j/http/AccessToken;
    .restart local v2       #basicAuth:Ltwitter4j/http/BasicAuthorization;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "consumer key / secret combination not supplied."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v1           #auth:Ltwitter4j/http/Authorization;
    .end local v2           #basicAuth:Ltwitter4j/http/BasicAuthorization;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 114
    .restart local v1       #auth:Ltwitter4j/http/Authorization;
    :cond_1
    :try_start_2
    instance-of v6, v1, Ltwitter4j/internal/http/XAuthAuthorization;

    if-eqz v6, :cond_2

    .line 115
    move-object v0, v1

    check-cast v0, Ltwitter4j/internal/http/XAuthAuthorization;

    move-object v5, v0

    .line 116
    .local v5, xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    iput-object v5, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    .line 117
    new-instance v4, Ltwitter4j/http/OAuthAuthorization;

    iget-object v6, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerSecret()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .restart local v4       #oauthAuth:Ltwitter4j/http/OAuthAuthorization;
    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/http/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v3

    .line 119
    .restart local v3       #oauthAccessToken:Ltwitter4j/http/AccessToken;
    goto :goto_0

    .line 120
    .end local v3           #oauthAccessToken:Ltwitter4j/http/AccessToken;
    .end local v4           #oauthAuth:Ltwitter4j/http/OAuthAuthorization;
    .end local v5           #xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_2
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v6

    invoke-interface {v6}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .restart local v3       #oauthAccessToken:Ltwitter4j/http/AccessToken;
    goto :goto_0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v1

    invoke-interface {v1, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 135
    .local v0, oauthAccessToken:Ltwitter4j/http/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object v0

    .line 134
    .end local v0           #oauthAccessToken:Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .parameter "token"
    .parameter "tokenSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    new-instance v1, Ltwitter4j/http/RequestToken;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    new-instance v0, Ltwitter4j/http/RequestToken;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 3
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    .line 146
    .local v0, oauth:Ltwitter4j/http/OAuthSupport;
    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v1

    .line 147
    .local v1, oauthAccessToken:Ltwitter4j/http/AccessToken;
    invoke-virtual {v1}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-object v1

    .line 145
    .end local v0           #oauth:Ltwitter4j/http/OAuthSupport;
    .end local v1           #oauthAccessToken:Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "requestToken"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 1
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBase;->hashCode()I

    move-result v0

    .line 253
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 254
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->id:I

    add-int v0, v1, v2

    .line 255
    return v0

    .line 253
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

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

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 192
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    new-instance v1, Ltwitter4j/http/AccessToken;

    invoke-direct {v1, p1, p2}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/http/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 193
    return-void
.end method

.method public declared-synchronized setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuth()Ltwitter4j/http/OAuthSupport;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 218
    monitor-enter p0

    if-nez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "consumer key is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "consumer secret is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    instance-of v1, v1, Ltwitter4j/http/NullAuthorization;

    if-eqz v1, :cond_3

    .line 225
    new-instance v1, Ltwitter4j/http/OAuthAuthorization;

    iget-object v2, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, p1, p2}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_3
    :try_start_2
    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    instance-of v1, v1, Ltwitter4j/http/BasicAuthorization;

    if-eqz v1, :cond_4

    .line 227
    new-instance v0, Ltwitter4j/internal/http/XAuthAuthorization;

    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    check-cast v1, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/XAuthAuthorization;-><init>(Ltwitter4j/http/BasicAuthorization;)V

    .line 228
    .local v0, xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    invoke-virtual {v0, p1, p2}, Ltwitter4j/internal/http/XAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object v0, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    goto :goto_0

    .line 230
    .end local v0           #xauth:Ltwitter4j/internal/http/XAuthAuthorization;
    :cond_4
    iget-object v1, p0, Ltwitter4j/TwitterOAuthSupportBaseImpl;->auth:Ltwitter4j/http/Authorization;

    instance-of v1, v1, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v1, :cond_2

    .line 231
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "consumer key/secret pair already set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
