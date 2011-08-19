.class public Lcom/google/android/music/sync/common/SyncHttpException;
.super Ljava/lang/Exception;
.source "SyncHttpException.java"


# instance fields
.field private mRetryAfter:J

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 14
    iput p1, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "message"
    .parameter "statusCode"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 24
    iput p2, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 2
    .parameter "message"
    .parameter "cause"
    .parameter "statusCode"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 19
    iput p3, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    return-wide v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    return v0
.end method

.method public setRetryAfter(J)V
    .locals 0
    .parameter "retryAfter"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 37
    return-void
.end method
