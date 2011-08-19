.class Lcom/google/googlenav/android/D;
.super Ljava/lang/Object;

# interfaces
.implements LQ/e;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 6

    const-wide v4, 0x412e848000000000L

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    new-instance v1, Landroid/location/Location;

    const-string v2, "GoogleLocationProvider"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    move-object v0, v1

    goto :goto_0
.end method
