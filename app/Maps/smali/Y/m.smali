.class LY/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aY;

.field final synthetic b:LY/j;


# direct methods
.method constructor <init>(LY/j;Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, LY/m;->b:LY/j;

    iput-object p2, p0, LY/m;->a:Lcom/google/googlenav/ui/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LY/m;->b:LY/j;

    iget-object v0, v0, LY/j;->b:LY/f;

    invoke-virtual {v0}, LY/f;->c()LY/d;

    move-result-object v0

    invoke-virtual {v0}, LY/d;->b()Lcom/google/android/maps/rideabout/app/k;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->e:Lcom/google/android/maps/rideabout/app/o;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->a:Lcom/google/android/maps/rideabout/app/o;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/android/maps/rideabout/app/o;->g:Lcom/google/android/maps/rideabout/app/o;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, LY/m;->a:Lcom/google/googlenav/ui/aY;

    const/16 v1, 0xb56

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method
