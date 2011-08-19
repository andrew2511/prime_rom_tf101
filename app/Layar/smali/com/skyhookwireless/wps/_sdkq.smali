.class Lcom/skyhookwireless/wps/_sdkq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkgd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/skyhookwireless/_sdkgd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkub;

.field final _sdkb:J

.field final _sdkc:Lcom/skyhookwireless/wps/_sdkp;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/wps/_sdkp;Lcom/skyhookwireless/_sdkub;J)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkq;->_sdkc:Lcom/skyhookwireless/wps/_sdkp;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkq;->_sdka:Lcom/skyhookwireless/_sdkub;

    iput-wide p3, p0, Lcom/skyhookwireless/wps/_sdkq;->_sdkb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/skyhookwireless/_sdkw;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkq;->_sdka:Lcom/skyhookwireless/_sdkub;

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkq;->_sdkb:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic eval(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkw;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdkq;->eval(Lcom/skyhookwireless/_sdkw;)Z

    move-result v0

    return v0
.end method
