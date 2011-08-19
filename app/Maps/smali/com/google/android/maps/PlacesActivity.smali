.class public Lcom/google/android/maps/PlacesActivity;
.super Lcom/google/android/maps/MapsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/q;->b:Lcom/google/android/maps/q;

    iput-object v0, p0, Lcom/google/android/maps/PlacesActivity;->a:Lcom/google/android/maps/q;

    invoke-super {p0, p1}, Lcom/google/android/maps/MapsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-object v0, Lcom/google/android/maps/q;->b:Lcom/google/android/maps/q;

    iput-object v0, p0, Lcom/google/android/maps/PlacesActivity;->a:Lcom/google/android/maps/q;

    invoke-super {p0}, Lcom/google/android/maps/MapsActivity;->onResume()V

    return-void
.end method
