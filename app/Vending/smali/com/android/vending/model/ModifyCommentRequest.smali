.class public Lcom/android/vending/model/ModifyCommentRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "ModifyCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 96
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->MODIFY_COMMENT_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 97
    return-void
.end method


# virtual methods
.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public setComment(Lcom/android/vending/model/Comment;)V
    .locals 3
    .parameter "comment"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/android/vending/model/Comment;->getProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 116
    return-void
.end method

.method public setDeleteComment(Z)V
    .locals 2
    .parameter "delete"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 124
    return-void
.end method

.method public setFlagMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "flagMessage"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public setFlagType(Lcom/android/vending/model/ModifyCommentRequest$FlagType;)V
    .locals 3
    .parameter "flagType"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->flagRpcId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 132
    return-void
.end method

.method public setNonFlagFlow(Z)V
    .locals 2
    .parameter "nonFlagFlow"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/vending/model/ModifyCommentRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 145
    return-void
.end method
