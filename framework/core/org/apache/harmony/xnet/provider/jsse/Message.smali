.class public abstract Lorg/apache/harmony/xnet/provider/jsse/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field protected length:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected fatalAlert(BLjava/lang/String;)V
    .registers 5
    .parameter "description"
    .parameter "reason"

    .prologue
    .line 60
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method protected fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "description"
    .parameter "reason"
    .parameter "cause"

    .prologue
    .line 70
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, p2, p3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method abstract getType()I
.end method

.method public length()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return v0
.end method

.method abstract send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
.end method
