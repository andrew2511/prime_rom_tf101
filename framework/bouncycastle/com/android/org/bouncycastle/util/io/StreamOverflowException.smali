.class public Lcom/android/org/bouncycastle/util/io/StreamOverflowException;
.super Ljava/io/IOException;
.source "StreamOverflowException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
