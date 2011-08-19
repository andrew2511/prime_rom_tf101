.class public Lcom/google/android/music/dl/DownloadOrder;
.super Ljava/lang/Object;
.source "DownloadOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;,
        Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_TYPE_ANOTHER_STREAM_BEING_PLAYED:I = 0x6

.field public static final ERROR_TYPE_DEVICE_NOT_AUTHORIZED:I = 0x5

.field public static final ERROR_TYPE_NO_SPACE:I = 0x2

.field public static final ERROR_TYPE_STREAMING_NOT_ENABLED:I = 0x3

.field public static final ERROR_TYPE_STREAM_RATE_LIMIT_REACHED:I = 0x7

.field public static final ERROR_TYPE_UNAUTHORIZED:I = 0x4

.field public static final ERROR_TYPE_UNKNOWN:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field public static final MAX_BITRATE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DownloadOrder"

.field private static final TIME_BETWEEN_WAITING_LOGS:J = 0x2710L


# instance fields
.field public albumArtistName:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public duration:J

.field public errorType:I

.field public experiencedGlitchDuringDownload:Z

.field private lastwaitlog:J

.field public length:J

.field private mCompleted:J

.field private mDownloadStartTime:J

.field private mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private mHandler:Lcom/google/android/music/dl/DownloadHandler;

.field private mIsResumable:Z

.field private mLocalLocation:Ljava/io/File;

.field private mRecommendedBitrate:I

.field private mResolvedToString:Ljava/lang/String;

.field private mSavableLocalLocation:Z

.field public remoteUrl:Ljava/lang/String;

.field public scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

.field public seekPoint:J

.field public streamUrl:Ljava/lang/String;

.field public trackName:Ljava/lang/String;

.field public transcodedLength:J

.field public xId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "DownloadOrder"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    .line 381
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$1;

    invoke-direct {v0}, Lcom/google/android/music/dl/DownloadOrder$1;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 107
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 117
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    .line 124
    iput-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 129
    iput-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    .line 134
    iput-boolean v4, p0, Lcom/google/android/music/dl/DownloadOrder;->experiencedGlitchDuringDownload:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mResolvedToString:Ljava/lang/String;

    .line 140
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 156
    iput-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->lastwaitlog:J

    .line 163
    return-void
.end method

.method public static isServerError(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 338
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cacheHumanReadableString(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {p1, v1, v2}, Lcom/google/android/music/DebugUtils;->getHumanReadableName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mResolvedToString:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public calculateLatency()J
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized clearCompleted()V
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/music/dl/DownloadOrder;)Z
    .locals 6
    .parameter "order"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    if-nez p1, :cond_0

    move v0, v4

    .line 368
    :goto_0
    return v0

    .line 365
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v5

    .line 366
    goto :goto_0

    .line 368
    :cond_1
    iget-wide v0, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-nez v0, :cond_3

    move v0, v5

    :goto_1
    iget-object v1, p1, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-nez v1, :cond_4

    move v1, v5

    :goto_2
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 355
    instance-of v0, p1, Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v0, :cond_2

    .line 356
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/music/dl/DownloadOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_0

    .restart local p1
    :cond_2
    move v0, v1

    .line 358
    goto :goto_0
.end method

.method public getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 294
    if-nez p1, :cond_0

    move-object v2, v3

    .line 305
    :goto_0
    return-object v2

    .line 298
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    move-object v2, v1

    .line 305
    goto :goto_0
.end method

.method public getCompleted()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    return-wide v0
.end method

.method public getDownloadLength()J
    .locals 4

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->transcodedLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 227
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->transcodedLength:J

    .line 229
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->length:J

    goto :goto_0
.end method

.method public getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object v0
.end method

.method public getHandler()Lcom/google/android/music/dl/DownloadHandler;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    return-object v0
.end method

.method public getLocalLocation()Ljava/io/File;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    return-object v0
.end method

.method public getRecommendedBitrate()I
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recommended bitrate was never set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized incrementCompleted(J)J
    .locals 2
    .parameter "completed"

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isResumable()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    return v0
.end method

.method protected markDownloadFailed(I)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 195
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    .line 196
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 197
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public requiresDownload()Z
    .locals 5

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 170
    .local v0, ret:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v2, :cond_1

    .line 171
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 173
    :cond_1
    return v0

    .line 166
    .end local v0           #ret:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setDownloadStartTime(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    .line 287
    return-void
.end method

.method public declared-synchronized setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V
    .locals 1
    .parameter "downloadStatus"

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHandler(Lcom/google/android/music/dl/DownloadHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    .line 205
    return-void
.end method

.method public declared-synchronized setLocalLocation(Ljava/io/File;Z)V
    .locals 1
    .parameter "localLocation"
    .parameter "saveable"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    .line 314
    iput-boolean p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecommendedBitrate(I)V
    .locals 3
    .parameter "recommendedBitrate"

    .prologue
    .line 215
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "DownloadOrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting bitrate of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    goto :goto_0
.end method

.method public setResumable(Z)V
    .locals 0
    .parameter "resumable"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 331
    return-void
.end method

.method public shouldSaveLocation()Z
    .locals 4

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->experiencedGlitchDuringDownload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mResolvedToString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mResolvedToString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mResolvedToString:Ljava/lang/String;

    .line 191
    :goto_0
    return-object v1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v1, "LocalId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") completed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from remove: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadOrder;->remoteUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to local: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized waitForData(J)V
    .locals 5
    .parameter "amount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    const/4 v0, 0x0

    .line 263
    .local v0, waitingForFile:Z
    :goto_0
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 264
    :cond_2
    sget-boolean v1, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->lastwaitlog:J

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 265
    if-eqz v0, :cond_5

    .line 266
    const-string v1, "DownloadOrder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for file to be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->lastwaitlog:J

    .line 272
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 263
    :cond_4
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1

    .line 268
    :cond_5
    :try_start_1
    const-string v1, "DownloadOrder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for data in file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 274
    :cond_6
    monitor-exit p0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
