.class public Lcom/android/vending/model/ContentSyncResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "ContentSyncResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->CONTENT_SYNC_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 9
    return-void
.end method


# virtual methods
.method public getNumUpdatesAvailable()I
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/vending/model/ContentSyncResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method
