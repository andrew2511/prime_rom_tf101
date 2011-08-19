.class Lcom/google/android/maps/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/N;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/e;->b:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/e;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/e;->b:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/a;->b:Lcom/google/android/maps/a;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/a;)Lcom/google/android/maps/a;

    iget-object v0, p0, Lcom/google/android/maps/e;->b:Lcom/google/android/maps/MapsActivity;

    iget-object v1, p0, Lcom/google/android/maps/e;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/e;->b:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->d(Lcom/google/android/maps/MapsActivity;)V

    return-void
.end method
