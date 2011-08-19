.class Lcom/google/android/maps/driveabout/app/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/do;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Laa/E;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v2, Laa/E;

    invoke-direct {v2, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Laa/E;)Laa/E;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
