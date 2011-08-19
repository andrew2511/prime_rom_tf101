.class public Lcom/google/android/maps/driveabout/vector/bH;
.super Ljava/lang/Object;


# instance fields
.field protected a:LG/Q;

.field protected b:LG/Q;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bH;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, LG/Q;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bH;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, LG/Q;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Z

    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->d(II)V

    return-void
.end method

.method public c(II)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bH;->b(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bH;->a(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Z

    return-void
.end method

.method public d(II)I
    .locals 1

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    return v0
.end method
