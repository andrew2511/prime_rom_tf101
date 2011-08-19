.class public LY/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ll/c;

.field private b:LB/b;

.field private c:LB/l;

.field private d:Lcom/google/android/maps/rideabout/app/o;

.field private final e:Lcom/google/android/maps/rideabout/app/k;

.field private final f:LY/f;

.field private final g:Lcom/google/android/maps/rideabout/app/f;


# direct methods
.method public constructor <init>(LB/c;Lcom/google/android/maps/rideabout/app/o;LY/f;Lcom/google/android/maps/rideabout/app/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/k;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/rideabout/app/k;-><init>(LB/c;Lcom/google/android/maps/rideabout/app/o;)V

    iput-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    iput-object p3, p0, LY/d;->f:LY/f;

    iput-object p4, p0, LY/d;->g:Lcom/google/android/maps/rideabout/app/f;

    return-void
.end method

.method private a(LB/l;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p0, LY/d;->c:LB/l;

    invoke-virtual {p1, v1}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LY/d;->c:LB/l;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    iget-object v1, p0, LY/d;->c:LB/l;

    invoke-static {p1, v1}, Lae/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LY/d;->d:Lcom/google/android/maps/rideabout/app/o;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/app/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    move v1, v3

    :goto_1
    iput-object p1, p0, LY/d;->c:LB/l;

    iput-object v0, p0, LY/d;->d:Lcom/google/android/maps/rideabout/app/o;

    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Ll/c;
    .locals 1

    iget-object v0, p0, LY/d;->f:LY/f;

    invoke-virtual {v0}, LY/f;->a()V

    iget-object v0, p0, LY/d;->a:Ll/c;

    return-object v0
.end method

.method public a(Ll/c;)V
    .locals 1

    iget-object v0, p0, LY/d;->f:LY/f;

    invoke-virtual {v0}, LY/f;->a()V

    iput-object p1, p0, LY/d;->a:Ll/c;

    iget-object v0, p1, Ll/c;->d:LB/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ll/c;->d:LB/b;

    iput-object v0, p0, LY/d;->b:LB/b;

    :cond_0
    return-void
.end method

.method public b()Lcom/google/android/maps/rideabout/app/k;
    .locals 1

    iget-object v0, p0, LY/d;->f:LY/f;

    invoke-virtual {v0}, LY/f;->a()V

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    return-object v0
.end method

.method public b(Ll/c;)V
    .locals 1

    iget-object v0, p0, LY/d;->f:LY/f;

    invoke-virtual {v0}, LY/f;->a()V

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/app/k;->a(Ll/c;)V

    return-void
.end method

.method public c()LB/b;
    .locals 1

    iget-object v0, p0, LY/d;->f:LY/f;

    invoke-virtual {v0}, LY/f;->a()V

    iget-object v0, p0, LY/d;->b:LB/b;

    return-object v0
.end method

.method public c(Ll/c;)V
    .locals 6

    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ll/c;->d:LB/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p1, Ll/c;->d:LB/b;

    if-eqz v3, :cond_2

    iget-object v1, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/k;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ll/c;->d:LB/b;

    iget-object v2, v2, LB/b;->a:LB/l;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    iget-object v3, p0, LY/d;->g:Lcom/google/android/maps/rideabout/app/f;

    iget-object v4, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v4}, Lcom/google/android/maps/rideabout/app/k;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, LY/d;->e:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v4}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v1}, LY/d;->a(LB/l;)Z

    move-result v1

    invoke-interface {v3, v4, v1, v0, v2}, Lcom/google/android/maps/rideabout/app/f;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1
.end method
