.class public Lcom/google/googlenav/gesture/ScaleControllerSdk5;
.super Lcom/google/googlenav/gesture/A;

# interfaces
.implements Lcom/google/googlenav/gesture/r;


# instance fields
.field private b:Z

.field private c:F

.field private d:Lcom/google/googlenav/gesture/i;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/A;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->c:F

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/gesture/i;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/gesture/i;-><init>(Landroid/content/Context;Lcom/google/googlenav/gesture/r;)V

    iput-object v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->d:Lcom/google/googlenav/gesture/i;

    return-void
.end method

.method public a(Landroid/content/pm/PackageManager;)V
    .locals 1

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->b:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->d:Lcom/google/googlenav/gesture/i;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/gesture/i;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/gesture/i;ZZ)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x50

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->a:Lcom/google/googlenav/gesture/p;

    new-instance v1, Lcom/google/googlenav/gesture/g;

    invoke-direct {v1, v4, p1, p3}, Lcom/google/googlenav/gesture/g;-><init>(ILcom/google/googlenav/gesture/i;Z)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/p;->a(Lcom/google/googlenav/gesture/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->c:F

    return-void
.end method

.method public b(Lcom/google/googlenav/gesture/i;ZZ)Z
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->e:J

    iget-object v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->a:Lcom/google/googlenav/gesture/p;

    new-instance v1, Lcom/google/googlenav/gesture/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p3}, Lcom/google/googlenav/gesture/g;-><init>(ILcom/google/googlenav/gesture/i;Z)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/p;->a(Lcom/google/googlenav/gesture/a;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/googlenav/gesture/i;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->a:Lcom/google/googlenav/gesture/p;

    new-instance v1, Lcom/google/googlenav/gesture/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p3}, Lcom/google/googlenav/gesture/g;-><init>(ILcom/google/googlenav/gesture/i;Z)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/p;->a(Lcom/google/googlenav/gesture/a;)Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/ScaleControllerSdk5;->a:Lcom/google/googlenav/gesture/p;

    new-instance v1, Lcom/google/googlenav/gesture/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p3}, Lcom/google/googlenav/gesture/g;-><init>(ILcom/google/googlenav/gesture/i;Z)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/p;->a(Lcom/google/googlenav/gesture/a;)Z

    :cond_0
    return-void
.end method
