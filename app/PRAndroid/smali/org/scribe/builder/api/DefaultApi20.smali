.class public abstract Lorg/scribe/builder/api/DefaultApi20;
.super Ljava/lang/Object;
.source "DefaultApi20.java"

# interfaces
.implements Lorg/scribe/builder/api/Api;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Lorg/scribe/model/OAuthConfig;Ljava/lang/String;)Lorg/scribe/oauth/OAuthService;
    .locals 1
    .parameter "config"
    .parameter "scope"

    .prologue
    .line 39
    new-instance v0, Lorg/scribe/oauth/OAuth20ServiceImpl;

    invoke-direct {v0, p0, p1}, Lorg/scribe/oauth/OAuth20ServiceImpl;-><init>(Lorg/scribe/builder/api/DefaultApi20;Lorg/scribe/model/OAuthConfig;)V

    return-object v0
.end method

.method public abstract getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
.end method
