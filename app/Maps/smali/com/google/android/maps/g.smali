.class Lcom/google/android/maps/g;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/Q;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x4e

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->am()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    move v0, v5

    :goto_0
    const-string v1, "C"

    if-eqz v0, :cond_2

    const-string v2, "T"

    :goto_1
    invoke-static {v4, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/MapsActivity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    move v1, v5

    :goto_2
    const-string v2, "W"

    if-eqz v1, :cond_4

    const-string v3, "T"

    :goto_3
    invoke-static {v4, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v2, "CW"

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-string v0, "T"

    :goto_4
    invoke-static {v4, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const-string v2, "F"

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    const-string v3, "F"

    goto :goto_3

    :cond_5
    const-string v0, "F"

    goto :goto_4
.end method
