.class public final Lcom/amazon/topaz/internal/binxml/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private final nodeID_:I

.field private final owner_:Lcom/amazon/topaz/internal/binxml/Tree;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/binxml/Tree;I)V
    .locals 0
    .parameter "owner"
    .parameter "nodeID"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    .line 31
    iput p2, p0, Lcom/amazon/topaz/internal/binxml/Node;->nodeID_:I

    .line 32
    return-void
.end method

.method private getElement()Lcom/amazon/topaz/internal/binxml/NodeData;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Node;->nodeID_:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/Tree;->getElement(I)Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;
    .locals 3
    .parameter "id"

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Attrib;

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    iget v2, p0, Lcom/amazon/topaz/internal/binxml/Node;->nodeID_:I

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/topaz/internal/binxml/Attrib;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)V

    return-object v0
.end method

.method public getAttribs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/binxml/Attrib;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Node;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .line 61
    new-instance v3, Lcom/amazon/topaz/internal/binxml/Attrib;

    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    iget v5, p0, Lcom/amazon/topaz/internal/binxml/Node;->nodeID_:I

    invoke-direct {v3, v4, v5, v0}, Lcom/amazon/topaz/internal/binxml/Attrib;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/binxml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Node;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/amazon/topaz/internal/binxml/NodeData;->children:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 77
    new-instance v3, Lcom/amazon/topaz/internal/binxml/Node;

    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    iget-object v5, v1, Lcom/amazon/topaz/internal/binxml/NodeData;->children:[I

    aget v5, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/amazon/topaz/internal/binxml/Node;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v0
.end method

.method public getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Node;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Tree;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Node;->nodeID_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Node;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    iget v0, v0, Lcom/amazon/topaz/internal/binxml/NodeData;->typeID:I

    return v0
.end method

.method public hasAttrib(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Node;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public numChildren()I
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Node;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/NodeData;->children:[I

    array-length v0, v0

    return v0
.end method
