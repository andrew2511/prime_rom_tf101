.class public Lb/e;
.super Lb/k;


# static fields
.field public static final a:Lb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/e;

    invoke-direct {v0}, Lb/e;-><init>()V

    sput-object v0, Lb/e;->a:Lb/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/e;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/app/bX;)V

    return-void
.end method

.method protected a(LF/M;[LF/M;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lb/k;->a(LF/M;[LF/M;)V

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/e;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/M;)Z

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->q()V

    return-void
.end method

.method protected a(LF/y;LF/y;)V
    .locals 1

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/y;)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bY;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k;->a(Lcom/google/android/maps/driveabout/app/bY;)V

    const v0, 0x7f0f038f

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "LIST_VIEW"

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->r()V

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/e;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/M;)Z

    iget-object v0, p0, Lb/e;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/e;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/y;)V

    :goto_0
    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/e;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->q()V

    goto :goto_0
.end method

.method protected q()V
    .locals 3

    iget-object v0, p0, Lb/e;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method
