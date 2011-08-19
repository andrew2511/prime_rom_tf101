.class Lcom/skyhookwireless/wps/_sdksb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkwc;


# instance fields
.field final _sdka:Ljava/util/ArrayList;

.field final _sdkb:Ljava/util/ArrayList;

.field final _sdkc:Lcom/skyhookwireless/wps/_sdkrb;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/wps/_sdkrb;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkc:Lcom/skyhookwireless/wps/_sdkrb;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdka:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkb:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inBoth(II)V
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkc:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka(Lcom/skyhookwireless/wps/_sdkrb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkjd;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkjd;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public inFirstOnly(II)V
    .locals 9

    sget v8, Lcom/skyhookwireless/wps/Location;->_sdki:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkc:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka(Lcom/skyhookwireless/wps/_sdkrb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/skyhookwireless/_sdkjd;

    move-object v7, v0

    new-instance v1, Lcom/skyhookwireless/_sdkzb;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkc:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-static {v2}, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc(Lcom/skyhookwireless/wps/_sdkrb;)Lcom/skyhookwireless/wps/_sdkmc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/skyhookwireless/wps/_sdkmc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/skyhookwireless/_sdkzb;-><init>(Lcom/skyhookwireless/_sdkyb;IJLcom/skyhookwireless/_sdkub;)V

    invoke-virtual {v7, v1}, Lcom/skyhookwireless/_sdkjd;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkjd;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {v7, v2}, Lcom/skyhookwireless/_sdkjd;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    if-eqz v8, :cond_2

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public inSecondOnly(II)V
    .locals 2

    new-instance v0, Lcom/skyhookwireless/_sdkjd;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkc:Lcom/skyhookwireless/wps/_sdkrb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb(Lcom/skyhookwireless/wps/_sdkrb;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkjd;-><init>(I)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdka:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkjd;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdksb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
