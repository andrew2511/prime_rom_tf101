.class public Lcom/google/android/maps/driveabout/app/aY;
.super Lcom/google/android/maps/driveabout/app/cS;


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:LG/Q;

.field private g:LG/m;

.field private h:Lcom/google/android/maps/driveabout/vector/p;

.field private i:F

.field private j:[I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private final m:LG/Q;

.field private final n:LG/Q;


# direct methods
.method public constructor <init>(LF/M;LF/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cS;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->m:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->n:LG/Q;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/aY;->a(LF/M;LF/y;)V

    return-void
.end method

.method static a(LF/M;I)LG/m;
    .locals 8

    const-wide v6, 0x409f400000000000L

    invoke-virtual {p0, p1}, LF/M;->b(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-double v4, v0, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, LF/M;->a(D)I

    move-result v2

    invoke-virtual {p0}, LF/M;->m()LG/m;

    move-result-object v3

    invoke-virtual {v3}, LG/m;->b()I

    move-result v3

    add-double/2addr v0, v6

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, LF/M;->a(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, LG/o;

    invoke-virtual {p0}, LF/M;->m()LG/m;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, LG/o;-><init>(LG/m;II)V

    invoke-virtual {v1}, LG/o;->e()LG/m;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/bF;LG/m;LG/Q;I)LG/m;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, LG/Q;

    invoke-direct {v0, p3, p3}, LG/Q;-><init>(II)V

    new-instance v1, LG/S;

    invoke-virtual {p2, v0}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v2

    invoke-virtual {p2, v0}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LG/S;-><init>(LG/Q;LG/Q;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LG/k;

    invoke-direct {v2, v1}, LG/k;-><init>(LG/z;)V

    invoke-virtual {v2, p1, v0}, LG/k;->a(LG/m;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    :cond_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    move v1, v5

    move-object v2, v6

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    move v3, v5

    :goto_3
    invoke-virtual {p0}, LG/m;->b()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, LG/m;->a(I)LG/Q;

    move-result-object v4

    invoke-virtual {v4, p2}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, p0

    :cond_4
    if-eqz v2, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method private a(F)V
    .locals 11

    const/4 v10, -0x1

    const v9, -0xbbbbbc

    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x4198

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41c0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    int-to-float v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    int-to-float v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x432a

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aY;->k:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;[IF)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget v1, p2, v1

    int-to-float v1, v1

    aget v2, p2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v5

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    int-to-float v2, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    array-length v0, p2

    sub-int/2addr v0, v5

    aget v0, p2, v0

    int-to-float v0, v0

    array-length v1, p2

    sub-int/2addr v1, v4

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 6

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aY;->a(F)V

    :cond_0
    const/4 v0, 0x0

    const/high16 v2, 0x44fa

    const/high16 v3, 0x4140

    mul-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/16 v0, 0x7d0

    const/high16 v2, 0x4200

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->g:LG/m;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    invoke-static {p2, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/aY;->a(Lcom/google/android/maps/driveabout/vector/bF;LG/m;LG/Q;I)LG/m;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aY;->k:I

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aY;->b(Lcom/google/android/maps/driveabout/vector/bF;LG/m;LG/Q;I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->j:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->j:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->j:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->m:LG/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aY;->n:LG/Q;

    invoke-virtual {v0}, LG/m;->b()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4, v2}, LG/m;->a(ILG/Q;)V

    invoke-virtual {v0, v3}, LG/m;->a(LG/Q;)V

    invoke-static {v2, v3}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aY;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/maps/driveabout/app/aY;->a(Landroid/graphics/Canvas;[IF)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aY;->d()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aY;->d()V

    goto :goto_0
.end method

.method static b(Lcom/google/android/maps/driveabout/vector/bF;LG/m;LG/Q;I)[I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    invoke-virtual {p1}, LG/m;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v1

    new-instance v2, LG/Q;

    int-to-float v3, p3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v4, p3

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, LG/Q;-><init>(II)V

    invoke-virtual {p2, v2}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v2

    const/high16 v3, 0x3f80

    div-float v1, v3, v1

    invoke-virtual {p1, v6}, LG/m;->a(I)LG/Q;

    move-result-object v3

    invoke-static {v3, v2, v3}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v0, v6

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p3, v4

    aput v4, v0, v7

    move v4, v7

    :goto_0
    invoke-virtual {p1}, LG/m;->b()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p1, v4, v3}, LG/m;->a(ILG/Q;)V

    invoke-static {v3, v2, v3}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v0, v5

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, p3, v6

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->j:[I

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->a:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->b:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->e:Landroid/graphics/Paint;

    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aY;->k:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aY;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->l:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x320c8

    return v0
.end method

.method public declared-synchronized a(LF/M;LF/y;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, LF/y;->x()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/aY;->a(LF/M;I)LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->g:LG/m;

    invoke-virtual {p2}, LF/y;->a()LG/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aY;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aY;->d()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aY;->g()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aY;->i:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    const v3, 0x3dcccccd

    if-gtz p4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    invoke-virtual {v0, v1}, LG/F;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/maps/driveabout/app/aY;->i:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aY;->i:F

    sub-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    :cond_2
    iput v1, p0, Lcom/google/android/maps/driveabout/app/aY;->i:F

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/aY;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aY;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/aY;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/maps/driveabout/app/aY;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->g:LG/m;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/aY;->g:LG/m;

    invoke-virtual {v0, v1}, LG/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aY;->g:LG/m;

    invoke-virtual {v0}, LG/m;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aY;->f:LG/Q;

    invoke-virtual {v1}, LG/Q;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
