.class public interface abstract Lorg/scribe/oauth/OAuthService;
.super Ljava/lang/Object;
.source "OAuthService.java"


# virtual methods
.method public abstract addScope(Ljava/lang/String;)V
.end method

.method public abstract getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
.end method

.method public abstract getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
.end method

.method public abstract getRequestToken()Lorg/scribe/model/Token;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
.end method
