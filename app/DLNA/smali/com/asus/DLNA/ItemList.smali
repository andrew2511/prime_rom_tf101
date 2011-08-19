.class Lcom/asus/DLNA/ItemList;
.super Ljava/util/LinkedList;
.source "DLNAServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/asus/DLNA/Item;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1687
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z
    .locals 1
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 1696
    new-instance v0, Lcom/asus/DLNA/Item;

    invoke-direct {v0, p1, p2}, Lcom/asus/DLNA/Item;-><init>(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)V

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/ItemList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "title"
    .parameter "id"

    .prologue
    .line 1691
    new-instance v0, Lcom/asus/DLNA/Item;

    invoke-direct {v0, p1, p2}, Lcom/asus/DLNA/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/ItemList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
