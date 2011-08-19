.class public Lb/g;
.super Lb/k;


# static fields
.field public static final a:Lb/g;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/vector/bI;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/g;

    invoke-direct {v0}, Lb/g;-><init>()V

    sput-object v0, Lb/g;->a:Lb/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 0

    invoke-virtual {p0}, Lb/g;->Y()V

    return-void
.end method

.method protected a(FFF)V
    .locals 0

    invoke-virtual {p0}, Lb/g;->Y()V

    return-void
.end method

.method protected a(LF/y;LF/y;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lb/g;->a(LF/y;)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/os/Bundle;LG/z;)V
    .locals 1

    iget-object v0, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/bX;LG/z;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    iget-boolean v0, p0, Lb/g;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g;->j:Z

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "FREE_MOVEMENT"

    return-object v0
.end method

.method public g()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->s()V

    iget-object v0, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->k()V

    :goto_0
    iget-object v0, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    new-array v2, v2, [LF/M;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/g;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    :cond_0
    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/g;->a(LF/y;)V

    invoke-virtual {p0}, Lb/g;->Y()V

    return-void

    :cond_1
    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->i(Z)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/g;->b:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cm;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lb/g;->b:Lcom/google/android/maps/driveabout/vector/bI;

    return-void
.end method

.method protected q()V
    .locals 3

    iget-object v0, p0, Lb/g;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    iget-object v0, p0, Lb/g;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected u()V
    .locals 1

    iget-object v0, p0, Lb/g;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/g;->j:Z

    return-void
.end method

.method protected v()V
    .locals 3

    iget-object v0, p0, Lb/g;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected w()V
    .locals 3

    iget-object v0, p0, Lb/g;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method
