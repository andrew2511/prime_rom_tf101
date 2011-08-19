.class public Lorg/scribe/builder/api/YahooApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "YahooApi.java"


# static fields
.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://api.login.yahoo.com/oauth/v2/request_auth?oauth_token=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "https://api.login.yahoo.com/oauth/v2/get_token"

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4
    .parameter "requestToken"

    .prologue
    .line 24
    const-string v0, "https://api.login.yahoo.com/oauth/v2/request_auth?oauth_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "https://api.login.yahoo.com/oauth/v2/get_request_token"

    return-object v0
.end method
