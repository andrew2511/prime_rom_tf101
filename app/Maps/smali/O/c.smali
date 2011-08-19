.class public LO/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:LU/c;

.field private final b:LU/c;

.field private final c:LU/c;

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:I

.field private final g:LO/d;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:LU/c;

.field private p:F

.field private q:I

.field private r:[LU/c;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(IILU/c;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/c;

    invoke-direct {v0}, LU/c;-><init>()V

    iput-object v0, p0, LO/c;->a:LU/c;

    new-instance v0, LU/c;

    invoke-direct {v0}, LU/c;-><init>()V

    iput-object v0, p0, LO/c;->b:LU/c;

    new-instance v0, LU/c;

    invoke-direct {v0}, LU/c;-><init>()V

    iput-object v0, p0, LO/c;->c:LU/c;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LO/c;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, LO/c;->l:F

    const/4 v0, 0x4

    iput v0, p0, LO/c;->q:I

    iput-boolean v2, p0, LO/c;->u:Z

    iput-boolean v2, p0, LO/c;->v:Z

    iput-boolean v2, p0, LO/c;->w:Z

    iput p1, p0, LO/c;->e:I

    iput p2, p0, LO/c;->f:I

    iput-object p3, p0, LO/c;->o:LU/c;

    iget-object v0, p0, LO/c;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LO/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, LO/d;

    invoke-direct {v0}, LO/d;-><init>()V

    iput-object v0, p0, LO/c;->g:LO/d;

    iput v2, p0, LO/c;->s:I

    invoke-direct {p0}, LO/c;->f()I

    move-result v0

    iput v0, p0, LO/c;->t:I

    invoke-direct {p0}, LO/c;->g()V

    return-void
.end method

.method private b(LU/c;)V
    .locals 6

    const/high16 v5, 0x437f

    iget-object v0, p0, LO/c;->o:LU/c;

    invoke-virtual {v0, p1}, LU/c;->a(LU/c;)V

    iget-object v0, p0, LO/c;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->b:F

    iget-object v2, p0, LO/c;->o:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, LO/c;->o:LU/c;

    iget v3, v3, LU/c;->b:F

    invoke-static {v0, v1, v2, v3}, LU/d;->a(FFFF)F

    move-result v0

    iput v0, p0, LO/c;->h:F

    iget-object v0, p0, LO/c;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->b:F

    iget-object v2, p0, LO/c;->o:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, LO/c;->o:LU/c;

    iget v3, v3, LU/c;->b:F

    invoke-static {v0, v1, v2, v3}, LU/d;->b(FFFF)F

    move-result v0

    iput v0, p0, LO/c;->i:F

    iget v0, p0, LO/c;->l:F

    iget v1, p0, LO/c;->m:F

    add-float/2addr v0, v1

    iput v0, p0, LO/c;->l:F

    iget v0, p0, LO/c;->l:F

    const/high16 v1, 0x4300

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, LO/c;->l:F

    iput v0, p0, LO/c;->n:F

    :cond_0
    iget v0, p0, LO/c;->l:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    iget-object v0, p0, LO/c;->g:LO/d;

    iget-object v1, p0, LO/c;->c:LU/c;

    iget v1, v1, LU/c;->a:F

    iget-object v2, p0, LO/c;->c:LU/c;

    iget v2, v2, LU/c;->b:F

    invoke-virtual {v0, v1, v2}, LO/d;->a(FF)V

    const/high16 v0, 0x3f80

    iput v0, p0, LO/c;->l:F

    invoke-direct {p0}, LO/c;->g()V

    :cond_1
    const/high16 v0, 0x437d

    iget v1, p0, LO/c;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, LO/c;->n:F

    const/high16 v0, 0x4000

    iget v1, p0, LO/c;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LO/c;->n:F

    iget v0, p0, LO/c;->l:F

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, LO/c;->j:F

    iget-object v0, p0, LO/c;->c:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->a:F

    iget v2, p0, LO/c;->j:F

    iget v3, p0, LO/c;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LO/c;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, LU/c;->a:F

    iget-object v0, p0, LO/c;->c:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->b:F

    iget v2, p0, LO/c;->j:F

    iget v3, p0, LO/c;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LO/c;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    iget v0, p0, LO/c;->l:F

    div-float/2addr v0, v5

    iput v0, p0, LO/c;->p:F

    iget-object v0, p0, LO/c;->b:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->a:F

    iget v2, p0, LO/c;->j:F

    iget v3, p0, LO/c;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, LO/c;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LO/c;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, LU/c;->a:F

    iget-object v0, p0, LO/c;->b:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->b:F

    iget v2, p0, LO/c;->j:F

    iget v3, p0, LO/c;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, LO/c;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LO/c;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    iget v0, p0, LO/c;->k:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, LO/c;->k:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, LO/c;->w:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0xff

    const/16 v2, 0xa9

    const/16 v3, 0xd8

    const/16 v4, 0xf0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget v1, p0, LO/c;->q:I

    sub-int/2addr v1, v6

    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, LO/c;->r:[LU/c;

    aget-object v2, v2, v1

    iget-object v3, p0, LO/c;->r:[LU/c;

    sub-int v4, v1, v6

    aget-object v3, v3, v4

    iget v3, v3, LU/c;->a:F

    iput v3, v2, LU/c;->a:F

    iget-object v2, p0, LO/c;->r:[LU/c;

    aget-object v2, v2, v1

    iget-object v3, p0, LO/c;->r:[LU/c;

    sub-int v4, v1, v6

    aget-object v3, v3, v4

    iget v3, v3, LU/c;->b:F

    iput v3, v2, LU/c;->b:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LO/c;->r:[LU/c;

    aget-object v1, v1, v5

    iget-object v2, p0, LO/c;->b:LU/c;

    iget v2, v2, LU/c;->a:F

    iput v2, v1, LU/c;->a:F

    iget-object v1, p0, LO/c;->r:[LU/c;

    aget-object v1, v1, v5

    iget-object v2, p0, LO/c;->b:LU/c;

    iget v2, v2, LU/c;->b:F

    iput v2, v1, LU/c;->b:F

    iget v1, p0, LO/c;->l:F

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, LO/c;->n:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, LO/c;->k:F

    move v2, v1

    move v1, v5

    :goto_1
    iget v3, p0, LO/c;->q:I

    if-ge v1, v3, :cond_1

    const/4 v3, 0x0

    iget v4, p0, LO/c;->n:F

    mul-int/lit8 v5, v1, 0x1e

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, LO/c;->r:[LU/c;

    aget-object v3, v3, v1

    iget v3, v3, LU/c;->a:F

    iget-object v4, p0, LO/c;->r:[LU/c;

    aget-object v4, v4, v1

    iget v4, v4, LU/c;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v5, v2

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, LO/c;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x6b

    const/16 v3, 0xcf

    const/16 v4, 0xed

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, LO/c;->g:LO/d;

    iget-object v1, p0, LO/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, LO/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private f()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4079

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, LO/c;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LO/c;->h()V

    iget-object v0, p0, LO/c;->o:LU/c;

    invoke-direct {p0, v0}, LO/c;->b(LU/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LO/c;->w:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LO/c;->w:Z

    goto :goto_0
.end method

.method private h()V
    .locals 8

    const/high16 v7, 0x4000

    iget-boolean v0, p0, LO/c;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LO/c;->a:LU/c;

    iget v1, p0, LO/c;->e:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget v5, p0, LO/c;->e:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, LU/c;->a:F

    iget-object v0, p0, LO/c;->a:LU/c;

    iget v1, p0, LO/c;->f:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, LO/c;->f:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    const v0, 0x3dcccccd

    iput v0, p0, LO/c;->p:F

    iget-object v0, p0, LO/c;->c:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->a:F

    iget-object v2, p0, LO/c;->a:LU/c;

    iget v2, v2, LU/c;->b:F

    invoke-virtual {v0, v1, v2}, LU/c;->a(FF)V

    iget-object v0, p0, LO/c;->b:LU/c;

    iget-object v1, p0, LO/c;->a:LU/c;

    iget v1, v1, LU/c;->a:F

    iget-object v2, p0, LO/c;->a:LU/c;

    iget v2, v2, LU/c;->b:F

    invoke-virtual {v0, v1, v2}, LU/c;->a(FF)V

    iget v0, p0, LO/c;->q:I

    new-array v0, v0, [LU/c;

    iput-object v0, p0, LO/c;->r:[LU/c;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LO/c;->q:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LO/c;->r:[LU/c;

    new-instance v2, LU/c;

    iget-object v3, p0, LO/c;->a:LU/c;

    iget v3, v3, LU/c;->a:F

    iget-object v4, p0, LO/c;->a:LU/c;

    iget v4, v4, LU/c;->b:F

    invoke-direct {v2, v3, v4}, LU/c;-><init>(FF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, LO/c;->i()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LO/c;->w:Z

    goto :goto_1
.end method

.method private i()V
    .locals 5

    const/high16 v0, 0x4040

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, LO/c;->k:F

    const/high16 v0, 0x3f80

    iget v1, p0, LO/c;->k:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LO/c;->m:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LO/c;->v:Z

    const/4 v0, 0x0

    iput v0, p0, LO/c;->s:I

    invoke-direct {p0}, LO/c;->f()I

    move-result v0

    iput v0, p0, LO/c;->t:I

    invoke-direct {p0}, LO/c;->g()V

    return-void
.end method

.method public a(LU/c;)V
    .locals 2

    iget-boolean v0, p0, LO/c;->u:Z

    if-nez v0, :cond_1

    iget v0, p0, LO/c;->s:I

    iget v1, p0, LO/c;->t:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LO/c;->u:Z

    :cond_0
    iget v0, p0, LO/c;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO/c;->s:I

    :cond_1
    iget-boolean v0, p0, LO/c;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LO/c;->w:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, LO/c;->b(LU/c;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, LO/c;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, LO/c;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, LO/c;->c(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LO/c;->g:LO/d;

    iget-boolean v0, v0, LO/d;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, LO/c;->c(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LO/c;->v:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LO/c;->g:LO/d;

    iget-boolean v0, v0, LO/d;->a:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LO/c;->w:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LO/c;->v:Z

    return v0
.end method
