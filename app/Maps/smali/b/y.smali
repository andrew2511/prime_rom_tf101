.class public Lb/y;
.super Lb/b;


# static fields
.field public static final a:Lb/y;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/y;

    invoke-direct {v0}, Lb/y;-><init>()V

    sput-object v0, Lb/y;->a:Lb/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lb/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lb/y;->b:Z

    return p1
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lb/y;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/e;->b(Z)V

    return-void
.end method


# virtual methods
.method protected a(LF/M;[LF/M;)V
    .locals 3

    iget-object v0, p0, Lb/y;->h:Lb/p;

    sget-object v1, Lb/x;->a:Lb/x;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected a(LF/l;)V
    .locals 5

    const v4, 0x7f0b00a5

    const/4 v3, 0x1

    invoke-virtual {p1}, LF/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/y;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {p1}, LF/l;->m()[LF/u;

    move-result-object v1

    new-instance v2, Lb/i;

    invoke-direct {v2, p0}, Lb/i;-><init>(Lb/y;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/maps/driveabout/app/Q;->a([LF/u;ZZLcom/google/android/maps/driveabout/app/bf;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lb/y;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->c()V

    iget-object v1, p0, Lb/y;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/Q;->a()V

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/y;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {p0, p1}, Lb/y;->c(LF/l;)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(II)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lb/y;->b:Z

    iget-object v1, p0, Lb/y;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {p0, p1}, Lb/y;->c(LF/l;)I

    move-result v2

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/maps/driveabout/app/Q;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lb/y;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/y;->b:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lb/b;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "WAIT_FOR_DIRECTIONS"

    return-object v0
.end method

.method public g()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v1, v7

    :goto_0
    invoke-direct {p0, v1}, Lb/y;->b(Z)V

    if-eqz v1, :cond_4

    iget-object v2, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-virtual {v2}, Laa/E;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v4

    invoke-virtual {v4}, Laa/E;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, LG/Q;->a(DD)LG/Q;

    move-result-object v2

    invoke-static {}, Lad/b;->c()Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/google/android/maps/driveabout/vector/R;->a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->b()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    move v2, v7

    :goto_1
    iget-object v3, p0, Lb/y;->c:Landroid/content/Context;

    invoke-static {v0}, LF/z;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    const-string v3, "SatelliteImagery"

    invoke-virtual {v0, v3, v2}, Lad/s;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lb/y;->i(Z)V

    iget-object v0, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    const v0, 0x7f0b0056

    :goto_2
    iget-object v1, p0, Lb/y;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/e;->a(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    const v0, 0x7f0b0055

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_1
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/y;->h:Lb/p;

    sget-object v1, Lb/x;->a:Lb/x;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_1
    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    iget-object v1, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/y;->i:LF/L;

    iget-object v2, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->x()[LF/u;

    move-result-object v2

    iget-object v3, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v3

    iget-object v4, p0, Lb/y;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->A()[LF/K;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, LF/L;->a(Laa/E;[LF/u;I[LF/K;)V

    const-string v1, "i"

    invoke-virtual {v0}, Laa/E;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    :goto_1
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/y;->g()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "F"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public k()V
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d()V

    :cond_0
    return-void
.end method
