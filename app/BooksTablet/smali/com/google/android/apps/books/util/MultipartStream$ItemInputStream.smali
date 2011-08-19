.class public Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;
.super Ljava/io/InputStream;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInputStream"
.end annotation


# instance fields
.field private pad:I

.field private pos:I

.field final synthetic this$0:Lcom/google/android/apps/books/util/MultipartStream;

.field private total:J


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/MultipartStream;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 724
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->findSeparator()V

    .line 725
    return-void
.end method

.method private findSeparator()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/MultipartStream;->findSeparator()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pos:I

    .line 729
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v0}, Lcom/google/android/apps/books/util/MultipartStream;->access$000(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$200(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 731
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v0}, Lcom/google/android/apps/books/util/MultipartStream;->access$200(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v0}, Lcom/google/android/apps/books/util/MultipartStream;->access$000(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    goto :goto_0
.end method

.method private makeAvailable()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 809
    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pos:I

    if-eq v1, v6, :cond_0

    move v1, v5

    .line 829
    :goto_0
    return v1

    .line 814
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v3}, Lcom/google/android/apps/books/util/MultipartStream;->access$000(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v4}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    .line 815
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$000(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v3}, Lcom/google/android/apps/books/util/MultipartStream;->access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1, v5}, Lcom/google/android/apps/books/util/MultipartStream;->access$102(Lcom/google/android/apps/books/util/MultipartStream;I)I

    .line 819
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$500(Lcom/google/android/apps/books/util/MultipartStream;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    iget-object v4, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v4}, Lcom/google/android/apps/books/util/MultipartStream;->access$400(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 820
    .local v0, bytesRead:I
    if-ne v0, v6, :cond_1

    .line 824
    new-instance v1, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;

    const-string v2, "Stream ended unexpectedly"

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    iget v2, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$002(Lcom/google/android/apps/books/util/MultipartStream;I)I

    .line 828
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->findSeparator()V

    .line 829
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->available()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v0}, Lcom/google/android/apps/books/util/MultipartStream;->access$000(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v0, v1

    .line 749
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->pos:I

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 785
    .local v0, av:I
    if-nez v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 787
    if-nez v0, :cond_0

    .line 793
    return-void

    .line 791
    :cond_0
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->skip(J)J

    goto :goto_0
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 742
    iget-wide v0, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v1

    if-nez v1, :cond_0

    .line 756
    const/4 v1, -0x1

    .line 761
    :goto_0
    return v1

    .line 759
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    .line 760
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$108(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v2

    aget-byte v0, v1, v2

    .line 761
    .local v0, b:I
    if-ltz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit16 v1, v0, 0x100

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    if-nez p3, :cond_0

    .line 766
    const/4 v1, 0x0

    .line 779
    :goto_0
    return v1

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 769
    .local v0, res:I
    if-nez v0, :cond_1

    .line 770
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 771
    if-nez v0, :cond_1

    .line 772
    const/4 v1, -0x1

    goto :goto_0

    .line 775
    :cond_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 776
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1}, Lcom/google/android/apps/books/util/MultipartStream;->access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$100(Lcom/google/android/apps/books/util/MultipartStream;)I

    move-result v2

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/util/MultipartStream;->access$112(Lcom/google/android/apps/books/util/MultipartStream;I)I

    .line 778
    iget-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->total:J

    move v1, v0

    .line 779
    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 797
    .local v0, av:I
    if-nez v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 799
    if-nez v0, :cond_0

    .line 800
    const-wide/16 v3, 0x0

    .line 805
    :goto_0
    return-wide v3

    .line 803
    :cond_0
    int-to-long v3, v0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 804
    .local v1, res:J
    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->this$0:Lcom/google/android/apps/books/util/MultipartStream;

    invoke-static {v3, v1, v2}, Lcom/google/android/apps/books/util/MultipartStream;->access$114(Lcom/google/android/apps/books/util/MultipartStream;J)I

    move-wide v3, v1

    .line 805
    goto :goto_0
.end method
