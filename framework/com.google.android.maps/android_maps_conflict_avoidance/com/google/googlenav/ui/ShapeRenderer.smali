.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;
.super Ljava/lang/Object;
.source "ShapeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    }
.end annotation


# instance fields
.field private pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private polyBoundaryPixelXY:[[[J

.field private final shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;


# direct methods
.method private static getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 7
    .parameter "poly"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 485
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    if-nez v2, :cond_11

    .line 486
    new-array v2, v5, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    aput-object v3, v2, v4

    .line 493
    :goto_10
    return-object v2

    .line 488
    :cond_11
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v2

    new-array v0, v2, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 489
    .local v0, boundaries:[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    aput-object v2, v0, v4

    .line 490
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1e
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    .line 491
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    sub-int v3, v1, v5

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    move-object v2, v0

    .line 493
    goto :goto_10
.end method

.method private static getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I
    .registers 2
    .parameter "poly"

    .prologue
    .line 470
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    if-nez v0, :cond_8

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private static getPixelXYOnScreen(II[J)[J
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "pixelXY"

    .prologue
    .line 461
    array-length v2, p2

    new-array v1, v2, [J

    .line 462
    .local v1, xy:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_1e

    .line 463
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v2

    sub-int/2addr v2, p0

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 465
    :cond_1e
    return-object v1
.end method

.method public static getX(J)I
    .registers 4
    .parameter "xy"

    .prologue
    .line 511
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getXY(II)J
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0x20

    .line 503
    int-to-long v4, p0

    shl-long v0, v4, v6

    .line 504
    .local v0, xl:J
    int-to-long v4, p1

    shl-long/2addr v4, v6

    ushr-long v2, v4, v6

    .line 505
    .local v2, yl:J
    or-long v4, v0, v2

    return-wide v4
.end method

.method public static getY(J)I
    .registers 4
    .parameter "xy"

    .prologue
    .line 517
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method protected static isInRange([I)Z
    .registers 6
    .parameter "pointXy"

    .prologue
    const/16 v4, 0xfa0

    const/16 v3, -0xfa0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 301
    aget v0, p0, v1

    if-gt v0, v4, :cond_18

    aget v0, p0, v1

    if-lt v0, v3, :cond_18

    aget v0, p0, v2

    if-gt v0, v4, :cond_18

    aget v0, p0, v2

    if-lt v0, v3, :cond_18

    move v0, v2

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17
.end method

.method static makeInRange(IIII[I)V
    .registers 13
    .parameter "endX"
    .parameter "endY"
    .parameter "startX"
    .parameter "startY"
    .parameter "outPoint"

    .prologue
    const/16 v7, 0xfa0

    const/16 v6, -0xfa0

    .line 267
    sub-int v1, p0, p2

    .line 268
    .local v1, width:I
    sub-int v0, p1, p3

    .line 270
    .local v0, height:I
    if-gt p0, v7, :cond_c

    if-ge p0, v6, :cond_1a

    .line 271
    :cond_c
    if-lez p0, :cond_35

    .line 272
    const/16 p0, 0xfa0

    .line 276
    :goto_10
    sub-int v2, p0, p2

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int p1, p3, v2

    .line 280
    :cond_1a
    if-gt p1, v7, :cond_1e

    if-ge p1, v6, :cond_2e

    .line 281
    :cond_1e
    add-int p1, v0, p3

    .line 282
    if-lez p1, :cond_38

    .line 283
    const/16 p1, 0xfa0

    .line 287
    :goto_24
    sub-int v2, p1, p3

    int-to-long v2, v2

    int-to-long v4, v1

    mul-long/2addr v2, v4

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int p0, p2, v2

    .line 289
    :cond_2e
    const/4 v2, 0x0

    aput p0, p4, v2

    .line 290
    const/4 v2, 0x1

    aput p1, p4, v2

    .line 291
    return-void

    .line 274
    :cond_35
    const/16 p0, -0xfa0

    goto :goto_10

    .line 285
    :cond_38
    const/16 p1, -0xfa0

    goto :goto_24
.end method

.method private static outcode(IIII)I
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 164
    if-gez p2, :cond_a

    const/16 v0, 0x8

    :goto_5
    if-gez p3, :cond_10

    const/4 v1, 0x2

    :cond_8
    :goto_8
    or-int/2addr v0, v1

    return v0

    :cond_a
    if-le p2, p0, :cond_e

    const/4 v0, 0x4

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_10
    if-le p3, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_8
.end method

.method private precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 19
    .parameter "zoom"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v1, v13

    if-ne v0, v1, :cond_b

    .line 155
    :cond_a
    return-void

    .line 111
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    move-object v13, v0

    array-length v13, v13

    new-array v13, v13, [[[J

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    .line 113
    const/4 v7, 0x0

    .local v7, p:I
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    move-object v13, v0

    array-length v13, v13

    if-ge v7, v13, :cond_a

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    move-object v13, v0

    aget-object v13, v13, v7

    instance-of v13, v13, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    if-nez v13, :cond_2f

    .line 113
    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 119
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    move-object v13, v0

    aget-object v10, v13, v7

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    .line 120
    .local v10, poly:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v5

    .line 121
    .local v5, boundaryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    move-object v13, v0

    new-array v14, v5, [[J

    aput-object v14, v13, v7

    .line 122
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    .line 124
    .local v3, boundaries:[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    const/4 v2, 0x0

    .local v2, b:I
    :goto_4a
    if-ge v2, v5, :cond_2c

    .line 125
    aget-object v4, v3, v2

    .line 128
    .local v4, boundary:[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    array-length v13, v4

    new-array v8, v13, [J

    .line 129
    .local v8, pixelXY:[J
    const/4 v9, 0x1

    .line 130
    .local v9, point:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 133
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v14

    const/4 v15, 0x0

    aget-object v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v15

    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v14

    aput-wide v14, v8, v13

    .line 139
    const/4 v6, 0x1

    .local v6, i:I
    :goto_79
    array-length v13, v4

    if-ge v6, v13, :cond_c6

    .line 140
    aget-object v13, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v11

    .line 141
    .local v11, x:I
    aget-object v13, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v12

    .line 142
    .local v12, y:I
    const/4 v13, 0x1

    sub-int v13, v9, v13

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v13

    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_bb

    const/4 v13, 0x1

    sub-int v13, v9, v13

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v13

    sub-int v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_bb

    array-length v13, v4

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v6, v13, :cond_c3

    .line 145
    :cond_bb
    invoke-static {v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v13

    aput-wide v13, v8, v9

    .line 146
    add-int/lit8 v9, v9, 0x1

    .line 139
    :cond_c3
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 151
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    move-object v13, v0

    aget-object v13, v13, v7

    new-array v14, v9, [J

    aput-object v14, v13, v2

    .line 152
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    move-object v14, v0

    aget-object v14, v14, v7

    aget-object v14, v14, v2

    const/4 v15, 0x0

    invoke-static {v8, v13, v14, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4a
.end method

.method private renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 23
    .parameter "painter"
    .parameter "x"
    .parameter "y"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "ellipse"
    .parameter "zoom"

    .prologue
    .line 222
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 246
    :cond_e
    :goto_e
    return-void

    .line 228
    :cond_f
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getCenter()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v12

    .line 230
    .local v12, center:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseWidth()I

    move-result v4

    move-object/from16 v0, p7

    move v1, v4

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v7

    .line 231
    .local v7, ellipseWidth:I
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseHeight()I

    move-result v4

    move-object/from16 v0, p7

    move v1, v4

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v8

    .line 233
    .local v8, ellipseHeight:I
    move-object v0, v12

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    sub-int v5, v4, p2

    .line 234
    .local v5, centerX:I
    move-object v0, v12

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    sub-int v6, v4, p3

    .line 236
    .local v6, centerY:I
    div-int/lit8 v4, v7, 0x2

    sub-int v4, v5, v4

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v6, v9

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v4

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v14

    .line 238
    .local v14, outcodeUL:I
    div-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v6

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v4

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v13

    .line 241
    .local v13, outcodeLR:I
    and-int v4, v14, v13

    if-nez v4, :cond_e

    .line 242
    invoke-interface/range {p6 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v9

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    move-result v10

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    move-result v11

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintEllipse(IIIIIII)V

    goto :goto_e
.end method

.method private renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 27
    .parameter "painter"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "pixelXY"
    .parameter "poly"
    .parameter "zoom"

    .prologue
    .line 338
    const/4 v14, 0x2

    new-array v12, v14, [I

    .line 339
    .local v12, xyDiff:[I
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 340
    .local v13, xyDiffLast:[I
    const/4 v14, 0x2

    new-array v10, v14, [I

    .line 343
    .local v10, rangeAdjustedXy:[I
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-wide v15, p6, v15

    invoke-static/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v15

    sub-int v15, v15, p2

    aput v15, v13, v14

    .line 344
    const/4 v14, 0x1

    const/4 v15, 0x0

    aget-wide v15, p6, v15

    invoke-static/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v15

    sub-int v15, v15, p3

    aput v15, v13, v14

    .line 345
    const/4 v14, 0x0

    aget v14, v13, v14

    const/4 v15, 0x1

    aget v15, v13, v15

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v14

    move v3, v15

    invoke-static {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v7

    .line 348
    .local v7, lastOutcode:I
    const/4 v11, 0x1

    .line 349
    .local v11, skipTo:Z
    const/4 v8, 0x0

    .line 350
    .local v8, lineStarted:Z
    const/4 v5, 0x1

    .local v5, i:I
    :goto_34
    move-object/from16 v0, p6

    array-length v0, v0

    move v14, v0

    if-ge v5, v14, :cond_e0

    .line 351
    const/4 v14, 0x0

    aget-wide v15, p6, v5

    invoke-static/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v15

    sub-int v15, v15, p2

    aput v15, v12, v14

    const/4 v14, 0x1

    aget-wide v16, p6, v5

    invoke-static/range {v16 .. v17}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v16

    sub-int v16, v16, p3

    aput v16, v12, v14

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v15

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v9

    .line 359
    .local v9, outcode:I
    and-int v14, v7, v9

    if-nez v14, :cond_de

    .line 360
    if-nez v8, :cond_77

    .line 361
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    move-result v14

    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v15

    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineStyle()I

    move-result v16

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->startLine(III)V

    .line 363
    const/4 v8, 0x1

    .line 366
    :cond_77
    invoke-static {v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    move-result v6

    .line 367
    .local v6, inRange:Z
    if-nez v6, :cond_95

    .line 368
    const/4 v14, 0x0

    aget v14, v12, v14

    const/4 v15, 0x1

    aget v15, v12, v15

    const/16 v16, 0x0

    aget v16, v13, v16

    const/16 v17, 0x1

    aget v17, v13, v17

    move v0, v14

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    .line 371
    :cond_95
    invoke-static {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    move-result v14

    if-nez v14, :cond_b3

    .line 372
    const/4 v14, 0x0

    aget v14, v13, v14

    const/4 v15, 0x1

    aget v15, v13, v15

    const/16 v16, 0x0

    aget v16, v12, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    move v0, v14

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    .line 374
    :cond_b3
    if-eqz v6, :cond_d2

    .line 376
    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    move v3, v11

    invoke-interface {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    .line 383
    :goto_bd
    if-nez v6, :cond_db

    const/4 v14, 0x1

    move v11, v14

    .line 387
    .end local v6           #inRange:Z
    :goto_c1
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v12, v15

    aput v15, v13, v14

    .line 388
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v12, v15

    aput v15, v13, v14

    .line 389
    move v7, v9

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_34

    .line 379
    .restart local v6       #inRange:Z
    :cond_d2
    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v13

    move v3, v11

    invoke-interface {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    goto :goto_bd

    .line 383
    :cond_db
    const/4 v14, 0x0

    move v11, v14

    goto :goto_c1

    .line 385
    .end local v6           #inRange:Z
    :cond_de
    const/4 v11, 0x1

    goto :goto_c1

    .line 391
    .end local v9           #outcode:I
    :cond_e0
    if-eqz v8, :cond_e5

    .line 392
    invoke-interface/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->endLine()V

    .line 394
    :cond_e5
    return-void
.end method

.method private renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 19
    .parameter "painter"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "boundaryPixelXY"
    .parameter "poly"
    .parameter "zoom"

    .prologue
    .line 407
    const/4 v6, 0x0

    .line 409
    .local v6, overlap:Z
    invoke-static/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v0

    .line 410
    .local v0, boundaries:I
    new-array v1, v0, [[J

    .line 411
    .local v1, boundaryPixelXYOnScreen:[[J
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    invoke-static {p2, p3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    move-result-object v8

    aput-object v8, v1, v7

    .line 415
    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v8

    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v4

    .line 418
    .local v4, lastOutcode:I
    move v2, v4

    .line 420
    .local v2, cumulativeOutcode:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2b
    const/4 v7, 0x0

    aget-object v7, v1, v7

    array-length v7, v7

    if-ge v3, v7, :cond_4c

    .line 423
    const/4 v7, 0x0

    aget-object v7, v1, v7

    aget-wide v7, v7, v3

    invoke-static {v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    aget-wide v8, v8, v3

    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v8

    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v5

    .line 426
    .local v5, outcode:I
    and-int v7, v4, v5

    if-nez v7, :cond_61

    .line 428
    const/4 v6, 0x1

    .line 443
    .end local v5           #outcode:I
    :cond_4c
    const/16 v7, 0xf

    if-ne v2, v7, :cond_51

    .line 444
    const/4 v6, 0x1

    .line 447
    :cond_51
    if-eqz v6, :cond_75

    .line 450
    const/4 v3, 0x1

    :goto_54
    if-ge v3, v0, :cond_66

    .line 451
    aget-object v7, p6, v3

    invoke-static {p2, p3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    move-result-object v7

    aput-object v7, v1, v3

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 433
    .restart local v5       #outcode:I
    :cond_61
    or-int/2addr v2, v5

    .line 434
    move v4, v5

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 454
    .end local v5           #outcode:I
    :cond_66
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    move-result v7

    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v8

    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getFillColor()I

    move-result v9

    invoke-interface {p1, v1, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintPolygon([[JIII)V

    .line 457
    :cond_75
    return-void
.end method


# virtual methods
.method public getImageVersion()I
    .registers 5

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, id:I
    const/4 v1, 0x0

    .local v1, p:I
    :goto_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 56
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_13

    .line 58
    const/4 v2, 0x0

    .line 63
    :goto_12
    return v2

    .line 60
    :cond_13
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->getId()I

    move-result v3

    add-int v0, v2, v3

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    move v2, v0

    .line 63
    goto :goto_12
.end method

.method public render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 20
    .parameter "painter"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "zoom"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    move-result v2

    if-nez v2, :cond_7

    .line 217
    :cond_6
    return-void

    .line 195
    :cond_7
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 198
    const/4 v12, 0x0

    .local v12, p:I
    :goto_e
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v2, v2

    if-ge v12, v2, :cond_6

    .line 199
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v2, v2, v12

    instance-of v2, v2, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    if-eqz v2, :cond_32

    .line 200
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v8, v2, v12

    check-cast v8, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 198
    :cond_2f
    :goto_2f
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 203
    :cond_32
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v9, v2, v12

    check-cast v9, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    .line 204
    .local v9, renderablePoly:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v2, v2, v12

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 206
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v8, v2, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    goto :goto_2f

    .line 210
    :cond_55
    const/4 v11, 0x0

    .local v11, b:I
    :goto_56
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v2, v2, v12

    array-length v2, v2

    if-ge v11, v2, :cond_2f

    .line 211
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v2, v2, v12

    aget-object v8, v2, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 210
    add-int/lit8 v11, v11, 0x1

    goto :goto_56
.end method
