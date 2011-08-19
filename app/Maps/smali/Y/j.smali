.class public LY/j;
.super LY/i;


# static fields
.field public static final a:LY/j;


# instance fields
.field private h:Z

.field private final i:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY/j;

    invoke-direct {v0}, LY/j;-><init>()V

    sput-object v0, LY/j;->a:LY/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, LY/i;-><init>()V

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LY/j;->i:Ljava/util/HashSet;

    return-void
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, LY/j;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->n()Lcom/google/googlenav/ui/aY;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LY/j;->l()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v2, LY/m;

    invoke-direct {v2, p0, v1}, LY/m;-><init>(LY/j;Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v0, v2, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(LY/j;)V
    .locals 0

    invoke-direct {p0}, LY/j;->o()V

    return-void
.end method

.method private a(Lcom/google/android/maps/rideabout/app/k;LB/b;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->a:Lcom/google/android/maps/rideabout/app/o;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, LB/b;->a:LB/l;

    iget v0, v0, LB/l;->a:I

    invoke-direct {p0, v0}, LY/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY/j;->m()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->e:Lcom/google/android/maps/rideabout/app/o;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, LB/b;->a:LB/l;

    iget v0, v0, LB/l;->a:I

    invoke-direct {p0, v0}, LY/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY/j;->n()V

    iget-object v0, p0, LY/j;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->o()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/rideabout/view/b;)V
    .locals 1

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/view/b;->d(LB/b;)V

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->b()Lcom/google/android/maps/rideabout/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v0

    iput-boolean v0, p0, LY/j;->h:Z

    iget-boolean v0, p0, LY/j;->h:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/maps/rideabout/view/b;->f()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/maps/rideabout/view/b;->e()V

    goto :goto_0
.end method

.method private a(Ll/c;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    iget-object v1, p0, LY/j;->c:LY/d;

    invoke-virtual {v1, p1}, LY/d;->c(Ll/c;)V

    iget-object v1, p1, Ll/c;->d:LB/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->d(LB/b;)V

    iget-object v1, p1, Ll/c;->d:LB/b;

    iget-object v2, p0, LY/j;->d:LY/c;

    invoke-virtual {v2}, LY/c;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;Z)V

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->b()Lcom/google/android/maps/rideabout/app/k;

    move-result-object v0

    iget-object v1, p0, LY/j;->c:LY/d;

    invoke-virtual {v1}, LY/d;->c()LB/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LY/j;->a(Lcom/google/android/maps/rideabout/app/k;LB/b;)V

    if-nez p2, :cond_0

    iget-boolean v1, p0, LY/j;->h:Z

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v2

    iput-boolean v2, p0, LY/j;->h:Z

    iget-boolean v2, p0, LY/j;->h:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/maps/rideabout/view/b;->f()V

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {p0, v1}, LY/j;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->e:Lcom/google/android/maps/rideabout/app/o;

    if-ne v0, v1, :cond_7

    invoke-static {}, LY/j;->p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LY/j;->a(J)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/maps/rideabout/view/b;->e()V

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, LY/j;->a(J)V

    goto :goto_3
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, LY/j;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LY/j;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;)V

    iget-object v2, p0, LY/j;->d:LY/c;

    invoke-virtual {v2}, LY/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->c(LB/b;)I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/b;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, LY/j;->d:LY/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/c;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->b(LB/b;)V

    goto :goto_0
.end method

.method private static p()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->r:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    invoke-direct {p0, v0}, LY/j;->a(Lcom/google/android/maps/rideabout/view/b;)V

    return-void
.end method

.method public a(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/j;->b:LY/f;

    sget-object v1, LY/g;->c:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->b()Lcom/google/android/maps/rideabout/app/k;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LY/j;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/f;->a(Lcom/google/android/maps/rideabout/app/k;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LY/j;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/rideabout/app/k;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, LY/j;->l()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/k;->a(Lcom/google/android/maps/rideabout/app/k;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LY/j;->l()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/k;->a()V

    invoke-virtual {p0}, LY/j;->k()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/f;->d()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, LY/j;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public b(Ll/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LY/j;->a(Ll/c;Z)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-super {p0}, LY/i;->c()V

    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    new-instance v1, LY/l;

    invoke-direct {v1, p0}, LY/l;-><init>(LY/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ll/c;)V
    .locals 2

    iget-object v0, p0, LY/j;->b:LY/f;

    sget-object v1, LY/g;->b:LY/g;

    invoke-virtual {v0, v1}, LY/f;->a(LY/g;)LY/i;

    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, LY/i;->d()V

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->a()Ll/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LY/j;->a(Ll/c;Z)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, LY/i;->e()V

    iget-object v0, p0, LY/j;->c:LY/d;

    invoke-virtual {v0}, LY/d;->a()Ll/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LY/j;->a(Ll/c;Z)V

    invoke-virtual {p0}, LY/j;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    new-instance v1, LY/k;

    invoke-direct {v1, p0}, LY/k;-><init>(LY/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
