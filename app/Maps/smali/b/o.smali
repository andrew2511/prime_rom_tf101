.class public abstract Lb/o;
.super Lb/k;


# instance fields
.field private a:LF/y;

.field private b:LF/M;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected X()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lb/o;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    const-string v1, ""

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v2, p0, Lb/o;->g:Lcom/google/android/maps/driveabout/app/bX;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/app/bX;LF/y;ZZ)V

    goto :goto_0
.end method

.method protected a(LF/M;[LF/M;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lb/k;->a(LF/M;[LF/M;)V

    invoke-virtual {p1}, LF/M;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/o;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lb/o;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/o;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/o;->j:Z

    iget-object v0, p0, Lb/o;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->i(Z)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lb/o;->b:LF/M;

    iget-object v1, p0, Lb/o;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/o;->a:LF/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/o;->a:LF/y;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/o;->a(LF/y;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/o;->j:Z

    goto :goto_0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lb/o;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    iput-object v0, p0, Lb/o;->a:LF/y;

    iget-object v0, p0, Lb/o;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    iput-object v0, p0, Lb/o;->b:LF/M;

    return-void
.end method

.method protected q()V
    .locals 3

    iget-object v0, p0, Lb/o;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    iget-object v0, p0, Lb/o;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected v()V
    .locals 3

    iget-object v0, p0, Lb/o;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected w()V
    .locals 3

    iget-object v0, p0, Lb/o;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method
