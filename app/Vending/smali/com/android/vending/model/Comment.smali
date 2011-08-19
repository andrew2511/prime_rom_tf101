.class public Lcom/android/vending/model/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/vending/model/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/Comment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->EXTERNAL_COMMENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "commentProto"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/android/vending/model/Comment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->EXTERNAL_COMMENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 23
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getRating()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public hasBody()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasCreationTime()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasCreatorId()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasCreatorName()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2
    .parameter "commentBody"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public setRating(I)V
    .locals 2
    .parameter "rating"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vending/model/Comment;->mCommentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 43
    return-void
.end method
