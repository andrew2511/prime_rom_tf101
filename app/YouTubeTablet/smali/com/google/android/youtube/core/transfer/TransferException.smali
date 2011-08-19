.class public Lcom/google/android/youtube/core/transfer/TransferException;
.super Ljava/lang/Exception;
.source "TransferException.java"


# instance fields
.field public final fatal:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "detailMessage"
    .parameter "fatal"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-boolean p2, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0
    .parameter "cause"
    .parameter "fatal"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput-boolean p2, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 24
    return-void
.end method
