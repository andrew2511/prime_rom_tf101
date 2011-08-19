.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;


# static fields
.field private static final clipRect:Landroid/graphics/Rect;

.field private static final destRect:Landroid/graphics/Rect;

.field private static final oval:Landroid/graphics/RectF;

.field private static final sourceRect:Landroid/graphics/Rect;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->oval:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    .line 37
    return-void
.end method


# virtual methods
.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V
    .registers 4
    .parameter "img"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 121
    if-eqz p1, :cond_5

    .line 122
    invoke-interface {p1, p0, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V

    .line 124
    :cond_5
    return-void
.end method

.method public drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z
    .registers 15
    .parameter "image"
    .parameter "dx"
    .parameter "dy"
    .parameter "dw"
    .parameter "dh"
    .parameter "sx"
    .parameter "sy"
    .parameter "sw"
    .parameter "sh"

    .prologue
    const/4 v1, 0x0

    .line 264
    if-nez p1, :cond_4

    .line 274
    .end local p1
    :cond_3
    :goto_3
    return v1

    .line 267
    .restart local p1
    :cond_4
    check-cast p1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .end local p1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 271
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-virtual {v1, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public fillRect(IIII)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 40
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    .line 41
    return-void
.end method

.method public setColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 86
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    return-void
.end method
