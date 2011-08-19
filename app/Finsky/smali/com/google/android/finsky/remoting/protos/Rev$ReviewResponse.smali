.class public final Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

.field private hasGetResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1516
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 1558
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    .line 1516
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1562
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getSerializedSize()I

    .line 1564
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    return v0
.end method

.method public getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1573
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->cachedSize:I

    .line 1574
    return v0
.end method

.method public hasGetResponse()Z
    .locals 1

    .prologue
    .line 1522
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1582
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1586
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1587
    :sswitch_0
    return-object p0

    .line 1592
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;-><init>()V

    .line 1593
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1594
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    goto :goto_0

    .line 1582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v0

    return-object v0
.end method

.method public setGetResponse(Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;)Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1525
    if-nez p1, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1528
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse:Z

    .line 1529
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getResponse_:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    .line 1530
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->hasGetResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1556
    :cond_0
    return-void
.end method
