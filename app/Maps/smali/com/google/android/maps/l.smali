.class Lcom/google/android/maps/l;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/Q;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->g(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/android/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/W;->a()I

    return-void
.end method
