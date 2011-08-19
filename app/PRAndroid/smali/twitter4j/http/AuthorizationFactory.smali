.class public final Ltwitter4j/http/AuthorizationFactory;
.super Ljava/lang/Object;
.source "AuthorizationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasicAuthorizationInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/Authorization;
    .locals 1
    .parameter "screenName"
    .parameter "password"

    .prologue
    .line 88
    new-instance v0, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v0, p0, p1}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/http/Authorization;
    .locals 1
    .parameter "conf"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;
    .locals 9
    .parameter "conf"
    .parameter "supportsOAuth"

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, auth:Ltwitter4j/http/Authorization;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, consumerKey:Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, consumerSecret:Ljava/lang/String;
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 60
    new-instance v5, Ltwitter4j/http/OAuthAuthorization;

    invoke-direct {v5, p0, v3, v4}, Ltwitter4j/http/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v5, oauth:Ltwitter4j/http/OAuthAuthorization;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, accessToken:Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, accessTokenSecret:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 64
    new-instance v8, Ltwitter4j/http/AccessToken;

    invoke-direct {v8, v0, v1}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 66
    :cond_0
    move-object v2, v5

    .line 74
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v1           #accessTokenSecret:Ljava/lang/String;
    .end local v5           #oauth:Ltwitter4j/http/OAuthAuthorization;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 75
    invoke-static {}, Ltwitter4j/http/NullAuthorization;->getInstance()Ltwitter4j/http/NullAuthorization;

    move-result-object v2

    .line 77
    :cond_2
    return-object v2

    .line 68
    :cond_3
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, screenName:Ljava/lang/String;
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, password:Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 71
    new-instance v2, Ltwitter4j/http/BasicAuthorization;

    .end local v2           #auth:Ltwitter4j/http/Authorization;
    invoke-direct {v2, v7, v6}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #auth:Ltwitter4j/http/Authorization;
    goto :goto_0
.end method
