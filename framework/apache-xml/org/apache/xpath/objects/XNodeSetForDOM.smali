.class public Lorg/apache/xpath/objects/XNodeSetForDOM;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNodeSetForDOM.java"


# static fields
.field static final serialVersionUID:J = -0x748542f81fc72280L


# instance fields
.field m_origObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xpath/objects/XNodeSet;)V

    .line 57
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    if-eqz v0, :cond_d

    .line 58
    check-cast p1, Lorg/apache/xpath/objects/XNodeSetForDOM;

    .end local p1
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 59
    :cond_d
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V
    .registers 5
    .parameter "node"
    .parameter "dtmMgr"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 42
    iput-object p2, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 43
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 44
    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 45
    .local v0, dtmHandle:I
    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 5
    .parameter "nodeList"
    .parameter "xctxt"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 63
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 64
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 70
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    .line 71
    .local v0, nsdtm:Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_last:I

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 5
    .parameter "nodeIter"
    .parameter "xctxt"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    .line 77
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 78
    iput-object p1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 84
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    .line 85
    .local v0, nsdtm:Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->getLength()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_last:I

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSetForDOM;->setObject(Ljava/lang/Object;)V

    .line 87
    return-void
.end method


# virtual methods
.method public nodelist()Lorg/w3c/dom/NodeList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/w3c/dom/NodeList;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    goto :goto_b
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    invoke-super {p0}, Lorg/apache/xpath/objects/XNodeSet;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    goto :goto_b
.end method

.method public object()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    return-object v0
.end method
