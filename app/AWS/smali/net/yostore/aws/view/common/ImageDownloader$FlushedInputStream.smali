.class Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const-wide/16 v3, 0x0

    .line 234
    .local v3, totalBytesSkipped:J
    :goto_0
    cmp-long v5, v3, p1

    if-ltz v5, :cond_1

    .line 246
    :cond_0
    return-wide v3

    .line 235
    :cond_1
    iget-object v5, p0, Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 236
    .local v1, bytesSkipped:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 237
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;->read()I

    move-result v0

    .line 238
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 241
    const-wide/16 v1, 0x1

    .line 244
    .end local v0           #b:I
    :cond_2
    add-long/2addr v3, v1

    goto :goto_0
.end method
