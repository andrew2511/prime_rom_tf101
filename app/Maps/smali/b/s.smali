.class public Lb/s;
.super Lb/o;


# static fields
.field public static final a:Lb/s;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/s;

    invoke-direct {v0}, Lb/s;-><init>()V

    sput-object v0, Lb/s;->a:Lb/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/o;-><init>()V

    return-void
.end method

.method private c(LF/y;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lb/s;->a(LF/y;)V

    invoke-virtual {p0}, Lb/s;->Y()V

    iget-object v0, p0, Lb/s;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(LF/y;ZZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LF/y;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->m()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    goto :goto_0
.end method


# virtual methods
.method protected U()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lb/s;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LF/y;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/s;->h:Lb/p;

    sget-object v1, Lb/j;->a:Lb/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/s;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    goto :goto_0
.end method

.method protected a(LF/y;LF/y;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lb/s;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, v1}, Lb/s;->c(LF/y;Z)V

    :cond_0
    iput-boolean v1, p0, Lb/s;->b:Z

    return-void
.end method

.method protected a(LF/y;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lb/s;->c(LF/y;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;LG/z;)V
    .locals 1

    iget-object v0, p0, Lb/s;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/bX;LG/z;)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/s;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/s;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/s;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/aH;->a(LF/y;ZZ)V

    iput-boolean v3, p0, Lb/s;->b:Z

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "INSPECT_STEP_MAP"

    return-object v0
.end method

.method public g()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->s()V

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->k()V

    invoke-virtual {p0}, Lb/s;->Y()V

    iput-boolean v2, p0, Lb/s;->b:Z

    iget-object v0, p0, Lb/s;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/s;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/s;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    new-array v2, v2, [LF/M;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/s;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    :cond_0
    return-void
.end method

.method protected u()V
    .locals 1

    invoke-super {p0}, Lb/o;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/s;->b:Z

    return-void
.end method
