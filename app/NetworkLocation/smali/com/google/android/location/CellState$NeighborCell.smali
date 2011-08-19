.class public Lcom/google/android/location/CellState$NeighborCell;
.super Ljava/lang/Object;
.source "CellState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/CellState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeighborCell"
.end annotation


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mPsc:I

.field private final mRssi:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "cid"
    .parameter "lac"
    .parameter "psc"
    .parameter "rssi"

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p1, p0, Lcom/google/android/location/CellState$NeighborCell;->mCid:I

    .line 334
    iput p2, p0, Lcom/google/android/location/CellState$NeighborCell;->mLac:I

    .line 335
    iput p3, p0, Lcom/google/android/location/CellState$NeighborCell;->mPsc:I

    .line 336
    iput p4, p0, Lcom/google/android/location/CellState$NeighborCell;->mRssi:I

    .line 337
    return-void
.end method


# virtual methods
.method public gcell(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6
    .parameter "primaryCell"

    .prologue
    const/4 v5, -0x1

    .line 364
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/location/protocol/GcellularMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 365
    .local v0, nCell:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/location/CellState$NeighborCell;->mCid:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 366
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/location/CellState$NeighborCell;->mLac:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 367
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/location/CellState$NeighborCell;->mRssi:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 368
    iget v3, p0, Lcom/google/android/location/CellState$NeighborCell;->mPsc:I

    if-eq v3, v5, :cond_0

    .line 369
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/android/location/CellState$NeighborCell;->mPsc:I

    invoke-virtual {v0, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v1

    .line 372
    .local v1, primaryMcc:I
    if-eq v1, v5, :cond_1

    .line 373
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v2

    .line 376
    .local v2, primaryMnc:I
    if-eq v2, v5, :cond_2

    .line 377
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 379
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget v0, p0, Lcom/google/android/location/CellState$NeighborCell;->mPsc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/location/CellState$NeighborCell;->mPsc:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/CellState$NeighborCell;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/location/CellState$NeighborCell;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/CellState$NeighborCell;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/CellState$NeighborCell;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
