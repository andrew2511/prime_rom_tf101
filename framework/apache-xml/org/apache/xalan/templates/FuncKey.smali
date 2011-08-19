.class public Lorg/apache/xalan/templates/FuncKey;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncKey.java"


# static fields
.field private static ISTRUE:Ljava/lang/Boolean; = null

.field static final serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 26
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 61
    .local v20, transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    const/16 v17, 0x0

    .line 62
    .local v17, nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v11

    .line 63
    .local v11, context:I
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v13

    .line 64
    .local v13, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v13, v11}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v5

    .line 66
    .local v5, docContext:I
    const/4 v4, -0x1

    if-ne v4, v5, :cond_1a

    .line 72
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v23

    .line 73
    .local v23, xkeyname:Ljava/lang/String;
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v4

    move-object v0, v6

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 74
    .local v6, keyname:Lorg/apache/xml/utils/QName;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    .line 75
    .local v9, arg:Lorg/apache/xpath/objects/XObject;
    const/4 v4, 0x4

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v7

    if-ne v4, v7, :cond_ca

    const/4 v4, 0x1

    move v10, v4

    .line 76
    .local v10, argIsNodeSetDTM:Z
    :goto_4a
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xalan/transformer/TransformerImpl;->getKeyManager()Lorg/apache/xalan/transformer/KeyManager;

    move-result-object v3

    .line 79
    .local v3, kmgr:Lorg/apache/xalan/transformer/KeyManager;
    if-eqz v10, :cond_64

    .line 81
    move-object v0, v9

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object/from16 v18, v0

    .line 82
    .local v18, ns:Lorg/apache/xpath/objects/XNodeSet;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 83
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    move-result v14

    .line 84
    .local v14, len:I
    const/4 v4, 0x1

    if-gt v14, v4, :cond_64

    .line 85
    const/4 v10, 0x0

    .line 88
    .end local v14           #len:I
    .end local v18           #ns:Lorg/apache/xpath/objects/XNodeSet;
    :cond_64
    if-eqz v10, :cond_e4

    .line 90
    const/16 v22, 0x0

    .line 91
    .local v22, usedrefs:Ljava/util/Hashtable;
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v15

    .line 93
    .local v15, ni:Lorg/apache/xml/dtm/DTMIterator;
    new-instance v21, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct/range {v21 .. v21}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>()V

    .line 94
    .local v21, upi:Lorg/apache/xpath/axes/UnionPathIterator;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 96
    :cond_78
    :goto_78
    const/4 v4, -0x1

    invoke-interface {v15}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v19

    .local v19, pos:I
    move v0, v4

    move/from16 v1, v19

    if-eq v0, v1, :cond_ce

    .line 98
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v13

    .line 99
    move-object v0, v13

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 101
    .local v7, ref:Lorg/apache/xml/utils/XMLString;
    if-eqz v7, :cond_78

    .line 104
    if-nez v22, :cond_9a

    .line 105
    new-instance v22, Ljava/util/Hashtable;

    .end local v22           #usedrefs:Ljava/util/Hashtable;
    invoke-direct/range {v22 .. v22}, Ljava/util/Hashtable;-><init>()V

    .line 107
    .restart local v22       #usedrefs:Ljava/util/Hashtable;
    :cond_9a
    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_78

    .line 115
    sget-object v4, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v16

    .line 122
    .local v16, nl:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    .line 126
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->addIterator(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_78

    .line 75
    .end local v3           #kmgr:Lorg/apache/xalan/transformer/KeyManager;
    .end local v7           #ref:Lorg/apache/xml/utils/XMLString;
    .end local v10           #argIsNodeSetDTM:Z
    .end local v15           #ni:Lorg/apache/xml/dtm/DTMIterator;
    .end local v16           #nl:Lorg/apache/xpath/objects/XNodeSet;
    .end local v19           #pos:I
    .end local v21           #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .end local v22           #usedrefs:Ljava/util/Hashtable;
    :cond_ca
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_4a

    .line 135
    .restart local v3       #kmgr:Lorg/apache/xalan/transformer/KeyManager;
    .restart local v10       #argIsNodeSetDTM:Z
    .restart local v15       #ni:Lorg/apache/xml/dtm/DTMIterator;
    .restart local v19       #pos:I
    .restart local v21       #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .restart local v22       #usedrefs:Ljava/util/Hashtable;
    :cond_ce
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v12

    .line 136
    .local v12, current:I
    move-object/from16 v0, v21

    move v1, v12

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 138
    new-instance v17, Lorg/apache/xpath/objects/XNodeSet;

    .end local v17           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 149
    .end local v12           #current:I
    .end local v15           #ni:Lorg/apache/xml/dtm/DTMIterator;
    .end local v19           #pos:I
    .end local v21           #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .end local v22           #usedrefs:Ljava/util/Hashtable;
    .restart local v17       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    :goto_e3
    return-object v17

    .line 142
    :cond_e4
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 143
    .restart local v7       #ref:Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v17

    .line 146
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    goto :goto_e3
.end method
