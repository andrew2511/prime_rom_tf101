.class public Lcom/android/vending/model/CommentsResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "CommentsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->COMMENTS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getComment(I)Lcom/android/vending/model/Comment;
    .locals 3
    .parameter "index"

    .prologue
    .line 23
    new-instance v0, Lcom/android/vending/model/Comment;

    iget-object v1, p0, Lcom/android/vending/model/CommentsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/Comment;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public getNumComments()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/vending/model/CommentsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getNumTotalComments()J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/model/CommentsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelfComment()Lcom/android/vending/model/Comment;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/android/vending/model/Comment;

    iget-object v1, p0, Lcom/android/vending/model/CommentsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/Comment;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public hasSelfComment()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/model/CommentsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method
