.class public Lorg/apache/xalan/transformer/KeyTable;
.super Ljava/lang/Object;
.source "KeyTable.java"


# instance fields
.field private m_docKey:I

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

.field private m_refsTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .registers 9
    .parameter "doc"
    .parameter "nscontext"
    .parameter "name"
    .parameter "keyDeclarations"
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    .line 99
    iput p1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    .line 100
    iput-object p4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    .line 101
    new-instance v0, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-direct {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyIterator;-><init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V

    .line 103
    .local v0, ki:Lorg/apache/xalan/transformer/KeyIterator;
    new-instance v1, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v1, v0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    .line 104
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->allowDetachToRelease(Z)V

    .line 105
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1, p1, p5}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method private addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    .registers 6
    .parameter "xctxt"
    .parameter "ref"
    .parameter "node"

    .prologue
    .line 241
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    .line 242
    .local v0, nodes:Lorg/apache/xpath/objects/XNodeSet;
    if-nez v0, :cond_1c

    .line 244
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    .end local v0           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 245
    .restart local v0       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    .line 246
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1b
    :goto_1b
    return-void

    .line 254
    :cond_1c
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getCurrentNode()I

    move-result v1

    if-eq v1, p3, :cond_1b

    .line 255
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    goto :goto_1b
.end method

.method private getKeyDeclarations()Ljava/util/Vector;
    .registers 7

    .prologue
    .line 161
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 162
    .local v3, nDeclarations:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 165
    .local v2, keyDecls:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_2a

    .line 167
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 171
    .local v1, kd:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 172
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 176
    .end local v1           #kd:Lorg/apache/xalan/templates/KeyDeclaration;
    :cond_2a
    return-object v2
.end method

.method private getRefsTable()Ljava/util/Hashtable;
    .registers 16

    .prologue
    .line 185
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    if-nez v13, :cond_76

    .line 187
    new-instance v13, Ljava/util/Hashtable;

    const/16 v14, 0x59

    invoke-direct {v13, v14}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    .line 189
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/KeyIterator;

    .line 190
    .local v8, ki:Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    .line 192
    .local v11, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v7

    .line 193
    .local v7, keyDecls:Ljava/util/Vector;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    .line 196
    .local v9, nKeyDecls:I
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    .line 197
    :cond_26
    const/4 v13, -0x1

    iget-object v14, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v14}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    .local v0, currentNode:I
    if-eq v13, v0, :cond_76

    .line 201
    const/4 v5, 0x0

    .local v5, keyDeclIdx:I
    :goto_30
    if-ge v5, v9, :cond_26

    .line 202
    :try_start_32
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 204
    .local v6, keyDeclaration:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v6}, Lorg/apache/xalan/templates/KeyDeclaration;->getUse()Lorg/apache/xpath/XPath;

    move-result-object v13

    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v14

    invoke-virtual {v13, v11, v0, v14}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    .line 209
    .local v12, xuse:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_55

    .line 210
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    .line 211
    .local v3, exprResult:Lorg/apache/xml/utils/XMLString;
    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V

    .line 201
    .end local v3           #exprResult:Lorg/apache/xml/utils/XMLString;
    .end local v12           #xuse:Lorg/apache/xpath/objects/XObject;
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 213
    .restart local v12       #xuse:Lorg/apache/xpath/objects/XObject;
    :cond_55
    check-cast v12, Lorg/apache/xpath/objects/XNodeSet;

    .end local v12           #xuse:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4

    .line 216
    .local v4, i:Lorg/apache/xml/dtm/DTMIterator;
    :goto_5b
    const/4 v13, -0x1

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    .local v1, currentNodeInUseClause:I
    if-eq v13, v1, :cond_52

    .line 217
    invoke-virtual {v11, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 218
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    .line 220
    .restart local v3       #exprResult:Lorg/apache/xml/utils/XMLString;
    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    :try_end_6d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_32 .. :try_end_6d} :catch_6e

    goto :goto_5b

    .line 224
    .end local v1           #currentNodeInUseClause:I
    .end local v2           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v3           #exprResult:Lorg/apache/xml/utils/XMLString;
    .end local v4           #i:Lorg/apache/xml/dtm/DTMIterator;
    .end local v6           #keyDeclaration:Lorg/apache/xalan/templates/KeyDeclaration;
    :catch_6e
    move-exception v13

    move-object v10, v13

    .line 225
    .local v10, te:Ljavax/xml/transform/TransformerException;
    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v13, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 229
    .end local v0           #currentNode:I
    .end local v5           #keyDeclIdx:I
    .end local v7           #keyDecls:Ljava/util/Vector;
    .end local v8           #ki:Lorg/apache/xalan/transformer/KeyIterator;
    .end local v9           #nKeyDecls:I
    .end local v10           #te:Ljavax/xml/transform/TransformerException;
    .end local v11           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_76
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    return-object v13
.end method


# virtual methods
.method public getDocKey()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    return v0
.end method

.method getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/transformer/KeyIterator;

    check-cast p0, Lorg/apache/xalan/transformer/KeyIterator;

    return-object p0
.end method

.method public getKeyTableName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 8
    .parameter "name"
    .parameter "ref"

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getRefsTable()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    .line 122
    .local v2, refNodes:Lorg/apache/xpath/objects/XNodeSet;
    if-eqz v2, :cond_12

    .line 124
    :try_start_c
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .end local v2           #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_c .. :try_end_12} :catch_2d

    .line 132
    .restart local v2       #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    :cond_12
    :goto_12
    if-nez v2, :cond_2c

    .line 134
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/transformer/KeyIterator;

    .line 135
    .local v1, ki:Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    .line 136
    .local v3, xctxt:Lorg/apache/xpath/XPathContext;
    new-instance v2, Lorg/apache/xalan/transformer/KeyTable$1;

    .end local v2           #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lorg/apache/xalan/transformer/KeyTable$1;-><init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V

    .line 141
    .restart local v2       #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    .line 144
    .end local v1           #ki:Lorg/apache/xalan/transformer/KeyIterator;
    .end local v3           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_2c
    return-object v2

    .line 127
    .end local v2           #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    :catch_2d
    move-exception v4

    move-object v0, v4

    .line 129
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    .restart local v2       #refNodes:Lorg/apache/xpath/objects/XNodeSet;
    goto :goto_12
.end method
