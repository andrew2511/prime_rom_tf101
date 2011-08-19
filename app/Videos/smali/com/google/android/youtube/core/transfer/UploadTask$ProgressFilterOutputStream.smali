.class final Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressFilterOutputStream"
.end annotation


# instance fields
.field private progress:J

.field private final target:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/UploadTask;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/OutputStream;J)V
    .locals 1
    .parameter
    .parameter "target"
    .parameter "initialProgress"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    .line 210
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    .line 212
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 213
    return-void
.end method

.method private maybeNotifyProgress(JJ)V
    .locals 4
    .parameter "oldProgress"
    .parameter "newProgress"

    .prologue
    const-wide/32 v2, 0xc800

    .line 231
    div-long v0, p3, v2

    div-long v2, p1, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$100(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$000(Lcom/google/android/youtube/core/transfer/UploadTask;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 226
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 227
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->maybeNotifyProgress(JJ)V

    .line 228
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 219
    .local v0, oldProgress:J
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 220
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->maybeNotifyProgress(JJ)V

    .line 221
    return-void
.end method
