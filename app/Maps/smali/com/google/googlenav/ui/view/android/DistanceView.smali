.class public Lcom/google/googlenav/ui/view/android/DistanceView;
.super Landroid/view/View;

# interfaces
.implements LH/o;


# static fields
.field private static final b:I


# instance fields
.field a:Lf/h;

.field private c:I

.field private d:Lf/h;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:F

.field private h:LH/f;

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x99

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/r;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/s;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/s;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/t;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lf/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F
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
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lf/h;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lf/h;

    invoke-virtual {p1, v0}, Lf/h;->a(Lf/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    :goto_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lf/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lf/h;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->e()Lf/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c(Lf/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Lf/h;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ILH/f;)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LH/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/h;)V
    .locals 5

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->e()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v1

    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 5

    const-wide/16 v3, 0x64

    invoke-virtual {p2}, LH/f;->p()Lf/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lf/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lf/h;

    invoke-virtual {v0, v1}, Lf/h;->a(Lf/h;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c(Lf/h;)V

    :cond_2
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
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lf/h;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    invoke-virtual {v0, p0}, LH/f;->a(LH/o;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LH/f;

    invoke-virtual {v0, p0}, LH/f;->b(LH/o;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setMeasuredDimension(II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
