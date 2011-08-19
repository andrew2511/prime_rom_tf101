.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z

.field private loc:J

.field private remaining:J

.field private final this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "remaining"

    .prologue
    .line 604
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 605
    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    .line 606
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 607
    return-void
.end method


# virtual methods
.method addDummy()V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 658
    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    .line 610
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    sub-long v2, v0, v5

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 611
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v0, :cond_0

    .line 612
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    move v0, v4

    .line 619
    :goto_0
    return v0

    .line 615
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    add-long v4, v2, v5

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 619
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 624
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 625
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v1, :cond_0

    .line 626
    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 627
    aput-byte v5, p1, p2

    .line 628
    const/4 v1, 0x1

    .line 649
    :goto_0
    return v1

    .line 630
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 633
    :cond_1
    if-gtz p3, :cond_2

    move v1, v5

    .line 634
    goto :goto_0

    .line 637
    :cond_2
    int-to-long v1, p3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 638
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    long-to-int p3, v1

    .line 640
    :cond_3
    const/4 v0, -0x1

    .line 641
    .local v0, ret:I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 643
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 644
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    if-lez v0, :cond_4

    .line 646
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 647
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    :cond_4
    move v1, v0

    .line 649
    goto :goto_0

    .line 644
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
