.class public abstract LY/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LY/i;


# instance fields
.field protected b:LY/f;

.field protected c:LY/d;

.field protected d:LY/c;

.field protected e:Ll/w;

.field protected f:Lcom/google/googlenav/ui/view/android/aP;

.field protected g:LB/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LY/g;->values()[LY/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [LY/i;

    sput-object v0, LY/i;->a:[LY/i;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LY/f;LB/c;Ll/w;LY/d;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, LY/i;->a:[LY/i;

    sget-object v1, LY/j;->a:LY/j;

    aput-object v1, v0, v3

    sget-object v0, LY/i;->a:[LY/i;

    const/4 v1, 0x1

    sget-object v2, LY/h;->a:LY/h;

    aput-object v2, v0, v1

    sget-object v0, LY/i;->a:[LY/i;

    const/4 v1, 0x2

    sget-object v2, LY/a;->a:LY/a;

    aput-object v2, v0, v1

    move v0, v3

    :goto_0
    sget-object v1, LY/i;->a:[LY/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, LY/i;->a:[LY/i;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p3, p1, p2}, LY/i;->a(LY/f;LY/d;LB/c;Ll/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(II)V
    .locals 4

    iget-object v0, p0, LY/i;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/b;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LY/i;->d:LY/c;

    invoke-virtual {v2}, LY/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->b(LB/b;)V

    :cond_0
    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->c(LB/b;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;)V

    iget-object v0, p0, LY/i;->d:LY/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LY/c;->a(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, LY/i;->d:LY/c;

    invoke-virtual {v0, p1}, LY/c;->a(I)V

    return-void

    :cond_2
    if-eq p1, p2, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;)V

    goto :goto_0

    :cond_3
    if-eq p1, p2, :cond_4

    if-eq p1, v2, :cond_6

    :cond_4
    if-le p1, v2, :cond_5

    if-lt p2, v2, :cond_6

    :cond_5
    if-ge p1, v2, :cond_1

    if-le p2, v2, :cond_1

    :cond_6
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;)V

    iget-object v0, p0, LY/i;->d:LY/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/c;->a(Z)V

    goto :goto_1
.end method

.method public a(LB/b;)V
    .locals 1

    iget-object v0, p0, LY/i;->e:Ll/w;

    invoke-interface {v0, p1}, Ll/w;->a(LB/b;)V

    return-void
.end method

.method public a(LB/l;)V
    .locals 1

    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/b;->a(LB/l;)V

    return-void
.end method

.method public final a(LY/f;LY/d;LB/c;Ll/w;)V
    .locals 1

    iput-object p1, p0, LY/i;->b:LY/f;

    iput-object p2, p0, LY/i;->c:LY/d;

    iput-object p3, p0, LY/i;->g:LB/c;

    iput-object p4, p0, LY/i;->e:Ll/w;

    new-instance v0, LY/c;

    invoke-direct {v0}, LY/c;-><init>()V

    iput-object v0, p0, LY/i;->d:LY/c;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v0

    iput-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {p0}, LY/i;->b()V

    return-void
.end method

.method public a(Ll/c;)V
    .locals 0

    return-void
.end method

.method public abstract a(Z)V
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(Ll/c;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, LY/i;->a()V

    return-void
.end method

.method public c(Ll/c;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, LY/i;->a()V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, LY/i;->a()V

    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    new-instance v1, LY/e;

    invoke-direct {v1, p0, v0}, LY/e;-><init>(LY/i;Lcom/google/android/maps/rideabout/view/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LY/i;->d:LY/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LY/c;->a(Z)V

    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->d()V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, LY/i;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->c(LB/b;)I

    move-result v0

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/b;->b()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LY/i;->d:LY/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/c;->a(Z)V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, LY/i;->c:LY/d;

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY/i;->j()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v1

    iget-object v2, p0, LY/i;->d:LY/c;

    invoke-virtual {v2}, LY/c;->a()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/b;->a(LB/b;Z)V

    :cond_0
    return-void
.end method

.method protected j()Lcom/google/android/maps/rideabout/view/b;
    .locals 1

    iget-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->h()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    return-object v0
.end method

.method protected k()Lcom/google/android/maps/rideabout/view/f;
    .locals 1

    iget-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->i()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/google/android/maps/rideabout/view/k;
    .locals 1

    iget-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->j()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    return-object v0
.end method

.method protected m()V
    .locals 4

    iget-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->n()Lcom/google/googlenav/ui/aY;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected n()V
    .locals 4

    iget-object v0, p0, LY/i;->f:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->n()Lcom/google/googlenav/ui/aY;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xf1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method
