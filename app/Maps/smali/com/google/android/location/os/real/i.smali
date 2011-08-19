.class Lcom/google/android/location/os/real/i;
.super LW/k;


# direct methods
.method private constructor <init>(JLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LW/k;-><init>(JLjava/util/ArrayList;)V

    return-void
.end method

.method public static a(JLjava/util/List;)Lcom/google/android/location/os/real/i;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, LW/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    new-instance v5, LW/g;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {v5, v3, v4, v0}, LW/g;-><init>(JI)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/location/os/real/i;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/location/os/real/i;-><init>(JLjava/util/ArrayList;)V

    return-object v0
.end method
