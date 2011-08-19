.class public Laf/a;
.super Ljava/lang/Object;

# interfaces
.implements LU/f;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Laf/f;

.field private final f:Laf/b;

.field private final g:Ljava/util/ArrayList;

.field private final h:[Landroid/graphics/Bitmap;

.field private final i:LU/e;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V
    .locals 7

    const/16 v2, 0x64

    const/4 v1, 0x0

    const/high16 v3, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laf/a;->d:Landroid/graphics/Paint;

    iput v1, p0, Laf/a;->k:I

    iput v1, p0, Laf/a;->l:I

    const/16 v0, 0x1e

    iput v0, p0, Laf/a;->m:I

    iput-boolean v1, p0, Laf/a;->n:Z

    new-instance v0, LU/e;

    const/16 v1, 0x177

    invoke-direct {v0, p1, v1}, LU/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Laf/a;->i:LU/e;

    iget-object v0, p0, Laf/a;->i:LU/e;

    invoke-virtual {v0, p0}, LU/e;->a(LU/f;)V

    iput p2, p0, Laf/a;->a:I

    iput p3, p0, Laf/a;->b:I

    iput-object p4, p0, Laf/a;->h:[Landroid/graphics/Bitmap;

    int-to-float v0, p2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Laf/a;->c:I

    iget-object v0, p0, Laf/a;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Laf/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Laf/a;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Laf/b;

    int-to-float v1, p2

    div-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laf/b;-><init>(FF)V

    iput-object v0, p0, Laf/a;->f:Laf/b;

    new-instance v0, Laf/f;

    iget v1, p0, Laf/a;->c:I

    add-int v2, p2, v1

    int-to-double v3, p3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/high16 v4, 0x42f0

    iget-object v1, p0, Laf/a;->f:Laf/b;

    invoke-virtual {v1}, Laf/b;->a()LU/c;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Laf/f;-><init>(Laf/a;IIFLU/c;)V

    iput-object v0, p0, Laf/a;->e:Laf/f;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Laf/a;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf/a;->e:Laf/f;

    iget-object v1, p0, Laf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Laf/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    const/16 v1, 0xff

    iget-object v0, p0, Laf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/c;

    iget-object v2, p0, Laf/a;->e:Laf/f;

    invoke-virtual {v2}, Laf/f;->a()[[Laf/d;

    move-result-object v2

    iget-object v3, p0, Laf/a;->e:Laf/f;

    invoke-virtual {v3}, Laf/f;->b()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Laf/c;->a([[Laf/d;F)V

    iget-object v2, p0, Laf/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Laf/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/a;->n:Z

    iput v0, p0, Laf/a;->l:I

    iput v0, p0, Laf/a;->k:I

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/c;

    invoke-virtual {v0}, Laf/c;->e()V

    iget v0, p0, Laf/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf/a;->k:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laf/c;

    invoke-virtual {p0, p1}, Laf/c;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Laf/e;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/a;->n:Z

    iput v7, p0, Laf/a;->k:I

    iput v7, p0, Laf/a;->l:I

    invoke-virtual {p1}, Laf/e;->a()I

    move-result v0

    iget-object v1, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, p0, Laf/a;->h:[Landroid/graphics/Bitmap;

    array-length v4, v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Laf/a;->h:[Landroid/graphics/Bitmap;

    aget-object v2, v3, v2

    new-instance v3, Laf/c;

    iget-object v4, p0, Laf/a;->f:Laf/b;

    iget v5, p0, Laf/a;->a:I

    iget v6, p0, Laf/a;->b:I

    invoke-direct {v3, v4, v5, v6, v2}, Laf/c;-><init>(Laf/b;IILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_2

    move v1, v7

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Laf/a;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laf/a;->k:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/c;

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Laf/a;->k:I

    if-le v2, v4, :cond_4

    invoke-virtual {v0}, Laf/c;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Laf/c;->d()V

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Laf/c;->e()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Laf/a;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laf/a;->l:I

    iget v1, p0, Laf/a;->m:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/c;

    iget v2, p0, Laf/a;->k:I

    if-lez v2, :cond_0

    invoke-virtual {v0}, Laf/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Laf/a;->k:I

    sub-int/2addr v0, v3

    iput v0, p0, Laf/a;->k:I

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Laf/a;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public b(F)V
    .locals 3

    const/high16 v2, 0x4000

    iput p1, p0, Laf/a;->j:F

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Laf/a;->c(F)F

    move-result v0

    iget v1, p0, Laf/a;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v0, v1, v0

    iget v1, p0, Laf/a;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Laf/a;->f:Laf/b;

    iget-object v2, p0, Laf/a;->f:Laf/b;

    invoke-virtual {v2}, Laf/b;->c()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Laf/b;->a(FF)V

    iget-object v0, p0, Laf/a;->e:Laf/f;

    iget-object v1, p0, Laf/a;->f:Laf/b;

    invoke-virtual {v1}, Laf/b;->a()LU/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Laf/f;->a(LU/c;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f00

    iput v0, p0, Laf/a;->j:F

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Laf/a;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Laf/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c(F)F
    .locals 3

    const/high16 v0, -0x4080

    iget v1, p0, Laf/a;->j:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Laf/a;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
