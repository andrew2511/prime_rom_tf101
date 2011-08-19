.class public Lcom/android/vending/api/ModifyCommentResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "ModifyCommentResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->MODIFY_COMMENT_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 19
    return-void
.end method
