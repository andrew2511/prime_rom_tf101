.class public Lorg/apache/xalan/templates/ElemExtensionDecl;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionDecl.java"


# static fields
.field static final serialVersionUID:J = -0x411ff5272262a845L


# instance fields
.field private m_elements:Lorg/apache/xml/utils/StringVector;

.field private m_functions:Lorg/apache/xml/utils/StringVector;

.field private m_prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 52
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 134
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    .line 48
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 23
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, declNamespace:Ljava/lang/String;
    const/4 v11, 0x0

    .line 205
    .local v11, lang:Ljava/lang/String;
    const/4 v15, 0x0

    .line 206
    .local v15, srcURL:Ljava/lang/String;
    const/4 v13, 0x0

    .line 207
    .local v13, scriptSrc:Ljava/lang/String;
    if-nez v7, :cond_2b

    .line 208
    new-instance v17, Ljavax/xml/transform/TransformerException;

    const-string v18, "ER_NO_NAMESPACE_DECL"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 210
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    .local v5, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2f
    if-eqz v5, :cond_79

    .line 213
    const/16 v17, 0x56

    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_74

    .line 215
    move-object v0, v5

    check-cast v0, Lorg/apache/xalan/templates/ElemExtensionScript;

    move-object v14, v0

    .line 216
    .local v14, sdecl:Lorg/apache/xalan/templates/ElemExtensionScript;
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemExtensionScript;->getLang()Ljava/lang/String;

    move-result-object v11

    .line 217
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemExtensionScript;->getSrc()Ljava/lang/String;

    move-result-object v15

    .line 218
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemExtensionScript;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v6

    .line 219
    .local v6, childOfSDecl:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v6, :cond_74

    .line 221
    const/16 v17, 0x4e

    invoke-virtual {v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_74

    .line 224
    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    move-object/from16 v16, v0

    .line 225
    .local v16, tl:Lorg/apache/xalan/templates/ElemTextLiteral;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v4

    .line 226
    .local v4, chars:[C
    new-instance v13, Ljava/lang/String;

    .end local v13           #scriptSrc:Ljava/lang/String;
    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([C)V

    .line 227
    .restart local v13       #scriptSrc:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_74

    .line 228
    const/4 v13, 0x0

    .line 211
    .end local v4           #chars:[C
    .end local v6           #childOfSDecl:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v14           #sdecl:Lorg/apache/xalan/templates/ElemExtensionScript;
    .end local v16           #tl:Lorg/apache/xalan/templates/ElemTextLiteral;
    :cond_74
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    goto :goto_2f

    .line 233
    :cond_79
    if-nez v11, :cond_7d

    .line 234
    const-string v11, "javaclass"

    .line 235
    :cond_7d
    const-string v17, "javaclass"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a2

    if-eqz v13, :cond_a2

    .line 236
    new-instance v17, Ljavax/xml/transform/TransformerException;

    const-string v18, "ER_ELEM_CONTENT_NOT_ALLOWED"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 240
    :cond_a2
    const/4 v9, 0x0

    .line 241
    .local v9, extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v8

    .line 242
    .local v8, extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    invoke-virtual {v8}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v17

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_cc

    .line 245
    const-string v17, "javaclass"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_eb

    .line 247
    if-nez v15, :cond_d2

    .line 249
    invoke-virtual {v8, v7}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v9

    .line 265
    :cond_cc
    :goto_cc
    if-eqz v9, :cond_d1

    .line 266
    invoke-virtual {v8, v9}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    .line 267
    :cond_d1
    return-void

    .line 251
    :cond_d2
    invoke-virtual {v8}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v17

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_cc

    .line 254
    invoke-virtual {v8, v7, v15}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v9

    goto :goto_cc

    .line 259
    :cond_eb
    const-string v10, "org.apache.xalan.extensions.ExtensionHandlerGeneral"

    .line 260
    .local v10, handler:Ljava/lang/String;
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v3, v0

    const/16 v17, 0x0

    aput-object v7, v3, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    move-object/from16 v18, v0

    aput-object v18, v3, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    move-object/from16 v18, v0

    aput-object v18, v3, v17

    const/16 v17, 0x3

    aput-object v11, v3, v17

    const/16 v17, 0x4

    aput-object v15, v3, v17

    const/16 v17, 0x5

    aput-object v13, v3, v17

    const/16 v17, 0x6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getSystemId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 262
    .local v3, args:[Ljava/lang/Object;
    new-instance v9, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    .end local v9           #extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-direct {v9, v7, v10, v3}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v9       #extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    goto :goto_cc
.end method

.method public getElement(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_a

    .line 172
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 174
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementCount()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getElements()Lorg/apache/xml/utils/StringVector;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    return-object v0
.end method

.method public getFunction(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_a

    .line 116
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 118
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCount()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFunctions()Lorg/apache/xml/utils/StringVector;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 196
    const/16 v0, 0x55

    return v0
.end method

.method public runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 368
    return-void
.end method

.method public setElements(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    .line 145
    return-void
.end method

.method public setFunctions(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 89
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    .line 63
    return-void
.end method
