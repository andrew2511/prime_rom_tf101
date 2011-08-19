.class public abstract Ljavax/net/ssl/X509ExtendedKeyManager;
.super Ljava/lang/Object;
.source "X509ExtendedKeyManager.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method
