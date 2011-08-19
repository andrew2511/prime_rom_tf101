.class Lcom/google/android/maps/n;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/Q;-><init>(ZZLcom/google/googlenav/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LQ/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LQ/g;

    move-result-object v0

    invoke-virtual {v0}, LQ/g;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LQ/g;

    move-result-object v0

    invoke-virtual {v0}, LQ/g;->h()V

    :cond_0
    return-void
.end method
