.class Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;
.super Ljava/lang/Object;
.source "AntiAliasedEdgePainter.java"


# static fields
.field private static final EDGE_SIZE:I = 0x2


# instance fields
.field private final antiAliasPaint:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xff

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v2, v5, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;->antiAliasPaint:[Landroid/graphics/Paint;

    .line 24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 25
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    mul-int/lit8 v2, v0, 0x40

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 28
    iget-object v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;->antiAliasPaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v1           #paint:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method


# virtual methods
.method public paint(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 34
    .local v8, width:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    .line 35
    .local v6, height:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_0

    .line 36
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;->antiAliasPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 37
    .local v5, paint:Landroid/graphics/Paint;
    int-to-float v2, v7

    int-to-float v3, v8

    int-to-float v4, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    sub-int v0, v6, v7

    int-to-float v2, v0

    int-to-float v3, v8

    sub-int v0, v6, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 40
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method
