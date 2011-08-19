.class public Lorg/apache/xalan/templates/ElemCopyOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemCopyOf.java"


# static fields
.field static final serialVersionUID:J = -0x672a43ef2f404637L


# instance fields
.field public m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "newChild"

    .prologue
    .line 220
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCopyOf;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemCopyOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 234
    if-eqz p2, :cond_d

    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 236
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 237
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 88
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 89
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 90
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 22
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v16

    .line 130
    .local v16, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v11

    .line 131
    .local v11, sourceNode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move v2, v11

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 133
    .local v15, value:Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v6

    .line 135
    .local v6, handler:Lorg/apache/xml/serializer/SerializationHandler;
    if-eqz v15, :cond_3e

    .line 137
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v14

    .line 140
    .local v14, type:I
    packed-switch v14, :pswitch_data_c2

    .line 190
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, s:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move-object v0, v6

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    .line 208
    .end local v9           #s:Ljava/lang/String;
    .end local v14           #type:I
    :cond_3e
    :goto_3e
    return-void

    .line 145
    .restart local v14       #type:I
    :pswitch_3f
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9       #s:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move-object v0, v6

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_57
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_3e

    .line 203
    .end local v6           #handler:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #sourceNode:I
    .end local v14           #type:I
    .end local v15           #value:Lorg/apache/xpath/objects/XObject;
    .end local v16           #xctxt:Lorg/apache/xpath/XPathContext;
    :catch_58
    move-exception v17

    move-object/from16 v10, v17

    .line 205
    .local v10, se:Lorg/xml/sax/SAXException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 152
    .end local v10           #se:Lorg/xml/sax/SAXException;
    .restart local v6       #handler:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v11       #sourceNode:I
    .restart local v14       #type:I
    .restart local v15       #value:Lorg/apache/xpath/objects/XObject;
    .restart local v16       #xctxt:Lorg/apache/xpath/XPathContext;
    :pswitch_64
    :try_start_64
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 155
    .local v7, nl:Lorg/apache/xml/dtm/DTMIterator;
    new-instance v13, Lorg/apache/xalan/transformer/TreeWalker2Result;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/transformer/TreeWalker2Result;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 158
    .local v13, tw:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :cond_71
    :goto_71
    const/16 v17, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v8

    .local v8, pos:I
    move/from16 v0, v17

    move v1, v8

    if-eq v0, v1, :cond_3e

    .line 160
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    .line 161
    .local v5, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v5, v8}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v12

    .line 165
    .local v12, t:S
    const/16 v17, 0x9

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_a5

    .line 167
    invoke-interface {v5, v8}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v4

    .local v4, child:I
    :goto_96
    const/16 v17, -0x1

    move v0, v4

    move/from16 v1, v17

    if-eq v0, v1, :cond_71

    .line 170
    invoke-virtual {v13, v4}, Lorg/apache/xalan/transformer/TreeWalker2Result;->traverse(I)V

    .line 168
    invoke-interface {v5, v4}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v4

    goto :goto_96

    .line 173
    .end local v4           #child:I
    :cond_a5
    const/16 v17, 0x2

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_b0

    .line 175
    invoke-static {v6, v8}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    goto :goto_71

    .line 179
    :cond_b0
    invoke-virtual {v13, v8}, Lorg/apache/xalan/transformer/TreeWalker2Result;->traverse(I)V

    goto :goto_71

    .line 185
    .end local v5           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v7           #nl:Lorg/apache/xml/dtm/DTMIterator;
    .end local v8           #pos:I
    .end local v12           #t:S
    .end local v13           #tw:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :pswitch_b4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v17

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/apache/xalan/serialize/SerializerUtils;->outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    :try_end_bf
    .catch Lorg/xml/sax/SAXException; {:try_start_64 .. :try_end_bf} :catch_58

    goto/16 :goto_3e

    .line 140
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_64
        :pswitch_b4
    .end packed-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, "copy-of"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 100
    const/16 v0, 0x4a

    return v0
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 65
    return-void
.end method
