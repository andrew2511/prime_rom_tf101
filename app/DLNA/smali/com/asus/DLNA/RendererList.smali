.class Lcom/asus/DLNA/RendererList;
.super Ljava/util/LinkedList;
.source "DLNAServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/awox/jUPnPCP/UPnPRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1614
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)I
    .locals 3
    .parameter "theDevice"

    .prologue
    .line 1618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/RendererList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1620
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    invoke-super {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move v1, v0

    .line 1626
    :goto_1
    return v1

    .line 1618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1626
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
