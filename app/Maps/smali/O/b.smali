.class public LO/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;

.field private final d:LU/c;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(II)V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LO/b;->f:Landroid/graphics/Paint;

    iput v2, p0, LO/b;->g:I

    iput v2, p0, LO/b;->h:I

    const/16 v0, 0x14

    iput v0, p0, LO/b;->i:I

    iput p1, p0, LO/b;->a:I

    iput p2, p0, LO/b;->b:I

    iget-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LO/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, LO/b;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, LU/c;

    int-to-float v1, p1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    int-to-float v2, p2

    const/high16 v3, 0x3f40

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, LU/c;-><init>(FF)V

    iput-object v0, p0, LO/b;->d:LU/c;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .locals 4

    const/high16 v3, 0x4000

    const v0, 0x3dcccccd

    iget v1, p0, LO/b;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, LO/b;->a:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    iget v2, p0, LO/b;->j:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, LO/b;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, LO/b;->k:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .locals 4

    const/high16 v2, 0x3f00

    const/16 v1, 0xff

    iget-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, LO/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_0

    iput v2, p0, LO/b;->j:F

    :cond_0
    iget v0, p0, LO/b;->j:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, LO/b;->d:LU/c;

    iget v2, p0, LO/b;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, LO/b;->d:LU/c;

    iget v2, v2, LU/c;->b:F

    invoke-virtual {v1, v0, v2}, LU/c;->a(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LO/b;->g:I

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->b()V

    iget v0, p0, LO/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO/b;->g:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, LO/b;->j:F

    return-void
.end method

.method public a(LO/a;)V
    .locals 8

    const/4 v7, 0x0

    iput v7, p0, LO/b;->g:I

    iput v7, p0, LO/b;->h:I

    invoke-virtual {p1}, LO/a;->a()I

    move-result v0

    iget-object v1, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, LO/b;->c:Ljava/util/ArrayList;

    new-instance v3, LO/c;

    iget v4, p0, LO/b;->a:I

    iget v5, p0, LO/b;->b:I

    iget-object v6, p0, LO/b;->d:LU/c;

    invoke-direct {v3, v4, v5, v6}, LO/c;-><init>(IILU/c;)V

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

    iget-object v2, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, LO/b;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LO/b;->g:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/c;

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, LO/b;->g:I

    if-le v2, v4, :cond_4

    invoke-virtual {v0}, LO/c;->e()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, LO/c;->a()V

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, LO/c;->b()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, LO/b;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LO/b;->h:I

    iget v1, p0, LO/b;->i:I

    if-le v0, v1, :cond_1

    iget v0, p0, LO/b;->g:I

    if-lez v0, :cond_1

    move v1, v3

    :goto_0
    iget v0, p0, LO/b;->g:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LO/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, LO/b;->g:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, LO/b;->g:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, LO/b;->b()V

    invoke-direct {p0, p1, p2}, LO/b;->b(Landroid/graphics/Canvas;Z)V

    iget v0, p0, LO/b;->k:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LO/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/c;

    iget-object v2, p0, LO/b;->d:LU/c;

    invoke-virtual {v0, v2}, LO/c;->a(LU/c;)V

    invoke-virtual {v0, p1}, LO/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    return-void
.end method
