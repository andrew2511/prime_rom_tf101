.class Lcom/skyhookwireless/wps/_sdkmb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/Cache$Finder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/skyhookwireless/wps/Cache$Finder",
        "<",
        "Lcom/skyhookwireless/wps/_sdkpb;",
        "Lcom/skyhookwireless/wps/_sdkdb;",
        ">;"
    }
.end annotation


# static fields
.field static final _sdka:Z


# instance fields
.field final _sdkb:F

.field final _sdkc:Lcom/skyhookwireless/wps/_sdkpb;

.field final _sdkd:Lcom/skyhookwireless/wps/_sdklb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdklb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkmb;->_sdka:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdklb;FLcom/skyhookwireless/wps/_sdkpb;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkd:Lcom/skyhookwireless/wps/_sdklb;

    iput p2, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkb:F

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkc:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/Iterator;Lcom/skyhookwireless/wps/_sdkpb;)Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;>;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v5, 0x0

    sget v2, Lcom/skyhookwireless/wps/Location;->_sdki:I

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkmb;->_sdka:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkb:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkb:F

    float-to-double v0, v0

    const-wide/high16 v3, 0x3ff0

    cmpg-double v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkc:Lcom/skyhookwireless/wps/_sdkpb;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkb:F

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdklb;->_sdkb(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/_sdkfd;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkfd;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkfd;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/skyhookwireless/wps/_sdkmb;->_sdkc:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-static {v7, v1}, Lcom/skyhookwireless/wps/_sdklb;->_sdkb(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/skyhookwireless/wps/_sdklb;->_sdkb(Lcom/skyhookwireless/_sdkfd;Lcom/skyhookwireless/_sdkfd;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdklb;->_sdkb(Lcom/skyhookwireless/_sdkfd;)Lcom/skyhookwireless/_sdkfd;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/skyhookwireless/_sdkfd;->_sdka(Lcom/skyhookwireless/_sdked;)I

    move-result v7

    if-gtz v7, :cond_2

    invoke-virtual {v1, v4}, Lcom/skyhookwireless/_sdkfd;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    if-nez v2, :cond_3

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    check-cast p2, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkmb;->call(Ljava/util/Iterator;Lcom/skyhookwireless/wps/_sdkpb;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
