.class public Lorg/scribe/oauth/OAuth10aServiceImpl;
.super Ljava/lang/Object;
.source "OAuth10aServiceImpl.java"

# interfaces
.implements Lorg/scribe/oauth/OAuthService;


# static fields
.field private static final NO_SCOPE:Ljava/lang/String; = null

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private api:Lorg/scribe/builder/api/DefaultApi10a;

.field private config:Lorg/scribe/model/OAuthConfig;

.field private scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lorg/scribe/oauth/OAuth10aServiceImpl;->NO_SCOPE:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi10a;Lorg/scribe/model/OAuthConfig;)V
    .locals 1
    .parameter "api"
    .parameter "config"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    .line 29
    iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    .line 30
    sget-object v0, Lorg/scribe/oauth/OAuth10aServiceImpl;->NO_SCOPE:Ljava/lang/String;

    iput-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->scope:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private addOAuthHeader(Lorg/scribe/model/OAuthRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 118
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getHeaderExtractor()Lorg/scribe/extractors/HeaderExtractor;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/scribe/extractors/HeaderExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, oauthHeader:Ljava/lang/String;
    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/scribe/model/OAuthRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V
    .locals 2
    .parameter "request"
    .parameter "token"

    .prologue
    .line 49
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getTimestampInSeconds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/SignatureService;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "oauth_version"

    invoke-virtual {p0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->scope:Ljava/lang/String;

    sget-object v1, Lorg/scribe/oauth/OAuth10aServiceImpl;->NO_SCOPE:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-string v0, "scope"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const-string v0, "oauth_signature"

    invoke-direct {p0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4
    .parameter "request"
    .parameter "token"

    .prologue
    .line 112
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getBaseStringExtractor()Lorg/scribe/extractors/BaseStringExtractor;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/scribe/extractors/BaseStringExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, baseString:Ljava/lang/String;
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v2}, Lorg/scribe/model/OAuthConfig;->getApiSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/scribe/services/SignatureService;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->scope:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
    .locals 5
    .parameter "requestToken"
    .parameter "verifier"

    .prologue
    .line 64
    new-instance v1, Lorg/scribe/model/OAuthRequest;

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v4}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 65
    .local v1, request:Lorg/scribe/model/OAuthRequest;
    const-string v3, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "oauth_verifier"

    invoke-virtual {p2}, Lorg/scribe/model/Verifier;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, v1, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 69
    invoke-direct {p0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthHeader(Lorg/scribe/model/OAuthRequest;)V

    .line 70
    invoke-virtual {v1}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v2

    .line 71
    .local v2, response:Lorg/scribe/model/Response;
    invoke-virtual {v2}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, r:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/scribe/model/Response;->close()V

    .line 73
    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/scribe/extractors/AccessTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0, p1}, Lorg/scribe/builder/api/DefaultApi10a;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken()Lorg/scribe/model/Token;
    .locals 5

    .prologue
    .line 38
    new-instance v1, Lorg/scribe/model/OAuthRequest;

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v4}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 39
    .local v1, request:Lorg/scribe/model/OAuthRequest;
    sget-object v3, Lorg/scribe/model/OAuthConstants;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    invoke-direct {p0, v1, v3}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 40
    invoke-direct {p0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthHeader(Lorg/scribe/model/OAuthRequest;)V

    .line 41
    invoke-virtual {v1}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v2

    .line 42
    .local v2, response:Lorg/scribe/model/Response;
    invoke-virtual {v2}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, r:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/scribe/model/Response;->close()V

    .line 44
    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenExtractor()Lorg/scribe/extractors/RequestTokenExtractor;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/scribe/extractors/RequestTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v3

    return-object v3
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "1.0"

    return-object v0
.end method

.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
    .locals 2
    .parameter "token"
    .parameter "request"

    .prologue
    .line 81
    const-string v0, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p2, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 83
    invoke-direct {p0, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthHeader(Lorg/scribe/model/OAuthRequest;)V

    .line 84
    return-void
.end method
