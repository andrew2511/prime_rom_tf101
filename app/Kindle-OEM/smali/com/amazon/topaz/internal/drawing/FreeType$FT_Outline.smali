.class public final Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FT_Outline"
.end annotation


# static fields
.field public static final FT_CURVE_TAG_CONIC:I = 0x0

.field public static final FT_CURVE_TAG_CUBIC:I = 0x2

.field public static final FT_CURVE_TAG_ON:I = 0x1

.field public static final FT_CURVE_TAG_TOUCH_BOTH:I = 0x18

.field public static final FT_CURVE_TAG_TOUCH_X:I = 0x8

.field public static final FT_CURVE_TAG_TOUCH_Y:I = 0x10

.field public static final FT_Curve_Tag_Conic:I = 0x0

.field public static final FT_Curve_Tag_Cubic:I = 0x2

.field public static final FT_Curve_Tag_On:I = 0x1

.field public static final FT_Curve_Tag_Touch_X:I = 0x8

.field public static final FT_Curve_Tag_Touch_Y:I = 0x10

.field public static final FT_OUTLINE_EVEN_ODD_FILL:I = 0x2

.field public static final FT_OUTLINE_HIGH_PRECISION:I = 0x100

.field public static final FT_OUTLINE_IGNORE_DROPOUTS:I = 0x8

.field public static final FT_OUTLINE_NONE:I = 0x0

.field public static final FT_OUTLINE_OWNER:I = 0x1

.field public static final FT_OUTLINE_REVERSE_FILL:I = 0x4

.field public static final FT_OUTLINE_SINGLE_PASS:I = 0x200

.field public static final ft_outline_even_odd_fill:I = 0x2

.field public static final ft_outline_high_precision:I = 0x100

.field public static final ft_outline_ignore_dropouts:I = 0x8

.field public static final ft_outline_none:I = 0x0

.field public static final ft_outline_owner:I = 0x1

.field public static final ft_outline_reverse_fill:I = 0x4

.field public static final ft_outline_single_pass:I = 0x200


# instance fields
.field private contourOffset:I

.field private contours:[I

.field private flags:I

.field private numContours:I

.field private numPoints:I

.field private pointOffset:I

.field private points_x:[I

.field private points_y:[I

.field private scaleX:I

.field private scaleY:I

.field private translateX:I

.field private translateY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FT_CURVE_TAG(C)C
    .locals 1
    .parameter "flag"

    .prologue
    .line 563
    and-int/lit8 v0, p0, 0x3

    int-to-char v0, v0

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->flags:I

    return v0
.end method


# virtual methods
.method public Decompose(Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;)I
    .locals 27
    .parameter "raster"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
        }
    .end annotation

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleX:I

    move/from16 v20, v0

    .line 287
    .local v20, scaleX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleY:I

    move/from16 v21, v0

    .line 288
    .local v21, scaleY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateX:I

    move/from16 v23, v0

    .line 289
    .local v23, translateX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateY:I

    move/from16 v24, v0

    .line 291
    .local v24, translateY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->pointOffset:I

    move v12, v0

    .line 292
    .local v12, first:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_x:[I

    move-object/from16 v18, v0

    .local v18, points_x:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_y:[I

    move-object/from16 v19, v0

    .line 294
    .local v19, points_y:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numContours:I

    move/from16 v16, v0

    .line 295
    .local v16, numContours:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->contourOffset:I

    move v10, v0

    .line 296
    .local v10, contourOffset:I
    move v15, v10

    .local v15, n:I
    :goto_0
    add-int v3, v10, v16

    if-ge v15, v3, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->contours:[I

    move-object v3, v0

    aget v3, v3, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->pointOffset:I

    move v4, v0

    add-int v13, v3, v4

    .line 301
    .local v13, last:I
    move v14, v13

    .line 302
    .local v14, limit:I
    move/from16 v22, v12

    .line 304
    .local v22, start:I
    move/from16 v17, v12

    .line 306
    .local v17, pointIndex:I
    aget v3, v18, v22

    mul-int v3, v3, v20

    shr-int/lit8 v3, v3, 0xc

    add-int v25, v3, v23

    .line 307
    .local v25, x:I
    aget v3, v19, v22

    mul-int v3, v3, v21

    shr-int/lit8 v3, v3, 0xc

    add-int v26, v3, v24

    .line 309
    .local v26, y:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->move_to(II)I

    move-result v11

    .line 310
    .local v11, error:I
    if-eqz v11, :cond_0

    move v3, v11

    .line 344
    .end local v11           #error:I
    .end local v13           #last:I
    .end local v14           #limit:I
    .end local v17           #pointIndex:I
    .end local v22           #start:I
    .end local v25           #x:I
    .end local v26           #y:I
    :goto_1
    return v3

    .line 313
    .restart local v11       #error:I
    .restart local v13       #last:I
    .restart local v14       #limit:I
    .restart local v17       #pointIndex:I
    .restart local v22       #start:I
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_0
    :goto_2
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_2

    .line 315
    add-int/lit8 v17, v17, 0x3

    .line 317
    const/4 v3, 0x2

    sub-int v3, v17, v3

    aget v3, v18, v3

    mul-int v3, v3, v20

    shr-int/lit8 v3, v3, 0xc

    add-int v4, v3, v23

    .line 318
    .local v4, x1:I
    const/4 v3, 0x2

    sub-int v3, v17, v3

    aget v3, v19, v3

    mul-int v3, v3, v21

    shr-int/lit8 v3, v3, 0xc

    add-int v5, v3, v24

    .line 319
    .local v5, y1:I
    const/4 v3, 0x1

    sub-int v3, v17, v3

    aget v3, v18, v3

    mul-int v3, v3, v20

    shr-int/lit8 v3, v3, 0xc

    add-int v6, v3, v23

    .line 320
    .local v6, x2:I
    const/4 v3, 0x1

    sub-int v3, v17, v3

    aget v3, v19, v3

    mul-int v3, v3, v21

    shr-int/lit8 v3, v3, 0xc

    add-int v7, v3, v24

    .line 325
    .local v7, y2:I
    move/from16 v0, v17

    move v1, v14

    if-gt v0, v1, :cond_1

    .line 327
    aget v3, v18, v17

    mul-int v3, v3, v20

    shr-int/lit8 v3, v3, 0xc

    add-int v8, v3, v23

    .line 328
    .local v8, x3:I
    aget v3, v19, v17

    mul-int v3, v3, v21

    shr-int/lit8 v3, v3, 0xc

    add-int v9, v3, v24

    .local v9, y3:I
    :goto_3
    move-object/from16 v3, p1

    .line 335
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/topaz/internal/drawing/FreeType$TRaster;->gray_render_cubic(IIIIII)V

    goto :goto_2

    .line 332
    .end local v8           #x3:I
    .end local v9           #y3:I
    :cond_1
    aget v3, v18, v22

    mul-int v3, v3, v20

    shr-int/lit8 v3, v3, 0xc

    add-int v8, v3, v23

    .line 333
    .restart local v8       #x3:I
    aget v3, v19, v22

    mul-int v3, v3, v21

    shr-int/lit8 v3, v3, 0xc

    add-int v9, v3, v24

    .restart local v9       #y3:I
    goto :goto_3

    .line 338
    .end local v4           #x1:I
    .end local v5           #y1:I
    .end local v6           #x2:I
    .end local v7           #y2:I
    .end local v8           #x3:I
    .end local v9           #y3:I
    :cond_2
    if-eqz v11, :cond_3

    move v3, v11

    .line 339
    goto :goto_1

    .line 341
    :cond_3
    add-int/lit8 v12, v13, 0x1

    .line 296
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 344
    .end local v11           #error:I
    .end local v13           #last:I
    .end local v14           #limit:I
    .end local v17           #pointIndex:I
    .end local v22           #start:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public computeBoundingBox()Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 353
    new-instance v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;

    invoke-direct {v3}, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;-><init>()V

    .line 355
    .local v3, retval:Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;
    iget v4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->pointOffset:I

    .line 356
    .local v4, vecIndex:I
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_x:[I

    .local v1, points_x:[I
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_y:[I

    .line 357
    .local v2, points_y:[I
    iget v7, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->pointOffset:I

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numPoints:I

    add-int v0, v7, v8

    .line 359
    .local v0, limit:I
    if-gtz v0, :cond_0

    .line 361
    iput v9, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    iput v9, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 362
    iput v9, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    iput v9, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 395
    :goto_0
    return-object v3

    .line 366
    :cond_0
    aget v7, v1, v4

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 367
    aget v7, v2, v4

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 371
    :goto_1
    if-ge v4, v0, :cond_5

    .line 373
    aget v5, v1, v4

    .line 374
    .local v5, x:I
    aget v6, v2, v4

    .line 377
    .local v6, y:I
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    if-ge v5, v7, :cond_1

    iput v5, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 378
    :cond_1
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    if-le v5, v7, :cond_2

    iput v5, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    .line 379
    :cond_2
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    if-ge v6, v7, :cond_3

    iput v6, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 380
    :cond_3
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    if-le v6, v7, :cond_4

    iput v6, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    .line 371
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 384
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_5
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleX:I

    mul-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateX:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 385
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleY:I

    mul-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateY:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 386
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleX:I

    mul-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateX:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    .line 387
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleY:I

    mul-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateY:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    .line 390
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    shr-int/lit8 v7, v7, 0x6

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMin:I

    .line 391
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    shr-int/lit8 v7, v7, 0x6

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMin:I

    .line 392
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    add-int/lit8 v7, v7, 0x3f

    shr-int/lit8 v7, v7, 0x6

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->xMax:I

    .line 393
    iget v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    add-int/lit8 v7, v7, 0x3f

    shr-int/lit8 v7, v7, 0x6

    iput v7, v3, Lcom/amazon/topaz/internal/drawing/FreeType$FT_BBox;->yMax:I

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->flags:I

    return v0
.end method

.method public getNumContours()S
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numContours:I

    int-to-short v0, v0

    return v0
.end method

.method public getNumPoints()S
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numPoints:I

    int-to-short v0, v0

    return v0
.end method

.method public getScaleX()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleX:I

    return v0
.end method

.method public getScaleY()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleY:I

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateX:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateY:I

    return v0
.end method

.method public setOutline([I[III[IIILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;I)V
    .locals 2
    .parameter "points_x"
    .parameter "points_y"
    .parameter "pointOffset"
    .parameter "numPoints"
    .parameter "contours"
    .parameter "contourOffset"
    .parameter "numContours"
    .parameter "source"
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 204
    :cond_1
    if-nez p4, :cond_2

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 209
    :cond_2
    if-nez p5, :cond_3

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 214
    :cond_3
    if-nez p7, :cond_4

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_4
    add-int v0, p6, p7

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p5, v0

    add-int/lit8 v0, v0, 0x1

    if-eq p4, v0, :cond_5

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 224
    :cond_5
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_x:[I

    iput-object p2, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->points_y:[I

    iput p3, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->pointOffset:I

    .line 225
    iput p4, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numPoints:I

    .line 227
    iput-object p5, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->contours:[I

    .line 228
    iput p6, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->contourOffset:I

    .line 229
    iput p7, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->numContours:I

    .line 239
    iget v0, p9, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->width:I

    shl-int/lit8 v0, v0, 0xc

    iget v1, p8, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p8, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleX:I

    .line 240
    iget v0, p9, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->height:I

    shl-int/lit8 v0, v0, 0xc

    iget v1, p8, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p8, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->scaleY:I

    .line 245
    iget v0, p9, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->x:I

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateX:I

    .line 246
    iget v0, p9, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->y:I

    iput v0, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->translateY:I

    .line 248
    iput p10, p0, Lcom/amazon/topaz/internal/drawing/FreeType$FT_Outline;->flags:I

    .line 249
    return-void
.end method
