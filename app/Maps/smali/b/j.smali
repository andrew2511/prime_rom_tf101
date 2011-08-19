.class public Lb/j;
.super Lb/o;


# static fields
.field public static final a:Lb/j;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/j;

    invoke-direct {v0}, Lb/j;-><init>()V

    sput-object v0, Lb/j;->a:Lb/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/o;-><init>()V

    return-void
.end method

.method private b(LF/y;)LF/y;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lb/j;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/j;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private c(LF/y;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LF/y;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->o()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->p()V

    goto :goto_0
.end method

.method private c(LF/y;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lb/j;->a(LF/y;)V

    invoke-virtual {p0}, Lb/j;->Y()V

    iget-object v0, p0, Lb/j;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(LF/y;ZZ)V

    invoke-direct {p0, p1}, Lb/j;->c(LF/y;)V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/y;)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 0

    return-void
.end method

.method protected a(LF/y;LF/y;)V
    .locals 1

    iget-boolean v0, p0, Lb/j;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/j;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->c()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/j;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lb/j;->c(LF/y;Z)V

    goto :goto_0
.end method

.method protected a(LF/y;Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lb/j;->c(LF/y;Z)V

    invoke-virtual {p0, v1}, Lb/j;->b(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lb/j;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/j;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/maps/driveabout/app/aH;->a(LF/y;ZZ)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/j;->b:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "INSPECT_NAVIGATION_IMAGE"

    return-object v0
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->s()V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    iget-object v0, p0, Lb/j;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/j;->b(LF/y;)LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/y;)V

    const-string v1, "w"

    invoke-virtual {v0}, LF/y;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, v0}, Lb/j;->c(LF/y;)V

    invoke-virtual {p0}, Lb/j;->Y()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    invoke-super {p0}, Lb/o;->l()V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->p()V

    iget-object v0, p0, Lb/j;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/y;)V

    return-void
.end method
