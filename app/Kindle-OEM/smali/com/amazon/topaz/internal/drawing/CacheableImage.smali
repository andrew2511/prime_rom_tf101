.class public final Lcom/amazon/topaz/internal/drawing/CacheableImage;
.super Ljava/lang/Object;
.source "CacheableImage.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/IImage;
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# instance fields
.field private final cacheKey:Ljava/lang/Integer;

.field private final image:Lcom/amazon/topaz/internal/book/IImage;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/amazon/topaz/internal/book/IImage;)V
    .locals 0
    .parameter "cacheKey"
    .parameter "image"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->cacheKey:Ljava/lang/Integer;

    .line 31
    iput-object p2, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;Lcom/amazon/system/drawing/Color;)Lcom/amazon/system/drawing/Rectangle;
    .locals 1
    .parameter "canvas"
    .parameter "pos"
    .parameter "color"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/topaz/internal/book/IImage;->draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;Lcom/amazon/system/drawing/Color;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getAllocSize()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getAllocSize()I

    move-result v0

    return v0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->cacheKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDestinationRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getDestinationRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/CacheableImage;->image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/book/IImage;->getAllocSize()I

    move-result v0

    return v0
.end method
