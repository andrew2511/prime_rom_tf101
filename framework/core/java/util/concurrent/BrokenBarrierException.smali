.class public Ljava/util/concurrent/BrokenBarrierException;
.super Ljava/lang/Exception;
.source "BrokenBarrierException.java"


# static fields
.field private static final serialVersionUID:J = 0x62c610b23d3ca0e4L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
