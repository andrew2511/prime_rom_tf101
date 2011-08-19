.class Lcom/google/googlenav/ui/android/J;
.super Landroid/text/style/ReplacementSpan;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x5

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    sput v0, Lcom/google/googlenav/ui/android/J;->a:I

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput v0, Lcom/google/googlenav/ui/android/J;->b:I

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    sput v0, Lcom/google/googlenav/ui/android/J;->c:I

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_3
    sput v0, Lcom/google/googlenav/ui/android/J;->d:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/ui/android/J;->f:I

    if-eqz p3, :cond_0

    sget v0, Lcom/google/googlenav/ui/android/J;->c:I

    :goto_0
    iput v0, p0, Lcom/google/googlenav/ui/android/J;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12

    iget v5, p0, Lcom/google/googlenav/ui/android/J;->g:I

    int-to-float v5, v5

    add-float v5, v5, p5

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v8, p0, Lcom/google/googlenav/ui/android/J;->f:I

    move-object/from16 v0, p9

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->i()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p9

    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->i()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sget v9, Lcom/google/googlenav/ui/android/J;->d:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v9, p8, p6

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->i()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->j()Landroid/graphics/RectF;

    move-result-object v10

    add-int v11, p6, v9

    int-to-float v11, v11

    int-to-float v8, v8

    add-float/2addr v8, v5

    sub-int v9, p8, v9

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {v10, v5, v11, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/google/googlenav/android/Z;->e()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->j()Landroid/graphics/RectF;

    move-result-object v8

    move-object v0, p1

    move-object v1, v8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    move-object/from16 v0, p9

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p9

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v6, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    sget v7, Lcom/google/googlenav/ui/android/J;->d:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    sget v7, Lcom/google/googlenav/ui/android/J;->b:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    move-object v0, p1

    move-object v1, v6

    move v2, v5

    move v3, v7

    move-object/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/android/S;->j()Landroid/graphics/RectF;

    move-result-object v8

    sget v9, Lcom/google/googlenav/ui/android/J;->a:I

    int-to-float v9, v9

    sget v10, Lcom/google/googlenav/ui/android/J;->a:I

    int-to-float v10, v10

    move-object v0, p1

    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/J;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->i()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->i()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/android/J;->g:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/googlenav/ui/android/J;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
