.class Lcom/skyhookwireless/_sdkx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/skyhookwireless/_sdkw;",
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
.method public _sdka(Lcom/skyhookwireless/_sdkw;Lcom/skyhookwireless/_sdkw;)I
    .locals 2

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-interface {p2}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdkb(Lcom/skyhookwireless/_sdkub;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkw;

    check-cast p2, Lcom/skyhookwireless/_sdkw;

    invoke-virtual {p0, p1, p2}, Lcom/skyhookwireless/_sdkx;->_sdka(Lcom/skyhookwireless/_sdkw;Lcom/skyhookwireless/_sdkw;)I

    move-result v0

    return v0
.end method
