.class public Ljavax/net/ssl/SSLKeyException;
.super Ljavax/net/ssl/SSLException;
.source "SSLKeyException.java"


# static fields
.field private static final serialVersionUID:J = -0x70044fb78e6dbed2L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
