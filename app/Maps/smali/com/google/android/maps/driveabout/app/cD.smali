.class Lcom/google/android/maps/driveabout/app/cD;
.super Ljava/lang/Object;

# interfaces
.implements Laa/C;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bX;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laa/B;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ez;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/ez;-><init>(Lcom/google/android/maps/driveabout/app/cD;Laa/B;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    check-cast p1, Laa/E;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ey;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/ey;-><init>(Lcom/google/android/maps/driveabout/app/cD;Laa/E;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ex;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ex;-><init>(Lcom/google/android/maps/driveabout/app/cD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eA;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/eA;-><init>(Lcom/google/android/maps/driveabout/app/cD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
