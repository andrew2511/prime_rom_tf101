.class final Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressEntity"
.end annotation


# instance fields
.field private final initialProgress:J

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/UploadTask;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/InputStream;JJ)V
    .locals 0
    .parameter
    .parameter "is"
    .parameter "contentLength"
    .parameter "initialProgress"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    .line 193
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 194
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;->initialProgress:J

    .line 195
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;->initialProgress:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;-><init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 200
    return-void
.end method
