.class public Lorg/apache/xalan/templates/ElemApplyTemplates;
.super Lorg/apache/xalan/templates/ElemCallTemplate;
.source "ElemApplyTemplates.java"


# static fields
.field static final serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private m_isDefaultTemplate:Z

.field private m_mode:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemCallTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 129
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    .line 154
    const/4 v1, 0x0

    .line 162
    .local v1, pushMode:Z
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v0

    .line 164
    .local v0, mode:Lorg/apache/xml/utils/QName;
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    if-nez v2, :cond_23

    .line 166
    if-nez v0, :cond_13

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    if-nez v2, :cond_1d

    :cond_13
    if-eqz v0, :cond_23

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 169
    :cond_1d
    const/4 v1, 0x1

    .line 171
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    .line 175
    :cond_23
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2f

    .line 179
    if-eqz v1, :cond_2b

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_2b
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    .line 184
    return-void

    .line 179
    .end local v0           #mode:Lorg/apache/xml/utils/QName;
    :catchall_2f
    move-exception v2

    if-eqz v1, :cond_35

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_35
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v2
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    const-string v0, "apply-templates"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 117
    const/16 v0, 0x32

    return v0
.end method

.method public setIsDefaultTemplate(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    .line 107
    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    .line 69
    return-void
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 37
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v5

    .line 200
    .local v5, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v28

    .line 201
    .local v28, sourceNode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_selectExpression:Lorg/apache/xpath/Expression;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v5

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v29

    .line 202
    .local v29, sourceNodes:Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v34

    .line 203
    .local v34, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;->getParamElemCount()I

    move-result v21

    .line 204
    .local v21, nParams:I
    invoke-virtual/range {v34 .. v34}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v33

    .line 206
    .local v33, thisframe:I
    const/16 v25, 0x0

    .line 211
    .local v25, pushContextNodeListFlag:Z
    const/4 v9, -0x1

    :try_start_24
    invoke-virtual {v5, v9}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 212
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 213
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 214
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_sortElems:Ljava/util/Vector;

    move-object v9, v0

    if-nez v9, :cond_9b

    const/4 v9, 0x0

    move-object/from16 v20, v9

    .line 220
    .local v20, keys:Ljava/util/Vector;
    :goto_3f
    if-eqz v20, :cond_4c

    .line 221
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemApplyTemplates;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v29

    .line 223
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v26

    .line 225
    .local v26, rth:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v30

    .line 226
    .local v30, sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;

    move-result-object v4

    .line 227
    .local v4, tl:Lorg/apache/xalan/templates/TemplateList;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    move-result v10

    .line 230
    .local v10, quiet:Z
    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v11

    .line 232
    .local v11, dtm:Lorg/apache/xml/dtm/DTM;
    const/4 v12, -0x1

    .line 233
    .local v12, argsFrame:I
    if-lez v21, :cond_ae

    .line 238
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v12

    .line 239
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 241
    const/16 v19, 0x0

    .local v19, i:I
    :goto_77
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_a8

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    move-object v9, v0

    aget-object v18, v9, v19

    .line 244
    .local v18, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v23

    .line 246
    .local v23, obj:Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v34

    move/from16 v1, v19

    move-object/from16 v2, v23

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    .line 241
    add-int/lit8 v19, v19, 0x1

    goto :goto_77

    .line 215
    .end local v4           #tl:Lorg/apache/xalan/templates/TemplateList;
    .end local v10           #quiet:Z
    .end local v11           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v12           #argsFrame:I
    .end local v18           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    .end local v19           #i:I
    .end local v20           #keys:Ljava/util/Vector;
    .end local v23           #obj:Lorg/apache/xpath/objects/XObject;
    .end local v26           #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v30           #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_9b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v9

    move-object/from16 v20, v9

    goto :goto_3f

    .line 248
    .restart local v4       #tl:Lorg/apache/xalan/templates/TemplateList;
    .restart local v10       #quiet:Z
    .restart local v11       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v12       #argsFrame:I
    .restart local v19       #i:I
    .restart local v20       #keys:Ljava/util/Vector;
    .restart local v26       #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v30       #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_a8
    move-object/from16 v0, v34

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 251
    .end local v19           #i:I
    :cond_ae
    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 252
    const/16 v25, 0x1

    .line 254
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v15

    .line 256
    .local v15, currentNodes:Lorg/apache/xml/utils/IntStack;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v13

    .line 261
    .local v13, currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    :goto_be
    const/4 v9, -0x1

    invoke-interface/range {v29 .. v29}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v6

    .local v6, child:I
    if-eq v9, v6, :cond_23e

    .line 263
    invoke-virtual {v15, v6}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 264
    invoke-virtual {v13, v6}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 266
    invoke-virtual {v5, v6}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v9

    if-eq v9, v11, :cond_d5

    .line 268
    invoke-virtual {v5, v6}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v11

    .line 271
    :cond_d5
    invoke-interface {v11, v6}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v7

    .line 273
    .local v7, exNodeType:I
    invoke-interface {v11, v6}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v22

    .line 275
    .local v22, nodeType:I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v8

    .line 277
    .local v8, mode:Lorg/apache/xml/utils/QName;
    const/4 v9, -0x1

    invoke-virtual/range {v4 .. v11}, Lorg/apache/xalan/templates/TemplateList;->getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v32

    .line 282
    .local v32, template:Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v32, :cond_1d1

    .line 284
    packed-switch v22, :pswitch_data_25e

    :pswitch_eb
    goto :goto_be

    .line 288
    :pswitch_ec
    invoke-virtual/range {v30 .. v30}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v32

    .line 316
    :goto_f0
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 319
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move v9, v0

    if-lez v9, :cond_1fd

    .line 321
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    .line 322
    invoke-virtual/range {v34 .. v34}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v14

    .line 323
    .local v14, currentFrameBottom:I
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move v9, v0

    move-object/from16 v0, v34

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 326
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    move v9, v0

    if-lez v9, :cond_1fe

    .line 328
    const/16 v24, 0x0

    .line 329
    .local v24, paramIndex:I
    invoke-virtual/range {v32 .. v32}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    .line 330
    .local v16, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_11e
    if-eqz v16, :cond_1fe

    .line 332
    const/16 v9, 0x29

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v17

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_1fe

    .line 334
    move-object/from16 v0, v16

    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    move-object/from16 v17, v0

    .line 337
    .local v17, ep:Lorg/apache/xalan/templates/ElemParam;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_133
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_162

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    move-object v9, v0

    aget-object v18, v9, v19

    .line 340
    .restart local v18       #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    move v9, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    move/from16 v18, v0

    .end local v18           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f9

    .line 342
    move-object/from16 v0, v34

    move/from16 v1, v19

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(II)Lorg/apache/xpath/objects/XObject;

    move-result-object v23

    .line 343
    .restart local v23       #obj:Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v34

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 347
    .end local v23           #obj:Lorg/apache/xpath/objects/XObject;
    :cond_162
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_171

    .line 348
    const/4 v9, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v24

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 352
    :cond_171
    add-int/lit8 v24, v24, 0x1

    .line 330
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    goto :goto_11e

    .line 296
    .end local v14           #currentFrameBottom:I
    .end local v16           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17           #ep:Lorg/apache/xalan/templates/ElemParam;
    .end local v19           #i:I
    .end local v24           #paramIndex:I
    :pswitch_178
    invoke-virtual/range {v30 .. v30}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 297
    invoke-virtual/range {v30 .. v30}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 299
    const/4 v9, 0x0

    move-object v0, v11

    move v1, v6

    move-object/from16 v2, v26

    move v3, v9

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_199
    .catchall {:try_start_24 .. :try_end_199} :catchall_1da
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_199} :catch_19b

    goto/16 :goto_be

    .line 403
    .end local v4           #tl:Lorg/apache/xalan/templates/TemplateList;
    .end local v6           #child:I
    .end local v7           #exNodeType:I
    .end local v8           #mode:Lorg/apache/xml/utils/QName;
    .end local v10           #quiet:Z
    .end local v11           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v12           #argsFrame:I
    .end local v13           #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .end local v15           #currentNodes:Lorg/apache/xml/utils/IntStack;
    .end local v20           #keys:Ljava/util/Vector;
    .end local v22           #nodeType:I
    .end local v26           #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v30           #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v32           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :catch_19b
    move-exception v9

    move-object/from16 v27, v9

    .line 405
    .local v27, se:Lorg/xml/sax/SAXException;
    :try_start_19e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    new-instance v10, Ljavax/xml/transform/TransformerException;

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v10}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1ad
    .catchall {:try_start_19e .. :try_end_1ad} :catchall_1da

    .line 410
    if-lez v21, :cond_1b6

    .line 411
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_1b6
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v25, :cond_1be

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_1be
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v29 .. v29}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 419
    .end local v27           #se:Lorg/xml/sax/SAXException;
    :goto_1ca
    return-void

    .line 303
    .restart local v4       #tl:Lorg/apache/xalan/templates/TemplateList;
    .restart local v6       #child:I
    .restart local v7       #exNodeType:I
    .restart local v8       #mode:Lorg/apache/xml/utils/QName;
    .restart local v10       #quiet:Z
    .restart local v11       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v12       #argsFrame:I
    .restart local v13       #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v15       #currentNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v20       #keys:Ljava/util/Vector;
    .restart local v22       #nodeType:I
    .restart local v26       #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v30       #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v32       #template:Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_1cb
    :try_start_1cb
    invoke-virtual/range {v30 .. v30}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v32

    .line 304
    goto/16 :goto_f0

    .line 313
    :cond_1d1
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_1d8
    .catchall {:try_start_1cb .. :try_end_1d8} :catchall_1da
    .catch Lorg/xml/sax/SAXException; {:try_start_1cb .. :try_end_1d8} :catch_19b

    goto/16 :goto_f0

    .line 410
    .end local v4           #tl:Lorg/apache/xalan/templates/TemplateList;
    .end local v6           #child:I
    .end local v7           #exNodeType:I
    .end local v8           #mode:Lorg/apache/xml/utils/QName;
    .end local v10           #quiet:Z
    .end local v11           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v12           #argsFrame:I
    .end local v13           #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .end local v15           #currentNodes:Lorg/apache/xml/utils/IntStack;
    .end local v20           #keys:Ljava/util/Vector;
    .end local v22           #nodeType:I
    .end local v26           #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v30           #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v32           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_1da
    move-exception v9

    if-lez v21, :cond_1e4

    .line 411
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_1e4
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v25, :cond_1ec

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_1ec
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v29 .. v29}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    throw v9

    .line 337
    .restart local v4       #tl:Lorg/apache/xalan/templates/TemplateList;
    .restart local v6       #child:I
    .restart local v7       #exNodeType:I
    .restart local v8       #mode:Lorg/apache/xml/utils/QName;
    .restart local v10       #quiet:Z
    .restart local v11       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v12       #argsFrame:I
    .restart local v13       #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v14       #currentFrameBottom:I
    .restart local v15       #currentNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v16       #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v17       #ep:Lorg/apache/xalan/templates/ElemParam;
    .restart local v19       #i:I
    .restart local v20       #keys:Ljava/util/Vector;
    .restart local v22       #nodeType:I
    .restart local v24       #paramIndex:I
    .restart local v26       #rth:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v30       #sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v32       #template:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_1f9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_133

    .line 358
    .end local v14           #currentFrameBottom:I
    .end local v16           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17           #ep:Lorg/apache/xalan/templates/ElemParam;
    .end local v19           #i:I
    .end local v24           #paramIndex:I
    :cond_1fd
    const/4 v14, 0x0

    .line 363
    .restart local v14       #currentFrameBottom:I
    :cond_1fe
    :try_start_1fe
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v31, v0

    .line 364
    .local v31, t:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_204
    if-eqz v31, :cond_229

    .line 366
    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_20c
    .catchall {:try_start_1fe .. :try_end_20c} :catchall_1da
    .catch Lorg/xml/sax/SAXException; {:try_start_1fe .. :try_end_20c} :catch_19b

    .line 369
    :try_start_20c
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 370
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_224

    .line 374
    :try_start_21a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 364
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v31, v0

    goto :goto_204

    .line 374
    :catchall_224
    move-exception v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v9

    .line 378
    :cond_229
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move v9, v0

    if-lez v9, :cond_239

    .line 395
    move-object/from16 v0, v34

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 396
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    .line 399
    :cond_239
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_23c
    .catchall {:try_start_21a .. :try_end_23c} :catchall_1da
    .catch Lorg/xml/sax/SAXException; {:try_start_21a .. :try_end_23c} :catch_19b

    goto/16 :goto_be

    .line 410
    .end local v7           #exNodeType:I
    .end local v8           #mode:Lorg/apache/xml/utils/QName;
    .end local v14           #currentFrameBottom:I
    .end local v22           #nodeType:I
    .end local v31           #t:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v32           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_23e
    if-lez v21, :cond_247

    .line 411
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_247
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v25, :cond_24f

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_24f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v29 .. v29}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    goto/16 :goto_1ca

    .line 284
    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_178
        :pswitch_178
        :pswitch_178
        :pswitch_eb
        :pswitch_eb
        :pswitch_eb
        :pswitch_eb
        :pswitch_1cb
        :pswitch_eb
        :pswitch_ec
    .end packed-switch
.end method
