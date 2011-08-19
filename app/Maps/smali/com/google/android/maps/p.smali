.class Lcom/google/android/maps/p;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/Q;-><init>(ZZLcom/google/googlenav/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lr/e;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr/e;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->g()V

    invoke-virtual {p0}, Lcom/google/android/maps/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr/e;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->h()V

    :cond_0
    return-void
.end method
