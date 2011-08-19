.class public Lcom/google/googlenav/ui/view/android/HeadingView;
.super Landroid/view/View;

# interfaces
.implements LH/o;
.implements LQ/i;


# instance fields
.field private a:Lf/h;

.field private b:F

.field private c:Lf/h;

.field private d:J

.field private e:F

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:LH/f;

.field private i:LQ/g;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0201b6

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bt;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bt;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bu;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bu;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    const-wide/high16 v3, -0x4010

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, LA/h;->d(I)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    sub-int v1, v0, v1

    invoke-static {v1}, LA/h;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v1, v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    :cond_3
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_0
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lf/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lf/h;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lf/h;

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lf/h;

    invoke-virtual {p1, v0}, Lf/h;->a(Lf/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    :goto_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lf/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lf/h;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/y;->b(Lf/h;Lf/h;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    invoke-virtual {v0}, LQ/g;->d()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->f()Lf/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c(Lf/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Lf/h;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILH/f;)V
    .locals 1

    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LH/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    return-void
.end method

.method public a(LQ/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    return-void
.end method

.method public a(Lf/h;)V
    .locals 5

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->f()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v1

    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 5

    const-wide/16 v3, 0x64

    invoke-virtual {p2}, LH/f;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LH/f;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V

    :cond_0
    invoke-virtual {p2}, LH/f;->p()Lf/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lf/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lf/h;

    invoke-virtual {v0, v1}, Lf/h;->a(Lf/h;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c(Lf/h;)V

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Lf/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lf/h;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    invoke-virtual {v0, p0}, LQ/g;->a(LQ/i;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0, p0}, LH/f;->a(LH/o;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LQ/g;

    invoke-virtual {v0, p0}, LQ/g;->b(LQ/i;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LH/f;

    invoke-virtual {v0, p0}, LH/f;->b(LH/o;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getHeight()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
