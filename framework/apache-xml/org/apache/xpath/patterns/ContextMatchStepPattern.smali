.class public Lorg/apache/xpath/patterns/ContextMatchStepPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "ContextMatchStepPattern.java"


# static fields
.field static final serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "axis"
    .parameter "paxis"

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    .line 44
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 65
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v0

    .line 67
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_e
.end method

.method public executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/objects/XObject;
    .registers 23
    .parameter "xctxt"
    .parameter "prevStep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v14, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 91
    .local v14, score:Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v7

    .line 92
    .local v7, context:I
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    .line 94
    .local v8, dtm:Lorg/apache/xml/dtm/DTM;
    if-eqz v8, :cond_e9

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v12

    .line 99
    .local v12, predContext:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->m_axis:I

    move v6, v0

    .line 101
    .local v6, axis:I
    invoke-static {v6}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v11

    .line 102
    .local v11, needToTraverseAttrs:Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_72

    const/16 v18, 0x1

    move/from16 v10, v18

    .line 105
    .local v10, iterRootIsAttr:Z
    :goto_33
    const/16 v18, 0xb

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_3e

    if-eqz v10, :cond_3e

    .line 107
    const/16 v6, 0xf

    .line 110
    :cond_3e
    invoke-interface {v8, v6}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v16

    .line 112
    .local v16, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v13

    .local v13, relative:I
    :goto_49
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v13

    if-eq v0, v1, :cond_e9

    .line 117
    :try_start_50
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 119
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v14

    .line 121
    sget-object v18, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object v0, v14

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_79

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_d2

    move-result v18

    if-eqz v18, :cond_77

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v15, v14

    .line 176
    .end local v6           #axis:I
    .end local v10           #iterRootIsAttr:Z
    .end local v11           #needToTraverseAttrs:Z
    .end local v12           #predContext:I
    .end local v13           #relative:I
    .end local v14           #score:Lorg/apache/xpath/objects/XObject;
    .end local v16           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .local v15, score:Lorg/apache/xpath/objects/XObject;
    :goto_71
    return-object v15

    .line 102
    .end local v15           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v6       #axis:I
    .restart local v11       #needToTraverseAttrs:Z
    .restart local v12       #predContext:I
    .restart local v14       #score:Lorg/apache/xpath/objects/XObject;
    :cond_72
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_33

    .line 128
    .restart local v10       #iterRootIsAttr:Z
    .restart local v13       #relative:I
    .restart local v16       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_77
    :try_start_77
    sget-object v14, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 131
    :cond_79
    if-eqz v11, :cond_dc

    if-eqz v10, :cond_dc

    const/16 v18, 0x1

    invoke-interface {v8, v13}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_dc

    .line 134
    const/16 v17, 0x2

    .line 135
    .local v17, xaxis:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_8c
    const/16 v18, 0x2

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_dc

    .line 137
    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    .line 139
    .local v5, atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v5, v13}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_9d
    .catchall {:try_start_77 .. :try_end_9d} :catchall_d2

    move-result v4

    .line 140
    .local v4, arelative:I
    :goto_9e
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v4

    if-eq v0, v1, :cond_d7

    .line 145
    :try_start_a5
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 147
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v14

    .line 149
    sget-object v18, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object v0, v14

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c5

    .line 154
    sget-object v18, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_b8
    .catchall {:try_start_a5 .. :try_end_b8} :catchall_cd

    move-object v0, v14

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c5

    .line 160
    :try_start_bd
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d2

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v15, v14

    .end local v14           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v15       #score:Lorg/apache/xpath/objects/XObject;
    goto :goto_71

    .line 160
    .end local v15           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v14       #score:Lorg/apache/xpath/objects/XObject;
    :cond_c5
    :try_start_c5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 141
    invoke-virtual {v5, v13, v4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v4

    goto :goto_9e

    .line 160
    :catchall_cd
    move-exception v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v18
    :try_end_d2
    .catchall {:try_start_c5 .. :try_end_d2} :catchall_d2

    .line 170
    .end local v4           #arelative:I
    .end local v5           #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v9           #i:I
    .end local v17           #xaxis:I
    :catchall_d2
    move-exception v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v18

    .line 163
    .restart local v4       #arelative:I
    .restart local v5       #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .restart local v9       #i:I
    .restart local v17       #xaxis:I
    :cond_d7
    const/16 v17, 0x9

    .line 135
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 170
    .end local v4           #arelative:I
    .end local v5           #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v9           #i:I
    .end local v17           #xaxis:I
    :cond_dc
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 113
    move-object/from16 v0, v16

    move v1, v7

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v13

    goto/16 :goto_49

    .end local v6           #axis:I
    .end local v10           #iterRootIsAttr:Z
    .end local v11           #needToTraverseAttrs:Z
    .end local v12           #predContext:I
    .end local v13           #relative:I
    .end local v16           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_e9
    move-object v15, v14

    .line 176
    .end local v14           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v15       #score:Lorg/apache/xpath/objects/XObject;
    goto :goto_71
.end method
