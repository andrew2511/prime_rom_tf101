.class Lcom/skyhookwireless/wps/_sdkqb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkgd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/skyhookwireless/_sdkgd",
        "<",
        "Lcom/skyhookwireless/_sdkw;",
        ">;"
    }
.end annotation


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkw;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/_sdkw;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkqb;->_sdka:Lcom/skyhookwireless/_sdkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/skyhookwireless/_sdkw;)Z
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkqb;->_sdka:Lcom/skyhookwireless/_sdkw;

    invoke-interface {v0}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-interface {p1}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdkqb;->eval(Lcom/skyhookwireless/_sdkw;)Z

    move-result v0

    return v0
.end method
