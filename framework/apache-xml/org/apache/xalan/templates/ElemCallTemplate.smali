.class public Lorg/apache/xalan/templates/ElemCallTemplate;
.super Lorg/apache/xalan/templates/ElemForEach;
.source "ElemCallTemplate.java"


# static fields
.field static final serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field public m_templateName:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemForEach;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    .line 84
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 269
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5
    .parameter "newChild"

    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 335
    .local v1, type:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_e

    .line 337
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemWithParam;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemCallTemplate;->setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V

    .line 342
    :cond_e
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    return-object v2
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 3
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemForEach;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 363
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 14
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v6

    .line 120
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    if-ge v5, v6, :cond_14

    .line 122
    invoke-virtual {p0, v5}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v4

    .line 123
    .local v4, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v4, p1}, Lorg/apache/xalan/templates/ElemWithParam;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 126
    .end local v4           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_14
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    if-eqz v8, :cond_7d

    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v8, :cond_7d

    .line 127
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 130
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v8, :cond_40

    .line 131
    const-string v8, "ER_ELEMTEMPLATEELEM_ERR"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, themsg:Ljava/lang/String;
    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v7, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v8

    .line 140
    .end local v7           #themsg:Ljava/lang/String;
    :cond_40
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v6

    .line 141
    const/4 v5, 0x0

    :goto_45
    if-ge v5, v6, :cond_7d

    .line 143
    invoke-virtual {p0, v5}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v4

    .line 144
    .restart local v4       #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    const/4 v8, -0x1

    iput v8, v4, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, etePos:I
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    .line 149
    .local v2, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_55
    if-eqz v2, :cond_7a

    .line 151
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_7a

    .line 153
    move-object v0, v2

    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    move-object v1, v0

    .line 154
    .local v1, ep:Lorg/apache/xalan/templates/ElemParam;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemWithParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 156
    iput v3, v4, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    .line 161
    :cond_73
    add-int/lit8 v3, v3, 0x1

    .line 149
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    goto :goto_55

    .line 141
    .end local v1           #ep:Lorg/apache/xalan/templates/ElemParam;
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 166
    .end local v2           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v3           #etePos:I
    .end local v4           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_7d
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v2

    .line 174
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 176
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v0

    .line 177
    .local v0, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemWithParam;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 180
    .end local v0           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 181
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 21
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    if-eqz v14, :cond_9e

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v13

    .line 199
    .local v13, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v12

    .line 201
    .local v12, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v12}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v11

    .line 202
    .local v11, thisframe:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    iget v14, v14, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v12, v14}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v7

    .line 206
    .local v7, nextFrame:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    iget v14, v14, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v14, :cond_67

    .line 208
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v15, v0

    iget v15, v15, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    invoke-virtual {v12, v14, v15}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    move-object v14, v0

    if-eqz v14, :cond_67

    .line 212
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    .line 213
    .local v4, currentNode:I
    invoke-virtual {v12, v11}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    move-object v14, v0

    array-length v10, v14

    .line 216
    .local v10, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_47
    if-ge v6, v10, :cond_64

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    move-object v14, v0

    aget-object v5, v14, v6

    .line 219
    .local v5, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    iget v14, v5, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    if-ltz v14, :cond_61

    .line 221
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v8

    .line 226
    .local v8, obj:Lorg/apache/xpath/objects/XObject;
    iget v14, v5, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    invoke-virtual {v12, v14, v8, v7}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    .line 216
    .end local v8           #obj:Lorg/apache/xpath/objects/XObject;
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 229
    .end local v5           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_64
    invoke-virtual {v12, v7}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 233
    .end local v4           #currentNode:I
    .end local v6           #i:I
    .end local v10           #size:I
    :cond_67
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v9

    .line 237
    .local v9, savedLocator:Ljavax/xml/transform/SourceLocator;
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplate;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_93

    .line 245
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v13, v9}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v12, v11}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 265
    .end local v7           #nextFrame:I
    .end local v9           #savedLocator:Ljavax/xml/transform/SourceLocator;
    .end local v11           #thisframe:I
    .end local v12           #vars:Lorg/apache/xpath/VariableStack;
    .end local v13           #xctxt:Lorg/apache/xpath/XPathContext;
    :goto_92
    return-void

    .line 245
    .restart local v7       #nextFrame:I
    .restart local v9       #savedLocator:Ljavax/xml/transform/SourceLocator;
    .restart local v11       #thisframe:I
    .restart local v12       #vars:Lorg/apache/xpath/VariableStack;
    .restart local v13       #xctxt:Lorg/apache/xpath/XPathContext;
    :catchall_93
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v13, v9}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v12, v11}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    throw v14

    .line 261
    .end local v7           #nextFrame:I
    .end local v9           #savedLocator:Ljavax/xml/transform/SourceLocator;
    .end local v11           #thisframe:I
    .end local v12           #vars:Lorg/apache/xpath/VariableStack;
    .end local v13           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_9e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v14

    const-string v15, "ER_TEMPLATE_NOT_FOUND"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_92
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "call-template"

    return-object v0
.end method

.method public getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;
    .registers 3
    .parameter "i"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParamElemCount()I
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v0, v0

    goto :goto_5
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 94
    const/16 v0, 0x11

    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    .line 66
    return-void
.end method

.method public setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V
    .registers 6
    .parameter "ParamElem"

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v2, :cond_f

    .line 301
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 302
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aput-object p1, v2, v3

    .line 314
    :goto_e
    return-void

    .line 308
    :cond_f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v1, v2

    .line 309
    .local v1, length:I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    .line 310
    .local v0, ewp:[Lorg/apache/xalan/templates/ElemWithParam;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 312
    aput-object p1, v0, v1

    goto :goto_e
.end method
