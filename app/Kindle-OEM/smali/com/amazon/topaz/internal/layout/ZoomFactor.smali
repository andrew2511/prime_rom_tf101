.class public Lcom/amazon/topaz/internal/layout/ZoomFactor;
.super Ljava/lang/Object;
.source "ZoomFactor.java"


# instance fields
.field private final bookDPI:I

.field private final screenDPI:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "screenDPI"
    .parameter "bookDPI"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    .line 25
    iput p2, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    .line 26
    return-void
.end method


# virtual methods
.method public bookToScreen(I)I
    .locals 3
    .parameter "bookDots"

    .prologue
    .line 36
    if-gez p1, :cond_0

    .line 38
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    div-int/2addr v0, v1

    .line 42
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public bookToScreen(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "bookRect"

    .prologue
    .line 71
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v1

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v2

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p0, v3}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v3

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 73
    .local v0, retval:Lcom/amazon/system/drawing/Rectangle;
    return-object v0
.end method

.method public getBookDPI()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    return v0
.end method

.method public getScreenDPI()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    return v0
.end method

.method public screenToBook(I)I
    .locals 3
    .parameter "pixels"

    .prologue
    .line 54
    if-gez p1, :cond_0

    .line 56
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    div-int/2addr v0, v1

    .line 60
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookDPI:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenDPI:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public screenToBook(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "screenRect"

    .prologue
    .line 83
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v1

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v2

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p0, v3}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v3

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 85
    .local v0, retval:Lcom/amazon/system/drawing/Rectangle;
    return-object v0
.end method
