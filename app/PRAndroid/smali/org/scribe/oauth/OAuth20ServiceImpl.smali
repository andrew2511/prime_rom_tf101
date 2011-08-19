.class public Lorg/scribe/oauth/OAuth20ServiceImpl;
.super Ljava/lang/Object;
.source "OAuth20ServiceImpl.java"

# interfaces
.implements Lorg/scribe/oauth/OAuthService;


# static fields
.field private static final VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field private final api:Lorg/scribe/builder/api/DefaultApi20;

.field private final config:Lorg/scribe/model/OAuthConfig;


# direct methods
.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi20;Lorg/scribe/model/OAuthConfig;)V
    .locals 0
    .parameter "api"
    .parameter "config"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;

    .line 22
    iput-object p2, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    .line 23
    return-void
.end method


# virtual methods
.method public addScope(Ljava/lang/String;)V
    .locals 2
    .parameter "scope"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OAuth 2 does not use scopes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
    .locals 2
    .parameter "requestToken"
    .parameter "verifier"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation, please use \'getAuthorizationUrl\' and redirect your users there"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 2
    .parameter "requestToken"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;

    iget-object v1, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0, v1}, Lorg/scribe/builder/api/DefaultApi20;->getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken()Lorg/scribe/model/Token;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation, please use \'getAuthorizationUrl\' and redirect your users there"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "2.0"

    return-object v0
.end method

.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
    .locals 2
    .parameter "accessToken"
    .parameter "request"

    .prologue
    .line 62
    const-string v0, "access_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
