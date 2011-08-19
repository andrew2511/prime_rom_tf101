.class public Lcom/asus/dmlib/syncml/message/ItemElement;
.super Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
.source "ItemElement.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tagName"
    .parameter "locURIContent"
    .parameter "dataContent"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "Source"

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/message/ItemElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 17
    .local v0, srcElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v1, "LocURI"

    invoke-virtual {v0, v1, p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "Data"

    invoke-virtual {p0, v1, p3}, Lcom/asus/dmlib/syncml/message/ItemElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;
    .locals 2
    .parameter "locURIContent"
    .parameter "dataContent"

    .prologue
    .line 22
    new-instance v0, Lcom/asus/dmlib/syncml/message/ItemElement;

    const-string v1, "Item"

    invoke-direct {v0, v1, p0, p1}, Lcom/asus/dmlib/syncml/message/ItemElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
