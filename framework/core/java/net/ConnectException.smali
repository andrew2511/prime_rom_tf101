.class public Ljava/net/ConnectException;
.super Ljava/net/SocketException;
.source "ConnectException.java"


# static fields
.field private static final serialVersionUID:J = 0x352be1e2a8f72fbfL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
