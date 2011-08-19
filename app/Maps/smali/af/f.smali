.class public Laf/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:[[Laf/d;

.field private final e:LU/c;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Laf/a;IIFLU/c;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v1, 0x3f80

    const/high16 v7, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laf/f;->f:F

    const v0, 0x3727c5ac

    iput v0, p0, Laf/f;->g:F

    iput v1, p0, Laf/f;->j:F

    iput v1, p0, Laf/f;->k:F

    iput p2, p0, Laf/f;->a:I

    iput p3, p0, Laf/f;->b:I

    iput p4, p0, Laf/f;->c:F

    iput-object p5, p0, Laf/f;->e:LU/c;

    int-to-float v0, p3

    div-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v1, p2

    div-float/2addr v1, p4

    float-to-int v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Laf/d;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Laf/d;

    iput-object v0, p0, Laf/f;->d:[[Laf/d;

    move v0, v8

    :goto_0
    int-to-float v1, p3

    div-float/2addr v1, p4

    float-to-int v1, v1

    if-ge v0, v1, :cond_1

    move v1, v8

    :goto_1
    int-to-float v2, p2

    div-float/2addr v2, p4

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laf/f;->d:[[Laf/d;

    aget-object v2, v2, v0

    new-instance v3, Laf/d;

    int-to-float v4, v1

    div-float v5, p4, v7

    add-float/2addr v4, v5

    int-to-float v5, v0

    div-float v6, p4, v7

    add-float/2addr v5, v6

    invoke-direct {v3, p0, v4, v5}, Laf/d;-><init>(Laf/f;FF)V

    aput-object v3, v2, v1

    iget-object v2, p0, Laf/f;->d:[[Laf/d;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    int-to-float v3, v1

    mul-float/2addr v3, p4

    div-float v4, p4, v7

    add-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v4, p4

    div-float v5, p4, v7

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Laf/d;->a(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(LU/c;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1, p1}, LU/c;->a(LU/c;)V

    move v0, v4

    :goto_0
    iget v1, p0, Laf/f;->b:I

    int-to-float v1, v1

    iget v2, p0, Laf/f;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_1

    move v1, v4

    :goto_1
    iget v2, p0, Laf/f;->a:I

    int-to-float v2, v2

    iget v3, p0, Laf/f;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laf/f;->d:[[Laf/d;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Laf/d;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Laf/f;->h:F

    iget v1, p0, Laf/f;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Laf/f;->h:F

    iget v0, p0, Laf/f;->i:F

    iget v1, p0, Laf/f;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Laf/f;->i:F

    move v0, v8

    :goto_0
    iget v1, p0, Laf/f;->b:I

    int-to-float v1, v1

    iget v2, p0, Laf/f;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_1

    move v1, v8

    :goto_1
    iget v2, p0, Laf/f;->a:I

    int-to-float v2, v2

    iget v3, p0, Laf/f;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    int-to-float v2, v1

    iget v3, p0, Laf/f;->c:F

    mul-float/2addr v2, v3

    int-to-float v2, v0

    iget v3, p0, Laf/f;->c:F

    mul-float/2addr v2, v3

    const/high16 v2, 0x42b4

    const/high16 v3, 0x4307

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    iget-object v4, p0, Laf/f;->d:[[Laf/d;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Laf/d;->c()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff921fb54442d18L

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Laf/f;->l:F

    iget-object v2, p0, Laf/f;->d:[[Laf/d;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget v3, p0, Laf/f;->l:F

    invoke-virtual {v2, v3}, Laf/d;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laf/f;->f:F

    iget v1, p0, Laf/f;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Laf/f;->f:F

    return-void
.end method

.method public a()[[Laf/d;
    .locals 1

    iget-object v0, p0, Laf/f;->d:[[Laf/d;

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Laf/f;->c:F

    return v0
.end method

.method public c()LU/c;
    .locals 1

    iget-object v0, p0, Laf/f;->e:LU/c;

    return-object v0
.end method
