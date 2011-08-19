.class public Lorg/apache/xpath/functions/FuncId;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncId.java"


# static fields
.field static final serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method

.method private getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;
    .registers 13
    .parameter "xctxt"
    .parameter "docContext"
    .parameter "refval"
    .parameter "usedrefs"
    .parameter "nodeSet"
    .parameter "mayBeMore"

    .prologue
    .line 60
    if-eqz p3, :cond_3f

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, ref:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    .line 66
    .local v1, hasMore:Z
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 68
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    :cond_10
    :goto_10
    if-eqz v1, :cond_3f

    .line 70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    .line 73
    if-eqz p4, :cond_24

    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 75
    const/4 v3, 0x0

    .line 77
    goto :goto_10

    .line 80
    :cond_24
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, node:I
    const/4 v5, -0x1

    if-eq v5, v2, :cond_2e

    .line 83
    invoke-virtual {p5, v2, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    .line 85
    :cond_2e
    if-eqz v3, :cond_10

    if-nez v1, :cond_34

    if-eqz p6, :cond_10

    .line 87
    :cond_34
    if-nez p4, :cond_3b

    .line 88
    new-instance p4, Lorg/apache/xml/utils/StringVector;

    .end local p4
    invoke-direct {p4}, Lorg/apache/xml/utils/StringVector;-><init>()V

    .line 90
    .restart local p4
    :cond_3b
    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    goto :goto_10

    .line 95
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v1           #hasMore:Z
    .end local v2           #node:I
    .end local v3           #ref:Ljava/lang/String;
    .end local v4           #tokenizer:Ljava/util/StringTokenizer;
    :cond_3f
    return-object p4
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 27
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v19

    .line 110
    .local v19, context:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v20

    .line 111
    .local v20, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v6

    .line 113
    .local v6, docContext:I
    const/4 v4, -0x1

    if-ne v4, v6, :cond_1f

    .line 114
    const-string v4, "ER_CONTEXT_HAS_NO_OWNERDOC"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/functions/FuncId;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/functions/FuncId;->m_arg0:Lorg/apache/xpath/Expression;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    .line 117
    .local v17, arg:Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v18

    .line 118
    .local v18, argType:I
    new-instance v23, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 119
    .local v23, nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v9

    .line 121
    .local v9, nodeSet:Lorg/apache/xpath/NodeSetDTM;
    const/4 v4, 0x4

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_80

    .line 123
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v22

    .line 124
    .local v22, ni:Lorg/apache/xml/dtm/DTMIterator;
    const/4 v8, 0x0

    .line 125
    .local v8, usedrefs:Lorg/apache/xml/utils/StringVector;
    invoke-interface/range {v22 .. v22}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v24

    .line 127
    .local v24, pos:I
    :goto_4e
    const/4 v4, -0x1

    move v0, v4

    move/from16 v1, v24

    if-eq v0, v1, :cond_86

    .line 129
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v21

    .line 130
    .local v21, ndtm:Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, refval:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v24

    .line 133
    const/4 v4, -0x1

    move v0, v4

    move/from16 v1, v24

    if-eq v0, v1, :cond_7d

    const/4 v4, 0x1

    move v10, v4

    :goto_74
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    move-result-object v8

    .line 135
    goto :goto_4e

    .line 133
    :cond_7d
    const/4 v4, 0x0

    move v10, v4

    goto :goto_74

    .line 138
    .end local v7           #refval:Ljava/lang/String;
    .end local v8           #usedrefs:Lorg/apache/xml/utils/StringVector;
    .end local v21           #ndtm:Lorg/apache/xml/dtm/DTM;
    .end local v22           #ni:Lorg/apache/xml/dtm/DTMIterator;
    .end local v24           #pos:I
    :cond_80
    const/4 v4, -0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_87

    .line 149
    :cond_86
    :goto_86
    return-object v23

    .line 144
    :cond_87
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7       #refval:Ljava/lang/String;
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v6

    move-object v13, v7

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    goto :goto_86
.end method
