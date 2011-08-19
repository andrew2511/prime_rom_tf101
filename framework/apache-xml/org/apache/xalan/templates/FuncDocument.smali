.class public Lorg/apache/xalan/templates/FuncDocument;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncDocument.java"


# static fields
.field static final serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_9

    .line 441
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncDocument;->reportWrongNumberArgs()V

    .line 442
    :cond_9
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 395
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 398
    .local v2, spe:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_17

    .line 399
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    .line 402
    :goto_16
    return-void

    .line 401
    :cond_17
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 26
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v11

    .line 76
    .local v11, context:I
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v13

    .line 78
    .local v13, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v13, v11}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v12

    .line 79
    .local v12, docContext:I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 81
    .local v5, arg:Lorg/apache/xpath/objects/XObject;
    const-string v8, ""

    .line 82
    .local v8, base:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v6

    .line 84
    .local v6, arg1Expr:Lorg/apache/xpath/Expression;
    if-eqz v6, :cond_131

    .line 91
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 93
    .local v7, arg2:Lorg/apache/xpath/objects/XObject;
    const/16 v22, 0x4

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12c

    .line 95
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    .line 97
    .local v10, baseNode:I
    const/16 v22, -0x1

    move v0, v10

    move/from16 v1, v22

    if-ne v0, v1, :cond_62

    .line 102
    const-string v22, "WG_EMPTY_SECOND_ARG"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v19, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 210
    .end local v7           #arg2:Lorg/apache/xpath/objects/XObject;
    .end local v10           #baseNode:I
    .local v19, nodes:Lorg/apache/xpath/objects/XNodeSet;
    :cond_61
    :goto_61
    return-object v19

    .line 106
    .end local v19           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    .restart local v7       #arg2:Lorg/apache/xpath/objects/XObject;
    .restart local v10       #baseNode:I
    :cond_62
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v9

    .line 107
    .local v9, baseDTM:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v9}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v8

    .line 144
    .end local v7           #arg2:Lorg/apache/xpath/objects/XObject;
    .end local v9           #baseDTM:Lorg/apache/xml/dtm/DTM;
    .end local v10           #baseNode:I
    :goto_6d
    new-instance v19, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 145
    .restart local v19       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v17

    .line 146
    .local v17, mnl:Lorg/apache/xpath/NodeSetDTM;
    const/16 v22, 0x4

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_151

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v22

    move-object/from16 v16, v22

    .line 148
    .local v16, iterator:Lorg/apache/xml/dtm/DTMIterator;
    :goto_90
    const/16 v20, -0x1

    .line 150
    .local v20, pos:I
    :cond_92
    if-eqz v16, :cond_a0

    const/16 v22, -0x1

    invoke-interface/range {v16 .. v16}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v20

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v1, :cond_61

    .line 152
    :cond_a0
    if-eqz v16, :cond_157

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v22

    move-object/from16 v21, v22

    .line 163
    .local v21, ref:Lorg/apache/xml/utils/XMLString;
    :goto_b4
    if-nez v6, :cond_ca

    const/16 v22, -0x1

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v1, :cond_ca

    .line 165
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v9

    .line 166
    .restart local v9       #baseDTM:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v9}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v8

    .line 169
    .end local v9           #baseDTM:Lorg/apache/xml/dtm/DTM;
    :cond_ca
    if-eqz v21, :cond_92

    .line 172
    const/16 v22, -0x1

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_e2

    .line 174
    const-string v22, "ER_NO_CONTEXT_OWNERDOC"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_e2
    const/16 v22, 0x3a

    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v14

    .line 184
    .local v14, indexOfColon:I
    const/16 v22, 0x2f

    invoke-interface/range {v21 .. v22}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v15

    .line 186
    .local v15, indexOfSlash:I
    const/16 v22, -0x1

    move v0, v14

    move/from16 v1, v22

    if-eq v0, v1, :cond_ff

    const/16 v22, -0x1

    move v0, v15

    move/from16 v1, v22

    if-eq v0, v1, :cond_ff

    if-ge v14, v15, :cond_ff

    .line 191
    const/4 v8, 0x0

    .line 194
    :cond_ff
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v22

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/templates/FuncDocument;->getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 197
    .local v18, newDoc:I
    const/16 v22, -0x1

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_120

    .line 200
    invoke-virtual/range {v17 .. v18}, Lorg/apache/xpath/NodeSetDTM;->contains(I)Z

    move-result v22

    if-nez v22, :cond_120

    .line 202
    invoke-virtual/range {v17 .. v18}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 206
    :cond_120
    if-eqz v16, :cond_61

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_92

    goto/16 :goto_61

    .line 125
    .end local v14           #indexOfColon:I
    .end local v15           #indexOfSlash:I
    .end local v16           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v17           #mnl:Lorg/apache/xpath/NodeSetDTM;
    .end local v18           #newDoc:I
    .end local v19           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    .end local v20           #pos:I
    .end local v21           #ref:Lorg/apache/xml/utils/XMLString;
    .restart local v7       #arg2:Lorg/apache/xpath/objects/XObject;
    :cond_12c
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    goto/16 :goto_6d

    .line 140
    .end local v7           #arg2:Lorg/apache/xpath/objects/XObject;
    :cond_131
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v22

    if-eqz v22, :cond_14e

    const/16 v22, 0x1

    :goto_139
    const-string v23, "Namespace context can not be null!"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/FuncDocument;->assertion(ZLjava/lang/String;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6d

    .line 140
    :cond_14e
    const/16 v22, 0x0

    goto :goto_139

    .line 146
    .restart local v17       #mnl:Lorg/apache/xpath/NodeSetDTM;
    .restart local v19       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    :cond_151
    const/16 v22, 0x0

    move-object/from16 v16, v22

    goto/16 :goto_90

    .line 152
    .restart local v16       #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .restart local v20       #pos:I
    :cond_157
    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v22

    move-object/from16 v21, v22

    goto/16 :goto_b4
.end method

.method getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .registers 28
    .parameter "xctxt"
    .parameter "context"
    .parameter "uri"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v17

    .line 237
    .local v17, treeMgr:Lorg/apache/xpath/SourceTreeManager;
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v11

    .line 238
    .local v11, source:Ljavax/xml/transform/Source;
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_24
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_1a} :catch_3c

    move-result v9

    .line 250
    .local v9, newDoc:I
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v9

    if-eq v0, v1, :cond_48

    move v10, v9

    .line 374
    .end local v9           #newDoc:I
    .local v10, newDoc:I
    :goto_23
    return v10

    .line 240
    .end local v10           #newDoc:I
    .end local v11           #source:Ljavax/xml/transform/Source;
    :catch_24
    move-exception v18

    move-object/from16 v7, v18

    .line 242
    .local v7, ioe:Ljava/io/IOException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    .line 245
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_3c
    move-exception v18

    move-object/from16 v15, v18

    .line 247
    .local v15, te:Ljavax/xml/transform/TransformerException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 254
    .end local v15           #te:Ljavax/xml/transform/TransformerException;
    .restart local v9       #newDoc:I
    .restart local v11       #source:Ljavax/xml/transform/Source;
    :cond_48
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_66

    .line 257
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 260
    :try_start_56
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_65} :catch_a2

    move-result-object v11

    .line 269
    :cond_66
    const/4 v4, 0x0

    .line 273
    .local v4, diagnosticsString:Ljava/lang/String;
    if-eqz p3, :cond_ba

    :try_start_69
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_ba

    .line 275
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_7d} :catch_ed

    move-result v9

    .line 352
    :goto_7e
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v9

    if-ne v0, v1, :cond_a0

    .line 356
    if-eqz v4, :cond_209

    .line 358
    const-string v18, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a0
    :goto_a0
    move v10, v9

    .line 374
    .end local v9           #newDoc:I
    .restart local v10       #newDoc:I
    goto :goto_23

    .line 262
    .end local v4           #diagnosticsString:Ljava/lang/String;
    .end local v10           #newDoc:I
    .restart local v9       #newDoc:I
    :catch_a2
    move-exception v18

    move-object/from16 v7, v18

    .line 264
    .restart local v7       #ioe:Ljava/io/IOException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    .line 280
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #diagnosticsString:Ljava/lang/String;
    :cond_ba
    :try_start_ba
    const-string v18, "WG_CANNOT_MAKE_URL_FROM"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_100

    const-string v22, ""

    :goto_cf
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_ec} :catch_ed

    goto :goto_7e

    .line 283
    :catch_ed
    move-exception v18

    move-object/from16 v16, v18

    .line 287
    .local v16, throwable:Ljava/lang/Throwable;
    const/4 v9, -0x1

    .line 291
    :goto_f1
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_103

    .line 293
    check-cast v16, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v16           #throwable:Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v16

    .restart local v16       #throwable:Ljava/lang/Throwable;
    goto :goto_f1

    .end local v16           #throwable:Ljava/lang/Throwable;
    :cond_100
    move-object/from16 v22, p4

    .line 280
    goto :goto_cf

    .line 297
    .restart local v16       #throwable:Ljava/lang/Throwable;
    :cond_103
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/NullPointerException;

    move/from16 v18, v0

    if-nez v18, :cond_113

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/ClassCastException;

    move/from16 v18, v0

    if-eqz v18, :cond_11f

    .line 300
    :cond_113
    new-instance v18, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v16, Ljava/lang/Exception;

    .end local v16           #throwable:Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 304
    .restart local v16       #throwable:Ljava/lang/Throwable;
    :cond_11f
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 305
    .local v14, sw:Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 307
    .local v5, diagnosticsWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_1d4

    .line 309
    move-object/from16 v0, v16

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object v12, v0

    .line 312
    .local v12, spe:Ljavax/xml/transform/TransformerException;
    move-object v6, v12

    .line 314
    .local v6, e:Ljava/lang/Throwable;
    :cond_137
    :goto_137
    if-eqz v6, :cond_203

    .line 316
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_16e

    .line 318
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    :cond_16e
    move-object v0, v6

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_1d1

    .line 324
    move-object v0, v6

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object v13, v0

    .line 326
    .local v13, spe2:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v8

    .line 327
    .local v8, locator:Ljavax/xml/transform/SourceLocator;
    if-eqz v8, :cond_1be

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1be

    .line 328
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   ID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Line #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Column #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_1be
    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v6

    .line 335
    move-object v0, v6

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_137

    .line 336
    check-cast v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v6           #e:Ljava/lang/Throwable;
    invoke-virtual {v6}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v6

    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_137

    .line 339
    .end local v8           #locator:Ljavax/xml/transform/SourceLocator;
    .end local v13           #spe2:Ljavax/xml/transform/TransformerException;
    :cond_1d1
    const/4 v6, 0x0

    goto/16 :goto_137

    .line 345
    .end local v6           #e:Ljava/lang/Throwable;
    .end local v12           #spe:Ljavax/xml/transform/TransformerException;
    :cond_1d4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :cond_203
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7e

    .line 362
    .end local v5           #diagnosticsWriter:Ljava/io/PrintWriter;
    .end local v14           #sw:Ljava/io/StringWriter;
    .end local v16           #throwable:Ljava/lang/Throwable;
    :cond_209
    const-string v18, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-nez p3, :cond_242

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_23f

    const-string v22, ""

    :goto_220
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_230
    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a0

    :cond_23f
    move-object/from16 v22, p4

    goto :goto_220

    :cond_242
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_230
.end method

.method public isNodesetExpr()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_ONE_OR_TWO"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 421
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 424
    .local v2, spe:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_17

    .line 425
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 428
    :goto_16
    return-void

    .line 427
    :cond_17
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method
