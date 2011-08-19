.class public Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;
.super Ljava/lang/Object;
.source "FreeType.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheEntry"
.end annotation


# instance fields
.field private final cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

.field public final points_x:[I

.field public final points_y:[I

.field public final scale:I


# direct methods
.method public constructor <init>(II[I[II)V
    .locals 3
    .parameter "cacheKey"
    .parameter "scale"
    .parameter "points_x"
    .parameter "points_y"
    .parameter "numPoints"

    .prologue
    const/4 v2, 0x0

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    new-instance v0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    .line 2401
    iput p2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->scale:I

    .line 2402
    new-array v0, p5, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    new-array v0, p5, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_y:[I

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    invoke-static {p3, v2, v0, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_y:[I

    invoke-static {p4, v2, v0, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->points_x:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->setSize(I)V

    .line 2403
    return-void
.end method


# virtual methods
.method public getAllocSize()I
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->getAllocSize()I

    move-result v0

    return v0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->getCacheKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$TPZGlyphCache$CacheEntry;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I

    move-result v0

    return v0
.end method
