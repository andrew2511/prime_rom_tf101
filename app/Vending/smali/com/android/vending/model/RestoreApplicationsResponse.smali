.class public Lcom/android/vending/model/RestoreApplicationsResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "RestoreApplicationsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->RESTORE_APPLICATIONS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getAssetAt(I)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public getAssetCount()I
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_0
.end method
