.class public final Ltwitter4j/http/RequestToken;
.super Ltwitter4j/http/OAuthToken;
.source "RequestToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x71ff4a3702538200L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private oauth:Ltwitter4j/http/OAuthSupport;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/RequestToken;->conf:Ltwitter4j/conf/Configuration;

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/OAuthSupport;)V
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "oauth"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/RequestToken;->conf:Ltwitter4j/conf/Configuration;

    .line 57
    iput-object p3, p0, Ltwitter4j/http/RequestToken;->oauth:Ltwitter4j/http/OAuthSupport;

    .line 58
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/http/OAuthSupport;)V
    .locals 1
    .parameter "res"
    .parameter "oauth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 45
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/RequestToken;->conf:Ltwitter4j/conf/Configuration;

    .line 46
    iput-object p2, p0, Ltwitter4j/http/RequestToken;->oauth:Ltwitter4j/http/OAuthSupport;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccessToken()Ltwitter4j/http/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Ltwitter4j/http/RequestToken;->oauth:Ltwitter4j/http/OAuthSupport;

    invoke-interface {v0}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "oauth_verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/http/RequestToken;->oauth:Ltwitter4j/http/OAuthSupport;

    invoke-interface {v0, p1}, Ltwitter4j/http/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/http/RequestToken;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/http/RequestToken;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
