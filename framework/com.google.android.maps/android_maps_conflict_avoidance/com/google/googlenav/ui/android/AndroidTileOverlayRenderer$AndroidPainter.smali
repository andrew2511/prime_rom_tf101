.class Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
.super Ljava/lang/Object;
.source "AndroidTileOverlayRenderer.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidPainter"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final linePaint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final polygonPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field private final vertexPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 112
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    .line 104
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    return-void
.end method

.method private drawPendingLine()V
    .registers 4

    .prologue
    .line 184
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    .line 185
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 187
    return-void
.end method

.method private ensureCanvas()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_22

    .line 137
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    .line 139
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    .line 141
    :cond_22
    return-void
.end method

.method private setColor(ILandroid/graphics/Paint;)V
    .registers 5
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 150
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v0, v1, 0xff

    .line 151
    .local v0, alpha:I
    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public addLineSegment([I[IZ)V
    .registers 9
    .parameter "endPoint"
    .parameter "startPoint"
    .parameter "skipTo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    if-eqz p3, :cond_12

    .line 176
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    .line 177
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    aget v1, p2, v3

    int-to-float v1, v1

    aget v2, p2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    :cond_12
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    aget v1, p1, v3

    int-to-float v1, v1

    aget v2, p1, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    return-void
.end method

.method public endLine()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    .line 171
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public paintEllipse(IIIIIII)V
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "outlineWidth"
    .parameter "outlineColor"
    .parameter "fillColor"

    .prologue
    .line 255
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    .line 257
    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p7, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    .line 263
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 266
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    .line 269
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method public paintPolygon([[JIII)V
    .registers 15
    .parameter "boundaryPixelXY"
    .parameter "lineColor"
    .parameter "lineWidth"
    .parameter "fillColor"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 213
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    .line 215
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 216
    .local v2, path:Landroid/graphics/Path;
    array-length v1, p1

    .line 217
    .local v1, boundaryCount:I
    const/4 v0, 0x0

    .local v0, boundary:I
    :goto_c
    if-ge v0, v1, :cond_47

    .line 219
    aget-object v5, p1, v0

    aget-wide v5, v5, v9

    invoke-static {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v5

    int-to-float v5, v5

    aget-object v6, p1, v0

    aget-wide v6, v6, v9

    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    aget-object v5, p1, v0

    array-length v4, v5

    .line 224
    .local v4, pointCount:I
    const/4 v3, 0x1

    .local v3, point:I
    :goto_27
    if-ge v3, v4, :cond_41

    .line 225
    aget-object v5, p1, v0

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v5

    int-to-float v5, v5

    aget-object v6, p1, v0

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 230
    :cond_41
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 234
    .end local v3           #point:I
    .end local v4           #pointCount:I
    :cond_47
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 235
    if-ne p4, v8, :cond_82

    .line 236
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    :goto_55
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    .line 241
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    if-eq p2, v8, :cond_81

    .line 245
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 246
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    .line 249
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    :cond_81
    return-void

    .line 238
    :cond_82
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_55
.end method

.method public setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V
    .registers 4
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "image"

    .prologue
    .line 126
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    .line 127
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    .line 128
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .line 129
    return-void
.end method

.method public startLine(III)V
    .registers 6
    .parameter "color"
    .parameter "width"
    .parameter "lineStyle"

    .prologue
    .line 157
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    .line 158
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 160
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    const/4 v0, 0x1

    if-ne p3, v0, :cond_20

    .line 162
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$100()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 166
    :goto_1a
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    .line 167
    return-void

    .line 164
    :cond_20
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1a
.end method
