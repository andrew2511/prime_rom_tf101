.class public Lcom/google/android/maps/driveabout/vector/cE;
.super Lcom/google/android/maps/driveabout/vector/aY;


# static fields
.field static a:F


# instance fields
.field private b:LG/w;

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/google/android/maps/driveabout/vector/br;

.field private final e:Lcom/google/android/maps/driveabout/vector/cq;

.field private final f:Lcom/google/android/maps/driveabout/vector/az;

.field private final g:Lcom/google/android/maps/driveabout/vector/cs;

.field private h:Lcom/google/android/maps/driveabout/vector/p;

.field private i:Landroid/graphics/Bitmap;

.field private final j:I

.field private final k:I

.field private final l:F

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/google/android/maps/driveabout/vector/cE;->a:F

    return-void
.end method

.method private constructor <init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p4}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cE;->b:LG/w;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ag;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/bW;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ag;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->g:Lcom/google/android/maps/driveabout/vector/cs;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/cE;->c:Ljava/util/ArrayList;

    move v1, v5

    move v2, v5

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cj;->d()I

    move-result v0

    if-le v0, v6, :cond_0

    div-int/lit8 v0, v0, 0x10

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :goto_1
    shl-int v1, v6, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->j:I

    const/high16 v0, 0x3f80

    move v1, v5

    move v2, v0

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cj;->c()F

    move-result v0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    sget v0, Lcom/google/android/maps/driveabout/vector/cE;->a:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    float-to-int v1, v0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->k:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->l:F

    invoke-virtual {p1}, LG/w;->i()LG/S;

    move-result-object v1

    invoke-virtual {v1}, LG/S;->g()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v0

    move v2, v5

    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, LG/w;->i()LG/S;

    move-result-object v3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/cE;->a(LG/S;Lcom/google/android/maps/driveabout/vector/cj;IF)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_1
.end method

.method synthetic constructor <init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/W;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;)V

    return-void
.end method

.method public static a(F)V
    .locals 0

    sput p0, Lcom/google/android/maps/driveabout/vector/cE;->a:F

    return-void
.end method

.method private a(LG/S;Lcom/google/android/maps/driveabout/vector/cj;IF)V
    .locals 11

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/cj;->a()LG/m;

    move-result-object v1

    invoke-virtual {v1}, LG/m;->b()I

    move-result v10

    const/4 v0, 0x2

    if-ge v10, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v4

    invoke-virtual {p1}, LG/S;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/cj;->d()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->g:Lcom/google/android/maps/driveabout/vector/cs;

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v9, 0x0

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->g:Lcom/google/android/maps/driveabout/vector/cs;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cE;->j:I

    new-array v5, v3, [I

    const/4 v0, 0x0

    aput p3, v5, v0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    move v2, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cs;->a(IZI[ILcom/google/android/maps/driveabout/vector/az;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->g:Lcom/google/android/maps/driveabout/vector/cs;

    const/high16 v6, 0x4100

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/cs;->a(LG/m;FZLG/Q;IFLcom/google/android/maps/driveabout/vector/br;Lcom/google/android/maps/driveabout/vector/cq;Lcom/google/android/maps/driveabout/vector/az;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    return-void
.end method

.method static a(Ljava/util/ArrayList;Landroid/graphics/Bitmap;F)V
    .locals 10

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x3f80

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v1

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cj;->d()I

    move-result v7

    int-to-float v5, v9

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cj;->e()Ljava/util/ArrayList;

    move-result-object v1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cE;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cj;->f()Ljava/util/ArrayList;

    move-result-object v1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cE;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, p6

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x4180

    mul-float v8, v2, v3

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/bg;

    iget v3, v2, Lcom/google/android/maps/driveabout/vector/bg;->a:F

    mul-float v3, v3, p5

    add-float v10, p3, v3

    iget v3, v2, Lcom/google/android/maps/driveabout/vector/bg;->b:F

    mul-float v3, v3, p5

    const/high16 v4, 0x3f00

    mul-float v11, v3, v4

    iget v3, v2, Lcom/google/android/maps/driveabout/vector/bg;->c:I

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v2, Lcom/google/android/maps/driveabout/vector/bg;->d:[I

    if-nez v12, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_1

    sub-float v3, v10, v11

    const/high16 v2, 0x3f00

    add-float v4, p4, v2

    add-float v5, v10, v11

    const/high16 v2, 0x3f00

    add-float v6, p4, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    sub-float v3, v10, v11

    const/4 v4, 0x0

    add-float v5, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p4

    move/from16 v19, v2

    move v2, v3

    move/from16 v3, v19

    :cond_3
    move v0, v3

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    const/4 v5, 0x0

    move v13, v5

    :goto_2
    array-length v5, v12

    rem-int/lit8 v5, v5, 0x2

    if-gt v13, v5, :cond_3

    array-length v14, v12

    const/4 v5, 0x0

    move v15, v5

    move/from16 v16, v2

    move/from16 v17, v3

    :goto_3
    if-ge v15, v14, :cond_6

    aget v18, v12, v15

    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    const/high16 v3, 0x4180

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    add-float v6, v4, v2

    if-eqz v16, :cond_4

    sub-float v3, v10, v11

    add-float v5, v10, v11

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-nez v16, :cond_5

    const/4 v2, 0x1

    :goto_4
    add-int v3, v17, v18

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move/from16 v16, v2

    move/from16 v17, v3

    move v4, v6

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move/from16 v3, v17

    move/from16 v2, v16

    goto :goto_2

    :cond_7
    return-void
.end method

.method static a(LG/m;Lcom/google/android/maps/driveabout/vector/bW;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v0, v4, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v1, v0, 0x5

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    if-lez v2, :cond_1

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    add-int/2addr v2, v1

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/vector/bW;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bW;->b:I

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/bW;->b:I

    move v0, v4

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x2

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->k:I

    shl-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cE;->j:I

    shl-int v2, v9, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cE;->l:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    int-to-float v0, v0

    int-to-float v7, p2

    const/high16 v8, 0x3f00

    mul-float/2addr v7, v8

    sub-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cE;->a(Ljava/util/ArrayList;Landroid/graphics/Bitmap;F)V

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/p;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cE;->b:LG/w;

    invoke-virtual {v2}, LG/w;->b()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f00

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->m:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cE;->c()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cE;->b(Lcom/google/android/maps/driveabout/vector/u;I)V

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->m:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->h:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cE;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b()I
    .locals 3

    const/16 v0, 0x260

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cj;->g()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cq;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/az;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cE;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cE;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cE;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
