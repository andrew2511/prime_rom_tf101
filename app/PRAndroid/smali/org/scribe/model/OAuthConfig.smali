.class public Lorg/scribe/model/OAuthConfig;
.super Ljava/lang/Object;
.source "OAuthConfig.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private callback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"
    .parameter "callback"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApiSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "oob"

    goto :goto_0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0
    .parameter "apiKey"

    .prologue
    .line 33
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setApiSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "apiSecret"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    .line 54
    return-void
.end method
