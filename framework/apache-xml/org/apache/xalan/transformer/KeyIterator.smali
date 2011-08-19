.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .registers 4
    .parameter "name"
    .parameter "keyDeclarations"

    .prologue
    .line 83
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 84
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    .line 86
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    .line 87
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .registers 21
    .parameter "testNode"

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, foundKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/KeyIterator;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    move-object v7, v0

    check-cast v7, Lorg/apache/xalan/transformer/KeyIterator;

    .line 104
    .local v7, ki:Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v7}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v13

    .line 105
    .local v13, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v6

    .line 107
    .local v6, keys:Ljava/util/Vector;
    invoke-virtual {v7}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    .line 111
    .local v10, name:Lorg/apache/xml/utils/QName;
    :try_start_14
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v9

    .line 114
    .local v9, nDeclarations:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    if-ge v4, v9, :cond_47

    .line 116
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 120
    .local v5, kd:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2e

    .line 114
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 123
    :cond_2e
    const/4 v3, 0x1

    .line 128
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v8

    .line 129
    .local v8, matchExpr:Lorg/apache/xpath/XPath;
    move-object v0, v8

    move-object v1, v13

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v11

    .line 131
    .local v11, score:D
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;
    :try_end_3e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_3e} :catch_46

    const-wide/high16 v14, -0x10

    cmpl-double v14, v11, v14

    if-eqz v14, :cond_2b

    .line 134
    const/4 v14, 0x1

    .line 150
    .end local v4           #i:I
    .end local v5           #kd:Lorg/apache/xalan/templates/KeyDeclaration;
    .end local v8           #matchExpr:Lorg/apache/xpath/XPath;
    .end local v9           #nDeclarations:I
    .end local v11           #score:D
    :goto_45
    return v14

    .line 138
    :catch_46
    move-exception v14

    .line 144
    :cond_47
    if-nez v3, :cond_65

    .line 145
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "ER_NO_XSLKEY_DECLARATION"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v10}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 150
    :cond_65
    const/4 v14, 0x2

    goto :goto_45
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method
