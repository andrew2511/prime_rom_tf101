.class Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;
.super Ljava/lang/Object;
.source "TrustManagerFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->engineInit(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "javax.net.ssl.trustStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
