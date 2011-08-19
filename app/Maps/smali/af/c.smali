.class public Laf/c;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:LU/a;

.field private final s:Laf/b;

.field private t:F

.field private u:Z

.field private v:Z

.field private final w:LU/a;

.field private x:F

.field private y:Z

.field private final z:LU/a;


# direct methods
.method public constructor <init>(Laf/b;IILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x437f

    iput v0, p0, Laf/c;->l:F

    iput v1, p0, Laf/c;->q:I

    iput-boolean v1, p0, Laf/c;->u:Z

    iput-boolean v1, p0, Laf/c;->v:Z

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Laf/c;->w:LU/a;

    iput v4, p0, Laf/c;->x:F

    iput-boolean v1, p0, Laf/c;->y:Z

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Laf/c;->z:LU/a;

    const/16 v0, 0x32

    iput v0, p0, Laf/c;->A:I

    iput-boolean v1, p0, Laf/c;->B:Z

    iput-boolean v1, p0, Laf/c;->C:Z

    iput v1, p0, Laf/c;->D:I

    iput v1, p0, Laf/c;->E:I

    iput-object p1, p0, Laf/c;->s:Laf/b;

    iput p2, p0, Laf/c;->a:I

    iput p3, p0, Laf/c;->b:I

    int-to-float v0, p2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laf/c;->c:I

    iput-object p4, p0, Laf/c;->d:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Laf/c;->p:I

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Laf/c;->r:LU/a;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laf/c;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Laf/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Laf/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0, v6}, LU/a;->a(I)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0, v4}, LU/a;->a(F)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0, v4}, LU/a;->b(F)V

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0, v6}, LU/a;->a(I)V

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0, v4}, LU/a;->a(F)V

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0, v4}, LU/a;->b(F)V

    return-void
.end method

.method private f()V
    .locals 6

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    const/high16 v0, 0x40c0

    invoke-static {v2, v0}, LU/d;->a(FF)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, LU/d;->a(FF)F

    move-result v0

    iput v0, p0, Laf/c;->k:F

    iget v0, p0, Laf/c;->a:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->j:F

    :goto_0
    return-void

    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_1

    iget v0, p0, Laf/c;->b:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, LU/d;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laf/c;->k:F

    iget v0, p0, Laf/c;->a:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->j:F

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_2

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_2

    iget v0, p0, Laf/c;->b:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->k:F

    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, LU/d;->a(FF)F

    move-result v0

    iput v0, p0, Laf/c;->j:F

    goto :goto_0

    :cond_2
    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    const/high16 v2, 0x4080

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Laf/c;->b:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->k:F

    iget v0, p0, Laf/c;->a:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, LU/d;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laf/c;->j:F

    goto :goto_0

    :cond_3
    iget v0, p0, Laf/c;->a:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->j:F

    iget v0, p0, Laf/c;->b:I

    invoke-static {v0}, LU/d;->a(I)F

    move-result v0

    iput v0, p0, Laf/c;->k:F

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4024

    const/16 v1, 0xff

    iget-boolean v0, p0, Laf/c;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-direct {p0}, Laf/c;->f()V

    const-wide v0, 0x3fe999999999999aL

    const-wide v2, 0x3ff3333333333333L

    invoke-static {v0, v1, v2, v3}, LU/d;->a(DD)F

    move-result v0

    iput v0, p0, Laf/c;->t:F

    iput v6, p0, Laf/c;->g:F

    const/high16 v0, 0x3e80

    const/4 v1, 0x1

    invoke-static {v1}, LU/d;->a(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    iput v0, p0, Laf/c;->h:F

    iget v0, p0, Laf/c;->j:F

    iget v1, p0, Laf/c;->k:F

    iget-object v2, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v2}, Laf/b;->b()F

    move-result v2

    iget-object v3, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v3}, Laf/b;->c()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, LU/d;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Laf/c;->f:F

    iput v8, p0, Laf/c;->n:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x406f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xfa

    iput v0, p0, Laf/c;->o:I

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Laf/c;->r:LU/a;

    iget-object v0, p0, Laf/c;->r:LU/a;

    invoke-virtual {v0, v6}, LU/a;->a(F)V

    iget-object v0, p0, Laf/c;->r:LU/a;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Laf/c;->r:LU/a;

    iget v1, p0, Laf/c;->o:I

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    iput v7, p0, Laf/c;->l:F

    const/high16 v0, 0x4120

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Laf/c;->m:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v7

    iput v0, p0, Laf/c;->i:F

    iput-boolean v8, p0, Laf/c;->u:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/c;->u:Z

    goto :goto_0
.end method

.method public a(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Laf/c;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0, v2}, LU/a;->a(F)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    iget v1, p0, Laf/c;->x:F

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    const/high16 v0, 0x41a0

    const/high16 v1, 0x41f0

    invoke-static {v0, v1}, LU/d;->a(FF)F

    move-result v0

    iput v0, p0, Laf/c;->x:F

    iput-boolean v3, p0, Laf/c;->y:Z

    :cond_0
    iget-boolean v0, p0, Laf/c;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laf/c;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0, v2}, LU/a;->a(F)V

    iget-object v0, p0, Laf/c;->z:LU/a;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    const/high16 v0, 0x4100

    div-float v0, p1, v0

    const/high16 v1, 0x42f0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Laf/c;->A:I

    invoke-static {}, LU/d;->a()I

    move-result v0

    iput v0, p0, Laf/c;->E:I

    iget-object v0, p0, Laf/c;->z:LU/a;

    iget v1, p0, Laf/c;->A:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iput-boolean v3, p0, Laf/c;->B:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/c;->C:Z

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/high16 v5, 0x41a0

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Laf/c;->j:F

    iget-object v1, p0, Laf/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Laf/c;->k:F

    iget-object v2, p0, Laf/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Laf/c;->E:I

    iget v1, p0, Laf/c;->D:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Laf/c;->z:LU/a;

    invoke-virtual {v1}, LU/a;->b()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Laf/c;->E:I

    iget v2, p0, Laf/c;->D:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Laf/c;->z:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Laf/c;->r:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Laf/c;->r:LU/a;

    invoke-virtual {v0}, LU/a;->c()F

    move-result v0

    iget-object v1, p0, Laf/c;->r:LU/a;

    invoke-virtual {v1}, LU/a;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v0, p0, Laf/c;->l:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Laf/c;->l:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Laf/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method a([[Laf/d;F)V
    .locals 12

    const-wide/high16 v10, 0x4008

    const/16 v9, 0xff

    const/high16 v8, 0x3fc0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v0, p0, Laf/c;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laf/c;->p:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Laf/c;->u:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget v0, p0, Laf/c;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf/c;->D:I

    iget-boolean v0, p0, Laf/c;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget v1, p0, Laf/c;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput-boolean v6, p0, Laf/c;->y:Z

    iget-object v0, p0, Laf/c;->w:LU/a;

    invoke-virtual {v0, v7}, LU/a;->b(F)V

    iget-object v0, p0, Laf/c;->w:LU/a;

    const/high16 v1, 0x41f0

    const/high16 v2, 0x42f0

    invoke-static {v1, v2}, LU/d;->a(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    :cond_0
    iget-boolean v0, p0, Laf/c;->B:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget v1, p0, Laf/c;->A:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput-boolean v6, p0, Laf/c;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/c;->C:Z

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0, v7}, LU/a;->b(F)V

    iget-object v0, p0, Laf/c;->z:LU/a;

    const/high16 v1, 0x41f0

    const/high16 v2, 0x42f0

    invoke-static {v1, v2}, LU/d;->a(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    :cond_1
    :goto_0
    iget v0, p0, Laf/c;->g:F

    float-to-double v0, v0

    iget v2, p0, Laf/c;->h:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Laf/c;->g:F

    iget v1, p0, Laf/c;->h:F

    iget v2, p0, Laf/c;->g:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laf/c;->g:F

    :cond_2
    iget v0, p0, Laf/c;->n:I

    if-ge v0, v9, :cond_6

    iget v0, p0, Laf/c;->l:F

    float-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laf/c;->l:F

    const/high16 v0, 0x437f

    iget v1, p0, Laf/c;->l:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laf/c;->l:F

    :cond_3
    :goto_1
    iget v0, p0, Laf/c;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    move v0, v6

    :goto_2
    iget v1, p0, Laf/c;->b:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    if-ge v0, v1, :cond_9

    move v1, v6

    :goto_3
    iget v2, p0, Laf/c;->a:I

    iget v3, p0, Laf/c;->c:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    if-ge v1, v2, :cond_8

    iget v2, p0, Laf/c;->j:F

    int-to-float v3, v1

    mul-float/2addr v3, p2

    div-float v4, p2, v8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Laf/c;->j:F

    int-to-float v3, v1

    mul-float/2addr v3, p2

    div-float v4, p2, v8

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p0, Laf/c;->k:F

    int-to-float v3, v0

    mul-float/2addr v3, p2

    div-float v4, p2, v8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Laf/c;->k:F

    int-to-float v3, v0

    mul-float/2addr v3, p2

    div-float v4, p2, v8

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p0, Laf/c;->j:F

    iget v3, p0, Laf/c;->k:F

    int-to-float v4, v1

    mul-float/2addr v4, p2

    int-to-float v5, v0

    mul-float/2addr v5, p2

    invoke-static {v2, v3, v4, v5}, LU/d;->b(FFFF)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_4

    aget-object v2, p1, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Laf/d;->a()F

    move-result v2

    iget v3, p0, Laf/c;->f:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x40069e955b62f741L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    iget v2, p0, Laf/c;->f:F

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Laf/d;->a()F

    move-result v3

    iget v4, p0, Laf/c;->f:F

    sub-float/2addr v3, v4

    iget v4, p0, Laf/c;->i:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laf/c;->f:F

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Laf/c;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laf/c;->z:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    iput-boolean v6, p0, Laf/c;->C:Z

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Laf/c;->n:I

    iget v1, p0, Laf/c;->o:I

    const/16 v2, 0x64

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7

    iget v0, p0, Laf/c;->l:F

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laf/c;->l:F

    iget v0, p0, Laf/c;->m:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laf/c;->m:F

    iget v0, p0, Laf/c;->m:F

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laf/c;->m:F

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Laf/c;->n:I

    iget v1, p0, Laf/c;->o:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Laf/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v9, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Laf/c;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf/c;->q:I

    iget v0, p0, Laf/c;->j:F

    float-to-double v0, v0

    iget v2, p0, Laf/c;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Laf/c;->g:F

    iget-object v5, p0, Laf/c;->w:LU/a;

    invoke-virtual {v5}, LU/a;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laf/c;->j:F

    iget v0, p0, Laf/c;->k:F

    float-to-double v0, v0

    iget v2, p0, Laf/c;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Laf/c;->g:F

    iget-object v5, p0, Laf/c;->w:LU/a;

    invoke-virtual {v5}, LU/a;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laf/c;->k:F

    iget-object v0, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v0}, Laf/b;->b()F

    move-result v0

    iget-object v1, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v1}, Laf/b;->c()F

    move-result v1

    iget v2, p0, Laf/c;->j:F

    iget v3, p0, Laf/c;->k:F

    invoke-static {v0, v1, v2, v3}, LU/d;->b(FFFF)F

    move-result v0

    iget-object v1, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v1}, Laf/b;->d()F

    move-result v1

    iget v2, p0, Laf/c;->t:F

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    iget v1, p0, Laf/c;->g:F

    float-to-double v1, v1

    const-wide v3, 0x3fee666666666666L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Laf/c;->g:F

    iget-object v1, p0, Laf/c;->s:Laf/b;

    invoke-virtual {v1}, Laf/b;->e()F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iget v0, p0, Laf/c;->n:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Laf/c;->n:I

    :cond_a
    iget v0, p0, Laf/c;->n:I

    iget v1, p0, Laf/c;->o:I

    if-le v0, v1, :cond_b

    invoke-virtual {p0}, Laf/c;->a()V

    :cond_b
    iget v0, p0, Laf/c;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf/c;->n:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laf/c;->v:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Laf/c;->u:Z

    return v0
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, Laf/c;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/c;->v:Z

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Laf/c;->p:I

    invoke-virtual {p0}, Laf/c;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Laf/c;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/c;->v:Z

    :cond_0
    return-void
.end method
