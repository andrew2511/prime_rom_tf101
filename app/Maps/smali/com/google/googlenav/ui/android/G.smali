.class Lcom/google/googlenav/ui/android/G;
.super Landroid/text/style/ReplacementSpan;

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Lcom/google/googlenav/D;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/D;ZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/G;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/G;->a:Lcom/google/googlenav/D;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    iput p3, p0, Lcom/google/googlenav/ui/android/G;->g:I

    invoke-virtual {p1}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    const/16 v0, 0x3a1

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/G;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/D;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->d:Z

    invoke-virtual {p1}, Lcom/google/googlenav/D;->g()I

    move-result v0

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->f:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/G;->f:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->a:Lcom/google/googlenav/D;

    invoke-virtual {v1}, Lcom/google/googlenav/D;->g()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/G;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/G;->f:Z

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/android/G;->g:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p6}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->a:Lcom/google/googlenav/D;

    invoke-virtual {v1}, Lcom/google/googlenav/D;->f()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/G;->g:I

    invoke-static {p6, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/android/G;->h:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/G;->i:I

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->h:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/G;->g:I

    iget v3, p0, Lcom/google/googlenav/ui/android/G;->i:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    int-to-float v3, p4

    invoke-virtual {p1, v1, v2, v3, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/android/G;->g:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-int v4, p3, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/google/googlenav/ui/android/G;->g:I

    int-to-float v5, v5

    add-float/2addr v5, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2
.end method

.method private b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .locals 4

    const/high16 v0, -0x100

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/G;->e:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/android/G;->g:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->f:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/android/G;->g:I

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v2, p4

    invoke-virtual {p1, v1, v0, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/googlenav/ui/android/G;->a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/googlenav/ui/android/G;->b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    move-object/from16 v0, p9

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/G;->g:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/G;->e:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/G;->f:Z

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/android/G;->g:I

    :goto_2
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/G;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()I

    move-result v0

    goto :goto_2
.end method
