.class public final Lcom/amazon/topaz/internal/binxml/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# instance fields
.field private final dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/binxml/NodeData;",
            ">;"
        }
    .end annotation
.end field

.field private final rootID:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 1
    .parameter "dict"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Tree;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    .line 29
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/binxml/Tree;->deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->rootID:I

    .line 30
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    .line 31
    return-void
.end method

.method private addNode(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Node;
    .locals 3
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/amazon/topaz/internal/binxml/NodeData;

    invoke-direct {v0, p1}, Lcom/amazon/topaz/internal/binxml/NodeData;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)V

    .line 40
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Node;

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lcom/amazon/topaz/internal/binxml/Node;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;I)V

    return-object v0
.end method

.method private deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->skipSentinel(I)V

    .line 64
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v0

    .line 65
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    new-instance v2, Lcom/amazon/topaz/internal/binxml/NodeData;

    invoke-direct {v2, p1}, Lcom/amazon/topaz/internal/binxml/NodeData;-><init>(Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    .line 67
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_EMPTY:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/binxml/Tree;->addNode(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Node;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getID()I

    move-result v0

    .line 76
    :cond_1
    return v0
.end method


# virtual methods
.method getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    return-object v0
.end method

.method getElement(I)Lcom/amazon/topaz/internal/binxml/NodeData;
    .locals 1
    .parameter "row"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/binxml/NodeData;

    return-object p0
.end method

.method public getNode(I)Lcom/amazon/topaz/internal/binxml/Node;
    .locals 1
    .parameter "id"

    .prologue
    .line 45
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Node;

    invoke-direct {v0, p0, p1}, Lcom/amazon/topaz/internal/binxml/Node;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;I)V

    return-object v0
.end method

.method public root()Lcom/amazon/topaz/internal/binxml/Node;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Node;

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Tree;->rootID:I

    invoke-direct {v0, p0, v1}, Lcom/amazon/topaz/internal/binxml/Node;-><init>(Lcom/amazon/topaz/internal/binxml/Tree;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Tree;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
