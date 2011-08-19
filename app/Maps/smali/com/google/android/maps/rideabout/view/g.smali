.class public Lcom/google/android/maps/rideabout/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/n;
.implements Ll/v;


# instance fields
.field private final a:LY/f;

.field private final b:Ll/w;


# direct methods
.method private constructor <init>(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LY/f;

    invoke-direct {v0, p1, p2, p3}, LY/f;-><init>(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/g;->b:Ll/w;

    return-void
.end method

.method public static a(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)Lcom/google/android/maps/rideabout/view/g;
    .locals 2

    new-instance v0, Lcom/google/android/maps/rideabout/view/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/rideabout/view/g;-><init>(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)V

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/android/maps/rideabout/view/g;)V

    invoke-interface {p1, v0}, Ll/w;->a(Ll/v;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/rideabout/view/g;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->g()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->b:Ll/w;

    invoke-interface {v0, p0}, Ll/w;->b(Ll/v;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0}, LY/i;->g()V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LY/i;->a(II)V

    return-void
.end method

.method public a(LB/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->a(LB/b;)V

    return-void
.end method

.method public a(LB/l;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->a(LB/l;)V

    return-void
.end method

.method public a(Ll/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0, p1}, LY/f;->a(Ll/c;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:[I

    iget-object v1, p1, Ll/c;->c:Ll/C;

    invoke-virtual {v1}, Ll/C;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->b(Ll/c;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->a(Ll/c;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LY/i;->c(Ll/c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0}, LY/i;->i()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0}, LY/i;->h()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0}, LY/i;->d()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    invoke-virtual {v0}, LY/i;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    invoke-virtual {v0}, LY/f;->b()LY/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/i;->a(Z)V

    return-void
.end method

.method public f()LY/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/g;->a:LY/f;

    return-object v0
.end method
