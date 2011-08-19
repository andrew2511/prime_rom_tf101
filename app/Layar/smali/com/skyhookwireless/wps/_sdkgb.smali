.class Lcom/skyhookwireless/wps/_sdkgb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/skyhookwireless/wps/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)I
    .locals 4

    invoke-static {p1}, Lcom/skyhookwireless/wps/Location;->_sdkc(Lcom/skyhookwireless/wps/Location;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/skyhookwireless/wps/Location;->_sdkc(Lcom/skyhookwireless/wps/Location;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/skyhookwireless/wps/Location;->_sdkc(Lcom/skyhookwireless/wps/Location;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/skyhookwireless/wps/Location;->_sdkc(Lcom/skyhookwireless/wps/Location;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/wps/Location;

    check-cast p2, Lcom/skyhookwireless/wps/Location;

    invoke-virtual {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkgb;->compare(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)I

    move-result v0

    return v0
.end method
