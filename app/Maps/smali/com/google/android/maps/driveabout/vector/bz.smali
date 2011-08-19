.class public Lcom/google/android/maps/driveabout/vector/bz;
.super Lcom/google/android/maps/driveabout/vector/bH;


# instance fields
.field private final d:LG/Q;

.field private e:Z

.field private f:J

.field private final g:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bH;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:LG/Q;

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/bz;->g:J

    return-void
.end method


# virtual methods
.method public a(IIF)I
    .locals 6

    const/high16 v5, 0x3f80

    cmpl-float v0, p3, v5

    if-ltz v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    sub-int v0, p2, p1

    int-to-float v0, v0

    const-wide v1, 0x3ff921fb54442d18L

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v1, v5, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p2, v0

    goto :goto_0
.end method

.method public a(II)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LG/Q;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:Z

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->f:J

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/bz;->f:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->g:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:LG/Q;

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bz;->a(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, LG/Q;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:LG/Q;

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bz;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, LG/Q;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:Z

    :cond_1
    return-void
.end method
