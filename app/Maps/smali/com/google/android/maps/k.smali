.class Lcom/google/android/maps/k;
.super LaY/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/o;


# direct methods
.method constructor <init>(Lcom/google/android/maps/o;LT/c;LaU/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/o;

    invoke-direct {p0, p2, p3}, LaY/c;-><init>(LT/c;LaU/a;)V

    return-void
.end method


# virtual methods
.method protected o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/o;

    iget-object v0, v0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->f(Lcom/google/android/maps/MapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/o;

    iget-object v0, v0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->b(Lcom/google/android/maps/MapsActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/o;

    iget-object v0, v0, Lcom/google/android/maps/o;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Z)Z

    :cond_0
    return-void
.end method
