.class Lcom/google/android/maps/o;
.super LT/a;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;LT/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2}, LT/a;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    new-instance v0, Lcom/google/android/maps/k;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->a()Lcom/google/googlenav/ui/android/ar;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/k;-><init>(Lcom/google/android/maps/o;LT/c;LaU/a;)V

    invoke-virtual {v0}, Lcom/google/android/maps/k;->b()V

    return-void
.end method
