.class public Ll/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/location/LocationListener;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/m;->b:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Ll/g;

    invoke-direct {v0, p1}, Ll/g;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Ll/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll/g;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Ll/m;->b:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
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
