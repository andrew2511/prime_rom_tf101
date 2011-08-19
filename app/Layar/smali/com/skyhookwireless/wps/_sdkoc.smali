.class Lcom/skyhookwireless/wps/_sdkoc;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final _sdka:I

.field final _sdkb:Lcom/skyhookwireless/wps/Cache;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/wps/Cache;IFZI)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkoc;->_sdkb:Lcom/skyhookwireless/wps/Cache;

    iput p5, p0, Lcom/skyhookwireless/wps/_sdkoc;->_sdka:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkoc;->size()I

    move-result v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkoc;->_sdka:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
