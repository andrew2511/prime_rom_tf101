.class public Lcom/google/android/maps/driveabout/vector/r;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private final a:I

.field private final b:[F

.field private c:Lcom/google/android/maps/driveabout/vector/cA;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/google/android/maps/driveabout/vector/p;

.field private g:Lcom/google/android/maps/driveabout/vector/K;

.field private volatile h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x927c0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/r;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->b:[F

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/r;->a:I

    return-void
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->au_()LG/Q;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->au_()LG/Q;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    aget v1, v0, v3

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    add-int/2addr v2, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    int-to-float v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    aget v0, v0, v4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cA;->av_()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->l:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_4

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->h:Z

    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 5

    const/high16 v2, -0x8000

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/r;->i:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->j:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/r;->l:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/r;->l:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->l:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/r;->k:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/r;->l:I

    sub-int/2addr v1, v4

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/r;->a:I

    return v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/K;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/r;->g:Lcom/google/android/maps/driveabout/vector/K;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->as_()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->g()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->at_()V

    :cond_3
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->as_()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->g()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 7

    if-nez p4, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->au_()LG/Q;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v1

    invoke-virtual {v1}, LG/ab;->a()LG/R;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, LG/R;->a(LG/Q;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, LG/ab;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v1, p2}, Lcom/google/android/maps/driveabout/vector/cA;->b(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->b:[F

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->b:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->b:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v0

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/r;->m:F

    invoke-static {v1, p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-static {v1, p2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v3

    invoke-static {v2, v3, v0}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/cA;->av_()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v4, v5, v4

    mul-float/2addr v0, v4

    neg-float v4, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v5}, Lcom/google/android/maps/driveabout/vector/cA;->m()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v6}, Lcom/google/android/maps/driveabout/vector/cA;->av_()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-interface {v1, v4, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v0, 0x3f80

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->h:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/high16 v0, 0x1

    const v2, 0xe700

    const/16 v3, 0x7300

    const/high16 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    :cond_6
    sget-object v0, Lcom/google/android/maps/driveabout/vector/br;->c:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->f:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/r;->c(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x3f80

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/r;->m:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->i:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/r;->j:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/r;->i:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/r;->j:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->g()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/r;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/r;->c(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->e()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->d()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->e()V

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized b()Lcom/google/android/maps/driveabout/vector/cA;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/r;->c(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->g:Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->g:Lcom/google/android/maps/driveabout/vector/K;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/K;->b(Lcom/google/android/maps/driveabout/vector/cA;)V

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/r;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/r;->c(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/r;->c()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cA;->at_()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/cr;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->g:Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/r;->g:Lcom/google/android/maps/driveabout/vector/K;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/r;->c:Lcom/google/android/maps/driveabout/vector/cA;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/K;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    :cond_0
    return-void
.end method
