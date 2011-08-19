.class public Lcom/google/android/maps/driveabout/vector/bk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/vector/aw;

.field public static final b:Lcom/google/android/maps/driveabout/vector/aw;

.field public static final c:Lcom/google/android/maps/driveabout/vector/aw;


# instance fields
.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Path;

.field private g:Lcom/google/android/maps/driveabout/vector/bi;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aw;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Lcom/google/android/maps/driveabout/vector/bT;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aw;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Lcom/google/android/maps/driveabout/vector/bT;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bk;->b:Lcom/google/android/maps/driveabout/vector/aw;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aw;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Lcom/google/android/maps/driveabout/vector/bT;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bk;->c:Lcom/google/android/maps/driveabout/vector/aw;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->f:Landroid/graphics/Path;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bi;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIIZLcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/aw;)V

    const/high16 v5, 0x3fc0

    mul-float v5, v5, p4

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p8, :cond_1

    const v6, 0x40066666

    move v12, v6

    :goto_0
    const/4 v6, 0x4

    new-array v6, v6, [F

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v5

    move/from16 v3, p8

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;FZ[F)[Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x0

    aget v5, v6, v5

    const v7, 0x3f820c4a

    mul-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    add-int/lit8 v14, v5, 0x1

    const/4 v5, 0x1

    aget v5, v6, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v15, v5

    const/16 v5, 0x8

    invoke-static {v14, v5}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v15, v6}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v6

    const/high16 v7, -0x100

    move/from16 v0, p5

    move v1, v7

    if-eq v0, v1, :cond_0

    const/4 v7, -0x1

    move/from16 v0, p5

    move v1, v7

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/x;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    move-wide v0, v7

    double-to-int v0, v0

    move/from16 v17, v0

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v5, v5

    add-float/2addr v5, v12

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    move-object v7, v0

    const/high16 v8, 0x4000

    mul-float/2addr v8, v12

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p6, :cond_3

    const/4 v7, 0x0

    cmpl-float v7, v12, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    move v10, v7

    :goto_2
    if-eqz p5, :cond_4

    const/4 v7, 0x1

    move v11, v7

    :goto_3
    const/4 v7, 0x0

    move/from16 v18, v7

    move/from16 v19, v5

    :goto_4
    array-length v5, v13

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_8

    array-length v5, v13

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v5, v7

    :goto_5
    aget-object v7, v13, v18

    float-to-int v5, v5

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/maps/driveabout/vector/bk;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V

    add-int v5, v19, v17

    add-int/lit8 v7, v18, 0x1

    move/from16 v18, v7

    move/from16 v19, v5

    goto :goto_4

    :cond_1
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_0

    :cond_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :cond_3
    const/4 v7, 0x0

    move v10, v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    move v11, v7

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    move-object/from16 v0, p9

    move-object v1, v5

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    move-object v5, v0

    aget-object v7, v13, v18

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v7, v14

    sub-float v5, v7, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    goto :goto_5

    :cond_6
    sget-object v5, Lcom/google/android/maps/driveabout/vector/F;->c:Lcom/google/android/maps/driveabout/vector/F;

    move-object/from16 v0, p9

    move-object v1, v5

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    move-object v5, v0

    aget-object v7, v13, v18

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v7, v14

    sub-float v5, v7, v5

    goto :goto_5

    :cond_7
    move v5, v12

    goto :goto_5

    :cond_8
    new-instance v5, Lcom/google/android/maps/driveabout/vector/p;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->h:Z

    move v6, v0

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/vector/p;->d(Z)V

    :cond_9
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v14

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bk;->h:Z

    move v6, v0

    if-nez v6, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    return-object v5
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bk;->f:Landroid/graphics/Path;

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aw;)V
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bk;->b:Lcom/google/android/maps/driveabout/vector/aw;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bk;->c:Lcom/google/android/maps/driveabout/vector/aw;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    if-ne v1, v4, :cond_1

    aput-object p0, v0, v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    move v2, v3

    :goto_2
    array-length v3, v0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;FZ[F)[Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    const v7, 0x40066666

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v8

    move v2, v6

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    array-length v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v1, v5, v1

    if-eqz p3, :cond_1

    cmpl-float v5, v2, v6

    if-lez v5, :cond_1

    const v5, 0x40866666

    add-float/2addr v2, v5

    add-float/2addr v4, v7

    add-float/2addr v1, v7

    move v9, v4

    move v4, v2

    move v2, v9

    :goto_1
    add-float v5, v2, v1

    add-float/2addr v3, v5

    aput v4, p4, v8

    const/4 v4, 0x1

    aput v3, p4, v4

    const/4 v3, 0x2

    aput v2, p4, v3

    const/4 v2, 0x3

    aput v1, p4, v2

    return-object v0

    :cond_1
    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;F)F
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/aw;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;
    .locals 9

    sget-object v8, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 11

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aO;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/aO;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/p;

    if-nez v1, :cond_1

    if-nez p6, :cond_0

    if-eqz p7, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v9, v1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIIZLcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    return-object v0

    :cond_2
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;
    .locals 8

    sget-object v7, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aO;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/aO;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->b()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->a()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bi;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/bi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/aw;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;FZ[F)[Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bi;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;->a(I)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F
    .locals 6

    const/4 v5, 0x0

    const v4, 0x40066666

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/aw;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    if-eqz p4, :cond_2

    move v1, v4

    :goto_1
    move v2, v1

    move v1, v5

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget v3, v0, v1

    add-float/2addr v3, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_0

    aget v1, v0, v5

    sub-float/2addr v1, v4

    aput v1, v0, v5

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v2, v0, v1

    add-float/2addr v2, v4

    aput v2, v0, v1

    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->b()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureCache finalizer called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bk;->g:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bi;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bk;->a()V

    :cond_0
    return-void
.end method
