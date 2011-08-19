.class Lcom/google/googlenav/ui/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aU;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/i;

    move-result-object v0

    invoke-virtual {v0}, LaK/i;->i()V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bu;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/i;

    move-result-object v0

    invoke-virtual {v0}, LaK/i;->j()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-static {p2}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lf/h;)V

    return-void
.end method
