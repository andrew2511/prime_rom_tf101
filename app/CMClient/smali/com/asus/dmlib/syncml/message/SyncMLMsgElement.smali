.class public Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
.super Ljava/lang/Object;
.source "SyncMLMsgElement.java"


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pTagName"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mTagName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 1
    .parameter "pChild"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-object p1
.end method

.method public addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 2
    .parameter "pTagName"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 109
    :cond_0
    new-instance v0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, element:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 111
    goto :goto_0
.end method

.method public addChild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTagName"
    .parameter "pContents"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 116
    .local v0, element:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setContent(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public addChild(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pTagName"
    .parameter "pValue"

    .prologue
    .line 124
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mAttributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mAttributes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 3
    .parameter "pTagName"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 70
    .local v0, child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 74
    .end local v0           #child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pTagName"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 79
    .local v0, child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "pTagName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;>;"
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 60
    .local v0, child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0           #child:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    :cond_1
    return-object v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstChild()Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-object v0, p0

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pKey"
    .parameter "pValue"

    .prologue
    .line 41
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mAttributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mAttributes:Ljava/util/HashMap;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "pContents"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mContent:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .parameter "pTagName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->mTagName:Ljava/lang/String;

    .line 31
    return-void
.end method
