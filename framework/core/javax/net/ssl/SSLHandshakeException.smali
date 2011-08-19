.class public Ljavax/net/ssl/SSLHandshakeException;
.super Ljavax/net/ssl/SSLException;
.source "SSLHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x460692526072c36aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
