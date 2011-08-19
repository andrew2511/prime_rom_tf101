.class Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;
.super Ljava/lang/Object;
.source "ClientHandshakeImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unwrap([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    .line 292
    const/4 v0, 0x0

    return-object v0
.end method
