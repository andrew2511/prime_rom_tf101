.class Lcom/google/android/maps/rideabout/app/p;
.super Lcom/google/android/maps/rideabout/app/g;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/g;-><init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/i;)V

    return-void
.end method


# virtual methods
.method protected e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->a:Landroid/app/Service;

    const/16 v1, 0xc3b

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/p;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->a:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
