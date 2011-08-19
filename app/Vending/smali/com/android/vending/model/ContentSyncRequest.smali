.class public Lcom/android/vending/model/ContentSyncRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "ContentSyncRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 33
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->CONTENT_SYNC_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 35
    return-void
.end method


# virtual methods
.method public addAssetState(Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 4
    .parameter "assetId"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "state"
    .parameter "installTime"
    .parameter "uninstallTime"
    .parameter "referrer"

    .prologue
    const/4 v2, 0x2

    .line 56
    iget-object v1, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 59
    .local v0, installState:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 61
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 63
    if-eqz p2, :cond_0

    .line 64
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 67
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 69
    const/4 v1, 0x4

    invoke-virtual {p4}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 71
    if-eqz p5, :cond_1

    .line 72
    const/4 v1, 0x5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 75
    :cond_1
    if-eqz p6, :cond_2

    .line 76
    const/4 v1, 0x6

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 80
    :cond_2
    if-eqz p7, :cond_3

    .line 81
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 83
    :cond_3
    return-void
.end method

.method public addSystemApp(Ljava/lang/String;ILjava/util/Collection;)V
    .locals 5
    .parameter "packageName"
    .parameter "versionCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, signatureHashes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v4, 0xa

    .line 89
    iget-object v3, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 91
    .local v2, systemApp:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v3, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 93
    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 94
    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 96
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, hash:Ljava/lang/String;
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0           #hash:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, protoBytes:[B
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/model/ContentSyncRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    return v2

    .line 126
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 127
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
