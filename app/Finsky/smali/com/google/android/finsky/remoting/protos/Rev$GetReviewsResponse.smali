.class public final Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetReviewsResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMatchingCount:Z

.field private matchingCount_:J

.field private review_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    .line 883
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    .line 921
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    .line 845
    return-void
.end method


# virtual methods
.method public addReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getSerializedSize()I

    .line 927
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    return v0
.end method

.method public getMatchingCount()J
    .locals 2

    .prologue
    .line 884
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    return-wide v0
.end method

.method public getReviewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 931
    const/4 v2, 0x0

    .line 932
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 933
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 936
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 937
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getMatchingCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 940
    :cond_1
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    .line 941
    return v2
.end method

.method public hasMatchingCount()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 949
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 954
    :sswitch_0
    return-object p0

    .line 959
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;-><init>()V

    .line 960
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 961
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->addReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    goto :goto_0

    .line 965
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->setMatchingCount(J)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    goto :goto_0

    .line 949
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 843
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMatchingCount(J)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount:Z

    .line 888
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    .line 889
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 914
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 916
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getMatchingCount()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 919
    :cond_1
    return-void
.end method
