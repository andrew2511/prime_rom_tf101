.class Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;
.super Ljava/lang/Object;
.source "KeyManagerFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->engineInit(Ljava/security/KeyStore;[C)V
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
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
