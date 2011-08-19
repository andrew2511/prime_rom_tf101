.class public Lay/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private final b:LU/c;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Lay/f;

.field private final j:LU/a;

.field private final k:LU/a;

.field private l:LU/c;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Lay/a;

.field private r:Lay/d;


# direct methods
.method public constructor <init>(Lay/f;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lay/a;LU/c;Landroid/graphics/Bitmap;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xff

    iput v2, p0, Lay/b;->o:I

    iput-object p1, p0, Lay/b;->i:Lay/f;

    iput p2, p0, Lay/b;->d:I

    iput p3, p0, Lay/b;->e:I

    iput-object p4, p0, Lay/b;->c:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p5, p0, Lay/b;->f:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lay/b;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lay/b;->q:Lay/a;

    invoke-direct {p0}, Lay/b;->c()V

    new-instance v2, LU/c;

    const-wide/high16 v3, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    add-double/2addr v3, v5

    move-object/from16 v0, p8

    iget v0, v0, LU/c;->a:F

    move v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    add-double/2addr v5, v7

    move-object/from16 v0, p8

    iget v0, v0, LU/c;->b:F

    move v7, v0

    float-to-double v7, v7

    mul-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, LU/c;-><init>(DD)V

    iput-object v2, p0, Lay/b;->l:LU/c;

    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lay/b;->h:Landroid/graphics/Bitmap;

    move/from16 v0, p10

    move-object v1, p0

    iput-boolean v0, v1, Lay/b;->n:Z

    new-instance v2, LU/a;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, LU/a;-><init>(F)V

    iput-object v2, p0, Lay/b;->j:LU/a;

    new-instance v2, LU/a;

    invoke-direct {v2}, LU/a;-><init>()V

    iput-object v2, p0, Lay/b;->k:LU/a;

    new-instance v2, LU/c;

    iget-object v3, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v6, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p2

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget-object v7, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p3

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, LU/c;-><init>(FF)V

    iput-object v2, p0, Lay/b;->b:LU/c;

    iget-object v2, p0, Lay/b;->j:LU/a;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, LU/a;->a(F)V

    iget-object v2, p0, Lay/b;->k:LU/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LU/a;->a(F)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lay/b;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    sget-object v0, Lay/a;->a:Lay/a;

    iget-object v1, p0, Lay/b;->q:Lay/a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lay/b;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lay/a;
    .locals 1

    iget-object v0, p0, Lay/b;->q:Lay/a;

    return-object v0
.end method

.method public a(LU/c;Lay/a;Lay/d;Z)V
    .locals 7

    const-wide/high16 v5, 0x3fe0

    iget-object v0, p0, Lay/b;->l:LU/c;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p1, LU/c;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p1, LU/c;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, LU/c;->a(DD)V

    iput-boolean p4, p0, Lay/b;->n:Z

    iput-object p2, p0, Lay/b;->q:Lay/a;

    iput-object p3, p0, Lay/b;->r:Lay/d;

    invoke-direct {p0}, Lay/b;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lay/b;->a:Z

    iget-object v0, p0, Lay/b;->j:LU/a;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Lay/b;->j:LU/a;

    const-wide/high16 v1, 0x4020

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    iget-object v0, p0, Lay/b;->k:LU/a;

    const/high16 v1, 0x437f

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Lay/b;->k:LU/a;

    iget-object v1, p0, Lay/b;->j:LU/a;

    invoke-virtual {v1}, LU/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v3, 0x4120

    const v6, 0x3f733333

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    iget-object v0, p0, Lay/b;->j:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Lay/b;->k:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v1, v0, LU/c;->a:F

    iget-object v2, p0, Lay/b;->l:LU/c;

    iget v2, v2, LU/c;->a:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->a:F

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v1, v0, LU/c;->b:F

    iget-object v2, p0, Lay/b;->l:LU/c;

    iget v2, v2, LU/c;->b:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v0, v0, LU/c;->a:F

    iget v1, p0, Lay/b;->d:I

    iget-object v2, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget-object v1, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, LU/c;->a:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v0, v0, LU/c;->b:F

    iget v1, p0, Lay/b;->e:I

    int-to-float v1, v1

    iget-object v2, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget-object v1, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v0, LU/c;->b:F

    :cond_1
    :goto_1
    iget-object v0, p0, Lay/b;->k:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, Lay/b;->b:LU/c;

    iget v1, v1, LU/c;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lay/b;->j:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget-object v1, p0, Lay/b;->j:LU/a;

    invoke-virtual {v1}, LU/a;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iget-boolean v1, p0, Lay/b;->n:Z

    if-eqz v1, :cond_2

    float-to-double v0, v0

    const-wide v2, 0x3feff7ced916872bL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lay/b;->p:Z

    if-nez v0, :cond_2

    const/16 v0, 0xc8

    iput v0, p0, Lay/b;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lay/b;->p:Z

    :cond_2
    iget v0, p0, Lay/b;->o:I

    int-to-float v0, v0

    iget-object v1, p0, Lay/b;->r:Lay/d;

    invoke-virtual {v1}, Lay/d;->a()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lay/b;->o:I

    iget v0, p0, Lay/b;->o:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iput v7, p0, Lay/b;->o:I

    iput-boolean v7, p0, Lay/b;->p:Z

    :cond_3
    iget-boolean v0, p0, Lay/b;->p:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v0, 0x3f666666

    iget-object v1, p0, Lay/b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lay/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lay/b;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lay/b;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lay/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v0, p0, Lay/b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lay/b;->k:LU/a;

    invoke-virtual {v1}, LU/a;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lay/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v1, p0, Lay/b;->d:I

    iget-object v2, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, LU/c;->a:F

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v0, v0, LU/c;->b:F

    iget-object v1, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lay/b;->b:LU/c;

    iget v1, p0, Lay/b;->e:I

    int-to-float v1, v1

    iget-object v2, p0, Lay/b;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    goto/16 :goto_1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lay/b;->a:Z

    iget-object v0, p0, Lay/b;->j:LU/a;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Lay/b;->k:LU/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    return-void
.end method
