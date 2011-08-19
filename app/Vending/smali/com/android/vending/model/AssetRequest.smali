.class public Lcom/android/vending/model/AssetRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "AssetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/AssetRequest$ViewFilterType;,
        Lcom/android/vending/model/AssetRequest$SortOrderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mAssetIdRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssetIdRequestsToServer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/AssetRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/model/AssetRequest;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 93
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/android/vending/model/AssetRequest;->mAccount:Ljava/lang/String;

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ASSETS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 100
    return-void
.end method


# virtual methods
.method public addAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAssetIdRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    return-object v0
.end method

.method public getAssetIdRequestsToServer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()Lcom/android/vending/model/Asset$AssetType;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/Asset$AssetType;->valueOf(I)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "AR"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, cacheKey:Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->numAssetId()I

    move-result v2

    .line 345
    .local v2, numAssetIds:I
    if-ne v2, v5, :cond_c

    .line 348
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v4, p0, Lcom/android/vending/model/AssetRequest;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/Asset$AssetType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasQuery()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasSortOrder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getSortOrder()Lcom/android/vending/model/AssetRequest$SortOrderType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/AssetRequest$SortOrderType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_4
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasViewFilter()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getViewFilter()Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasStartIndex()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 396
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getStartIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    :cond_6
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasNumEntries()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getNumEntries()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    :cond_7
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 406
    const-string v4, "rei"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_8
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 412
    const-string v4, "rdb"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_9
    :goto_0
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 419
    const-string v4, "rcc"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_a
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRankingType()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 424
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRankingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_b
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 349
    :cond_c
    if-le v2, v5, :cond_0

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v3, sortedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_d

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :cond_d
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 359
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    .line 360
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 413
    .end local v1           #i:I
    .end local v3           #sortedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 414
    const-string v4, "rvh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumEntries()J
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRankingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReconstructVendingHistory()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveCarrierChannel()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveExtendedInfo()Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveVendingHistory()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getSortOrder()Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/AssetRequest$SortOrderType;->valueOf(I)Lcom/android/vending/model/AssetRequest$SortOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewFilter()Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->valueOf(I)Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetType()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasNumEntries()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRankingType()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasReconstructVendingHistory()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveCarrierChannel()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveExtendedInfo()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveVendingHistory()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasSortOrder()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasStartIndex()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasViewFilter()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public numAssetId()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAssetType(Lcom/android/vending/model/Asset$AssetType;)V
    .locals 3
    .parameter "assetType"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 257
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 2
    .parameter "categoryId"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Category ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public setNumEntries(J)V
    .locals 2
    .parameter "numEntries"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 245
    return-void
.end method

.method public setPendingDownloadAssetIds([Ljava/lang/String;)V
    .locals 4
    .parameter "pendingDownloadAssetIds"

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 143
    return-void
.end method

.method public setRankingType(Ljava/lang/String;)V
    .locals 2
    .parameter "rankingType"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 322
    return-void
.end method

.method public setRetrieveCarrierChannel(Z)V
    .locals 2
    .parameter "retrieveCarrierChannel"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 310
    return-void
.end method

.method public setRetrieveExtendedInfo(Z)V
    .locals 2
    .parameter "retrieveExtended"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 273
    return-void
.end method

.method public setRetrieveVendingHistory(Z)V
    .locals 2
    .parameter "filterHistory"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 285
    return-void
.end method

.method public setSortOrder(Lcom/android/vending/model/AssetRequest$SortOrderType;)V
    .locals 3
    .parameter "sortOrder"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest$SortOrderType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 209
    return-void
.end method

.method public setStartIndex(J)V
    .locals 2
    .parameter "startIndex"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 233
    return-void
.end method

.method public setViewFilter(Lcom/android/vending/model/AssetRequest$ViewFilterType;)V
    .locals 3
    .parameter "viewFilter"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 221
    return-void
.end method
