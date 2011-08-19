.class public Lcom/google/googlenav/ui/view/android/aP;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/ui/view/android/aP;


# instance fields
.field private b:Lcom/google/googlenav/ui/view/android/m;

.field private c:Z

.field private d:Lcom/google/android/maps/rideabout/view/b;

.field private e:Lcom/google/android/maps/rideabout/view/f;

.field private f:Lcom/google/android/maps/rideabout/view/k;

.field private g:Lcom/google/android/maps/rideabout/view/g;

.field private h:Lcom/google/googlenav/ui/aY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/aP;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/aP;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/aP;->a:Lcom/google/googlenav/ui/view/android/aP;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/m;

    sget-object v0, Lcom/google/android/maps/rideabout/view/d;->a:Lcom/google/android/maps/rideabout/view/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    sget-object v0, Lcom/google/android/maps/rideabout/view/r;->a:Lcom/google/android/maps/rideabout/view/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->e:Lcom/google/android/maps/rideabout/view/f;

    sget-object v0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/android/maps/rideabout/view/k;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/android/maps/rideabout/view/k;

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/android/aP;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/aP;->a:Lcom/google/googlenav/ui/view/android/aP;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/rideabout/view/b;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lae/k;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/view/b;->a(Lcom/google/android/maps/rideabout/view/g;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/rideabout/view/f;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lae/k;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->e:Lcom/google/android/maps/rideabout/view/f;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/rideabout/view/g;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lae/k;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/b;->a(Lcom/google/android/maps/rideabout/view/g;)V

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/view/g;->d()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/rideabout/view/k;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lae/k;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/android/maps/rideabout/view/k;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->h:Lcom/google/googlenav/ui/aY;

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/g;->d()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->a(Lcom/google/android/maps/rideabout/view/g;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/g;->c()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->b(Lcom/google/android/maps/rideabout/view/g;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/m;->b:Lcom/google/googlenav/ui/view/android/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/m;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/g;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/m;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/g;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/b;->b(Lcom/google/android/maps/rideabout/view/g;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    goto :goto_0
.end method

.method public h()Lcom/google/android/maps/rideabout/view/b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/maps/rideabout/view/d;->a:Lcom/google/android/maps/rideabout/view/b;

    goto :goto_0
.end method

.method public i()Lcom/google/android/maps/rideabout/view/f;
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/rideabout/view/r;->a:Lcom/google/android/maps/rideabout/view/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/view/android/h;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/m;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->h()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->e:Lcom/google/android/maps/rideabout/view/f;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Lcom/google/android/maps/rideabout/view/k;
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/android/maps/rideabout/view/k;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/view/android/h;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/m;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/b;->i()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/android/maps/rideabout/view/k;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public k()Lcom/google/android/maps/rideabout/view/b;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    return-object v0
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aP;->g()V

    sget-object v0, Lcom/google/android/maps/rideabout/view/d;->a:Lcom/google/android/maps/rideabout/view/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    sget-object v0, Lcom/google/android/maps/rideabout/view/r;->a:Lcom/google/android/maps/rideabout/view/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->e:Lcom/google/android/maps/rideabout/view/f;

    sget-object v0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/android/maps/rideabout/view/k;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/android/maps/rideabout/view/k;

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->h:Lcom/google/googlenav/ui/aY;

    return-void
.end method

.method public n()Lcom/google/googlenav/ui/aY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->h:Lcom/google/googlenav/ui/aY;

    return-object v0
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/g;->f()LY/f;

    move-result-object v0

    invoke-virtual {v0}, LY/f;->c()LY/d;

    move-result-object v0

    invoke-virtual {v0}, LY/d;->c()LB/b;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->d:Lcom/google/android/maps/rideabout/view/b;

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/b;->e(LB/b;)V

    return-void
.end method
