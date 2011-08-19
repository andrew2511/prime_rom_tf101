.class public LC/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:LC/b;

.field private final b:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(LC/b;Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC/c;->a:LC/b;

    iput-object p2, p0, LC/c;->b:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, LC/c;->a:LC/b;

    invoke-virtual {v0, p1}, LC/b;->a(Landroid/location/Location;)V

    iget-object v0, p0, LC/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LC/c;->a:LC/b;

    invoke-virtual {v0, p1}, LC/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, LC/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LC/c;->a:LC/b;

    invoke-virtual {v0, p1}, LC/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, LC/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LC/c;->a:LC/b;

    invoke-virtual {v0, p1, p2}, LC/b;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LC/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
