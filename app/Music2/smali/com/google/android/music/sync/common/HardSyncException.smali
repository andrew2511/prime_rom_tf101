.class public Lcom/google/android/music/sync/common/HardSyncException;
.super Ljava/lang/Exception;
.source "HardSyncException.java"


# instance fields
.field private mRetryAfter:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    .line 21
    return-void
.end method


# virtual methods
.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    return-wide v0
.end method

.method public setRetryAfter(J)V
    .locals 0
    .parameter "retryAfter"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/google/android/music/sync/common/HardSyncException;->mRetryAfter:J

    .line 33
    return-void
.end method
