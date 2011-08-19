.class Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TPZGlyphCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;
    }
.end annotation


# static fields
.field private static MAX_COMPRESSION:S

.field private static TPZ_LOC_RESET:I


# instance fields
.field private cache:Lcom/amazon/topaz/internal/caching/Cache;

.field private compression:S

.field private curID:I

.field private curPos:I

.field private curScale:I

.field private maxPos:I

.field private positionList_x:[I

.field private positionList_y:[I

.field private prevX:I

.field private prevY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2386
    const/4 v0, 0x6

    sput-short v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->MAX_COMPRESSION:S

    .line 2387
    const v0, 0x7fffffff

    sput v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/caching/Cache;S)V
    .locals 1
    .parameter "cache"
    .parameter "compression"

    .prologue
    .line 2468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2469
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 2470
    const/16 v0, 0x200

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    .line 2471
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->reset(S)V

    .line 2472
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 2384
    sget v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    return v0
.end method

.method private expandArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2507
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    shl-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    .local v0, newPositionList_x:[I
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    shl-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 2510
    .local v1, newPositionList_y:[I
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2511
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    .line 2512
    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    return-void
.end method

.method private reset(S)V
    .locals 1
    .parameter "compression"

    .prologue
    .line 2480
    iput-short p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    .line 2482
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    .line 2483
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    .line 2484
    return-void
.end method


# virtual methods
.method get(I)Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;
    .locals 2
    .parameter "id"

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/caching/Cache;->get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;

    return-object p0
.end method

.method public recordPoint(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2566
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-gez v2, :cond_0

    .line 2568
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not currently recording."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2571
    :cond_0
    iget-short v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    if-lez v2, :cond_2

    .line 2572
    iget-short v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    shr-int v0, p1, v2

    .line 2573
    .local v0, compressedX:I
    iget-short v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    shr-int v1, p2, v2

    .line 2576
    .local v1, compressedY:I
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevX:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevY:I

    if-ne v1, v2, :cond_1

    .line 2598
    .end local v0           #compressedX:I
    .end local v1           #compressedY:I
    :goto_0
    return-void

    .line 2583
    .restart local v0       #compressedX:I
    .restart local v1       #compressedY:I
    :cond_1
    iget-short v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    shl-int p1, v0, v2

    .line 2584
    iget-short v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    shl-int p2, v1, v2

    .line 2586
    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevX:I

    .line 2587
    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevY:I

    .line 2590
    .end local v0           #compressedX:I
    .end local v1           #compressedY:I
    :cond_2
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    if-ne v2, v3, :cond_3

    .line 2592
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->expandArray()V

    .line 2594
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    aput p1, v2, v3

    .line 2595
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    iget v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    aput p2, v2, v3

    .line 2597
    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    goto :goto_0
.end method

.method recordReset()V
    .locals 3

    .prologue
    .line 2605
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-gez v0, :cond_0

    .line 2607
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not currently recording."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2610
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->maxPos:I

    if-ne v0, v1, :cond_1

    .line 2612
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->expandArray()V

    .line 2615
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    if-eqz v0, :cond_2

    .line 2617
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    sget v2, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    aput v2, v0, v1

    .line 2618
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    sget v2, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    aput v2, v0, v1

    .line 2619
    sget v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevX:I

    .line 2620
    sget v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->TPZ_LOC_RESET:I

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->prevY:I

    .line 2623
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    .line 2625
    :cond_2
    return-void
.end method

.method remove(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/caching/Cache;->remove(Ljava/lang/Integer;)V

    .line 2634
    return-void
.end method

.method public setCompression(S)V
    .locals 1
    .parameter "compression"

    .prologue
    .line 2496
    sget-short v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->MAX_COMPRESSION:S

    if-le p1, v0, :cond_0

    .line 2497
    sget-short p1, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->MAX_COMPRESSION:S

    .line 2499
    :cond_0
    iput-short p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->compression:S

    .line 2500
    return-void
.end method

.method public startRecording(II)V
    .locals 2
    .parameter "id"
    .parameter "scale"

    .prologue
    .line 2523
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-eq v0, p1, :cond_0

    .line 2525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to record while already recording!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2531
    :cond_0
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    .line 2532
    iput p2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curScale:I

    .line 2533
    return-void
.end method

.method public stopRecording(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 2543
    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    if-eq v1, p1, :cond_1

    .line 2545
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to stop recording with incorrect ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2548
    :cond_1
    new-instance v0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    iget v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curScale:I

    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_x:[I

    iget-object v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->positionList_y:[I

    iget v5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;-><init>(II[I[II)V

    .line 2549
    .local v0, newElem:Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/caching/Cache;->add(Lcom/amazon/topaz/internal/caching/Cacheable;)V

    .line 2551
    const/4 v1, -0x1

    iput v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curID:I

    .line 2552
    iput v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curPos:I

    .line 2553
    iput v6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;->curScale:I

    .line 2554
    return-void
.end method
