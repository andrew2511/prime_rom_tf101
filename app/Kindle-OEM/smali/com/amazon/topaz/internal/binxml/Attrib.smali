.class public Lcom/amazon/topaz/internal/binxml/Attrib;
.super Ljava/lang/Object;
.source "Attrib.java"


# instance fields
.field private final attribID_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

.field private final owner_:Lcom/amazon/topaz/internal/binxml/Tree;

.field private final row_:I


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/binxml/Tree;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)V
    .locals 0
    .parameter "owner"
    .parameter "row"
    .parameter "attribID"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    .line 60
    iput p2, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->row_:I

    .line 61
    iput-object p3, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->attribID_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .line 62
    return-void
.end method

.method private getElement()Lcom/amazon/topaz/internal/binxml/NodeData;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->row_:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/Tree;->getElement(I)Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public exists()Z
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Attrib;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v1

    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    .line 55
    .local v0, localAttribs:Ljava/util/Map;
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->attribID_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public key()Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->attribID_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    return-object v0
.end method

.method public toInt()I
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Attrib;->getElement()Lcom/amazon/topaz/internal/binxml/NodeData;

    move-result-object v2

    iget-object v0, v2, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    .line 30
    .local v0, localAttribs:Ljava/util/Map;
    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->attribID_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 31
    .local v1, value:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 32
    const/4 v2, 0x0

    .line 34
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Attrib;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v2

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/Attrib;->owner_:Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Tree;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v0

    .line 44
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, retval:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    :cond_1
    move-object v2, v1

    .line 49
    goto :goto_0
.end method
