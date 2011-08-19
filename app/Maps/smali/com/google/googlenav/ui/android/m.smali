.class Lcom/google/googlenav/ui/android/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bA;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    const/16 v0, 0x62

    const-string v1, "i"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void
.end method
