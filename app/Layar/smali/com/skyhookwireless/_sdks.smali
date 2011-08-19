.class Lcom/skyhookwireless/_sdks;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/skyhookwireless/_sdkr;",
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
.method public _sdka(Lcom/skyhookwireless/_sdkr;Lcom/skyhookwireless/_sdkr;)I
    .locals 2

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkr;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v0

    invoke-interface {p2}, Lcom/skyhookwireless/_sdkr;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkq;->_sdka(Lcom/skyhookwireless/_sdkq;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkr;

    check-cast p2, Lcom/skyhookwireless/_sdkr;

    invoke-virtual {p0, p1, p2}, Lcom/skyhookwireless/_sdks;->_sdka(Lcom/skyhookwireless/_sdkr;Lcom/skyhookwireless/_sdkr;)I

    move-result v0

    return v0
.end method
