.class public Lcom/android/vending/model/ReconstructDatabaseRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "ReconstructDatabaseRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->RECONSTRUCT_DATABASE_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/ReconstructDatabaseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 16
    return-void
.end method


# virtual methods
.method public setRetrieveFullHistory(Z)V
    .locals 2
    .parameter "retrieveFullHistory"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/vending/model/ReconstructDatabaseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 21
    return-void
.end method
