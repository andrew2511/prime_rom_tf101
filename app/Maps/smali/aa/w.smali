.class public Laa/w;
.super Ljava/lang/Object;

# interfaces
.implements Laa/C;


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Laa/C;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Laa/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa/w;->b:Ljava/lang/String;

    iput-object p2, p0, Laa/w;->c:Laa/C;

    return-void
.end method


# virtual methods
.method public a(Laa/B;)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Laa/E;

    invoke-direct {v0, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Laa/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laa/E;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Laa/w;->c:Laa/C;

    invoke-interface {v1, v0}, Laa/C;->onLocationChanged(Landroid/location/Location;)V

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
