.class public Lorg/apache/xalan/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/xml/dtm/DTMWSFilter;
.implements Lorg/apache/xpath/ExtensionsProvider;
.implements Lorg/apache/xml/serializer/SerializerTrace;


# instance fields
.field m_attrSetStack:Ljava/util/Stack;

.field m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

.field m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

.field m_currentMatchTemplates:Ljava/util/Stack;

.field m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

.field m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

.field m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

.field private m_doc:I

.field private m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_exceptionThrown:Ljava/lang/Exception;

.field private m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

.field private m_hasBeenReset:Z

.field private m_hasTransformThreadErrorCatcher:Z

.field private m_incremental:Z

.field m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

.field private m_modes:Ljava/util/Stack;

.field private m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

.field private m_optimizer:Z

.field private m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_outputTarget:Ljavax/xml/transform/Result;

.field private m_quietConflictWarnings:Z

.field private m_reentryGuard:Ljava/lang/Boolean;

.field private m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_shouldReset:Z

.field private m_source_location:Z

.field private m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_textformat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_transformThread:Ljava/lang/Thread;

.field private m_urlOfSource:Ljava/lang/String;

.field m_userParams:Ljava/util/Vector;

.field private m_xcontext:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 8
    .parameter "stylesheet"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 337
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    .line 117
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 123
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    .line 126
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 142
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 155
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Lorg/apache/xml/serializer/ToTextStream;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 163
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 170
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    const-string v2, "text"

    invoke-direct {v1, v2}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    .line 191
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    .line 204
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    .line 214
    new-instance v1, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    .line 219
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 225
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    .line 240
    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 246
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 251
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 256
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 263
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/ObjectStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    .line 277
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    .line 285
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 293
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 298
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1, v4}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 306
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 316
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 319
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    .line 324
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    .line 360
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    .line 503
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 338
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    .line 339
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getIncremental()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 340
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getSource_location()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 342
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;)V

    .line 343
    .local v0, xPath:Lorg/apache/xpath/XPathContext;
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setIncremental(Z)V

    .line 344
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    .line 345
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSource_location(Z)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 349
    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->setSecureProcessing(Z)V

    .line 351
    :cond_c1
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setXPathContext(Lorg/apache/xpath/XPathContext;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 353
    return-void
.end method

.method private fatalError(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 684
    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_1a

    .line 685
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    check-cast p1, Lorg/xml/sax/SAXParseException;

    .end local p1
    invoke-direct {v3, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 689
    :goto_19
    return-void

    .line 687
    .restart local p1
    :cond_1a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_19
.end method

.method private replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .registers 9
    .parameter "qname"
    .parameter "xval"

    .prologue
    const/4 v5, 0x1

    .line 1462
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1464
    .local v2, n:I
    sub-int v1, v2, v5

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_2b

    .line 1466
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1468
    .local v0, arg:Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1470
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1477
    .end local v0           #arg:Lorg/apache/xpath/Arg;
    :goto_27
    return-void

    .line 1464
    .restart local v0       #arg:Lorg/apache/xpath/Arg;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1476
    .end local v0           #arg:Lorg/apache/xpath/Arg;
    :cond_2b
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27
.end method

.method private resetUserParameters()V
    .registers 8

    .prologue
    .line 1538
    :try_start_0
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v6, :cond_5

    .line 1561
    :cond_4
    :goto_4
    return-void

    .line 1541
    :cond_5
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1542
    .local v2, n:I
    const/4 v6, 0x1

    sub-int v1, v2, v6

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_4

    .line 1544
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1545
    .local v0, arg:Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    .line 1548
    .local v3, name:Lorg/apache/xml/utils/QName;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 1549
    .local v4, s1:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    .line 1551
    .local v5, s2:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_2f} :catch_32

    .line 1542
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1556
    .end local v0           #arg:Lorg/apache/xpath/Arg;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #name:Lorg/apache/xml/utils/QName;
    .end local v4           #s1:Ljava/lang/String;
    .end local v5           #s2:Ljava/lang/String;
    :catch_32
    move-exception v6

    goto :goto_4
.end method

.method public static runTransformThread(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "runnable"

    .prologue
    .line 2953
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    .line 2954
    return-void
.end method

.method private transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I
    .registers 11
    .parameter "templateParent"
    .parameter "dtmFrag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1792
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 1794
    .local v6, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    .line 1803
    .local v2, rtfHandler:Lorg/xml/sax/ContentHandler;
    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1807
    .local v4, savedRTreeHandler:Lorg/apache/xml/serializer/SerializationHandler;
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1808
    .local v0, h:Lorg/apache/xml/serializer/ToSAXHandler;
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1809
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1812
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1815
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1819
    .local v3, rth:Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_17
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 1824
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_1d} :catch_33

    .line 1830
    const/4 v7, 0x1

    :try_start_1e
    invoke-virtual {p0, p1, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1833
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 1839
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2e

    move-result v1

    .line 1843
    .local v1, resultFragment:I
    :try_start_28
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_28 .. :try_end_2b} :catch_33

    .line 1854
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1857
    return v1

    .line 1843
    .end local v1           #resultFragment:I
    :catchall_2e
    move-exception v7

    :try_start_2f
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    throw v7
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_33} :catch_33

    .line 1846
    :catch_33
    move-exception v7

    move-object v5, v7

    .line 1848
    .local v5, se:Lorg/xml/sax/SAXException;
    :try_start_35
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    .line 1854
    .end local v5           #se:Lorg/xml/sax/SAXException;
    :catchall_3b
    move-exception v7

    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v7
.end method


# virtual methods
.method public applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    .registers 28
    .parameter "xslInstruction"
    .parameter "template"
    .parameter "child"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 1964
    .local v12, dtm:Lorg/apache/xml/dtm/DTM;
    move-object v0, v12

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v22

    .line 1965
    .local v22, nodeType:S
    const/16 v21, 0x0

    .line 1966
    .local v21, isDefaultTextRule:Z
    const/16 v20, 0x0

    .line 1968
    .local v20, isApplyImports:Z
    if-nez p1, :cond_44

    const/4 v5, 0x0

    move/from16 v20, v5

    .line 1973
    :goto_1c
    if-eqz p2, :cond_20

    if-eqz v20, :cond_a0

    .line 1975
    :cond_20
    const/4 v10, 0x0

    .line 1977
    .local v10, endImportLevel:I
    if-eqz v20, :cond_54

    .line 1979
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v5

    const/4 v6, 0x1

    sub-int v9, v5, v6

    .line 1981
    .local v9, maxImportLevel:I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v10

    .line 1995
    :goto_36
    if-eqz v20, :cond_56

    const/4 v5, -0x1

    if-ne v9, v5, :cond_56

    .line 1997
    const/16 p2, 0x0

    .line 2028
    :goto_3d
    if-nez p2, :cond_a0

    .line 2030
    packed-switch v22, :pswitch_data_19a

    .line 2048
    :pswitch_42
    const/4 v5, 0x0

    .line 2116
    .end local v9           #maxImportLevel:I
    .end local v10           #endImportLevel:I
    :goto_43
    return v5

    .line 1968
    :cond_44
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_50

    const/4 v5, 0x1

    move/from16 v20, v5

    goto :goto_1c

    :cond_50
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_1c

    .line 1986
    .restart local v10       #endImportLevel:I
    :cond_54
    const/4 v9, -0x1

    .restart local v9       #maxImportLevel:I
    goto :goto_36

    .line 2004
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v6, v0

    .line 2008
    .local v6, xctxt:Lorg/apache/xpath/XPathContext;
    :try_start_5b
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v8

    .line 2012
    .local v8, mode:Lorg/apache/xml/utils/QName;
    if-eqz v20, :cond_7b

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move v11, v0

    move/from16 v7, p3

    invoke-virtual/range {v5 .. v12}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_92

    move-result-object p2

    .line 2022
    :goto_77
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_3d

    .line 2016
    :cond_7b
    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move/from16 v17, v0

    move-object v14, v6

    move/from16 v15, p3

    move-object/from16 v16, v8

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_90
    .catchall {:try_start_7b .. :try_end_90} :catchall_92

    move-result-object p2

    goto :goto_77

    .line 2022
    .end local v8           #mode:Lorg/apache/xml/utils/QName;
    :catchall_92
    move-exception v5

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v5

    .line 2034
    .end local v6           #xctxt:Lorg/apache/xpath/XPathContext;
    :pswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2057
    .end local v9           #maxImportLevel:I
    .end local v10           #endImportLevel:I
    :cond_a0
    :goto_a0
    :try_start_a0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2059
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 2062
    if-nez v20, :cond_db

    .line 2063
    new-instance v19, Lorg/apache/xpath/NodeSetDTM;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v5

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 2064
    .local v19, cnl:Lorg/apache/xml/dtm/DTMIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_db
    .catchall {:try_start_a0 .. :try_end_db} :catchall_13b
    .catch Lorg/xml/sax/SAXException; {:try_start_a0 .. :try_end_db} :catch_12f

    .line 2067
    .end local v19           #cnl:Lorg/apache/xml/dtm/DTMIterator;
    :cond_db
    if-eqz v21, :cond_172

    .line 2069
    packed-switch v22, :pswitch_data_1b4

    .line 2105
    :goto_e0
    if-nez v21, :cond_ee

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2107
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2108
    if-nez v20, :cond_100

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2111
    :cond_100
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 2116
    const/4 v5, 0x1

    goto/16 :goto_43

    .line 2039
    .restart local v9       #maxImportLevel:I
    .restart local v10       #endImportLevel:I
    :pswitch_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2040
    const/16 v21, 0x1

    .line 2041
    goto :goto_a0

    .line 2043
    :pswitch_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    .line 2044
    goto :goto_a0

    .line 2073
    .end local v9           #maxImportLevel:I
    .end local v10           #endImportLevel:I
    :pswitch_11f
    :try_start_11f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p3

    move/from16 v1, v22

    move-object v2, v12

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    :try_end_12e
    .catchall {:try_start_11f .. :try_end_12e} :catchall_13b
    .catch Lorg/xml/sax/SAXException; {:try_start_11f .. :try_end_12e} :catch_12f

    goto :goto_e0

    .line 2099
    :catch_12f
    move-exception v5

    move-object/from16 v23, v5

    .line 2101
    .local v23, se:Lorg/xml/sax/SAXException;
    :try_start_132
    new-instance v5, Ljavax/xml/transform/TransformerException;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_13b
    .catchall {:try_start_132 .. :try_end_13b} :catchall_13b

    .line 2105
    .end local v23           #se:Lorg/xml/sax/SAXException;
    :catchall_13b
    move-exception v5

    if-nez v21, :cond_14a

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2107
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2108
    if-nez v20, :cond_15c

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2111
    :cond_15c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v5

    .line 2077
    :pswitch_163
    :try_start_163
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, p3

    move-object v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto/16 :goto_e0

    .line 2093
    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move v6, v0

    invoke-virtual {v5, v6}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 2096
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_197
    .catchall {:try_start_163 .. :try_end_197} :catchall_13b
    .catch Lorg/xml/sax/SAXException; {:try_start_163 .. :try_end_197} :catch_12f

    goto/16 :goto_e0

    .line 2030
    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_97
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_115
        :pswitch_42
        :pswitch_97
    .end packed-switch

    .line 2069
    :pswitch_data_1b4
    .packed-switch 0x2
        :pswitch_163
        :pswitch_11f
        :pswitch_11f
    .end packed-switch
.end method

.method public clearParameters()V
    .registers 4

    .prologue
    .line 1609
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1611
    :try_start_3
    new-instance v0, Lorg/apache/xpath/VariableStack;

    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    .line 1613
    .local v0, varstack:Lorg/apache/xpath/VariableStack;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2, v0}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 1615
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    .line 1616
    monitor-exit v1

    .line 1617
    return-void

    .line 1616
    .end local v0           #varstack:Lorg/apache/xpath/VariableStack;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 4
    .parameter "outputTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 934
    .local v0, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    return-object v0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 31
    .parameter "outputTarget"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 959
    const/4 v13, 0x0

    .line 961
    .local v13, outputNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMResult;

    move/from16 v23, v0

    if-eqz v23, :cond_a0

    .line 963
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMResult;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 964
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMResult;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 969
    .local v12, nextSibling:Lorg/w3c/dom/Node;
    if-eqz v13, :cond_78

    .line 971
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    .line 972
    .local v21, type:S
    const/16 v23, 0x9

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_71

    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Document;

    move-object v14, v0

    move-object v4, v14

    .line 986
    .end local p1
    .local v4, doc:Lorg/w3c/dom/Document;
    :goto_2e
    const/16 v23, 0xb

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_94

    new-instance v23, Lorg/apache/xml/utils/DOMBuilder;

    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    move-object v14, v0

    move-object/from16 v0, v23

    move-object v1, v4

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    move-object/from16 v7, v23

    .line 991
    .local v7, handler:Lorg/apache/xml/utils/DOMBuilder;
    :goto_45
    if-eqz v12, :cond_4a

    .line 992
    invoke-virtual {v7, v12}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 994
    :cond_4a
    const-string v23, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, encoding:Ljava/lang/String;
    new-instance v22, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v7

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 1102
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #encoding:Ljava/lang/String;
    .end local v7           #handler:Lorg/apache/xml/utils/DOMBuilder;
    .end local v12           #nextSibling:Lorg/w3c/dom/Node;
    .end local v21           #type:S
    .local v22, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    :cond_5e
    :goto_5e
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v16

    .line 1105
    .local v16, srcLocator:Ljavax/xml/transform/SourceLocator;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 1108
    return-object v22

    .line 972
    .end local v16           #srcLocator:Ljavax/xml/transform/SourceLocator;
    .end local v22           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v12       #nextSibling:Lorg/w3c/dom/Node;
    .restart local v21       #type:S
    .restart local p1
    :cond_71
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v23

    move-object/from16 v4, v23

    goto :goto_2e

    .line 978
    .end local v21           #type:S
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v9

    .line 979
    .local v9, isSecureProcessing:Z
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 980
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    move-object v13, v4

    .line 981
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    .line 983
    .restart local v21       #type:S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_2e

    .line 986
    .end local v9           #isSecureProcessing:Z
    :cond_94
    new-instance v23, Lorg/apache/xml/utils/DOMBuilder;

    move-object/from16 v0, v23

    move-object v1, v4

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    move-object/from16 v7, v23

    goto :goto_45

    .line 997
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v12           #nextSibling:Lorg/w3c/dom/Node;
    .end local v21           #type:S
    .restart local p1
    :cond_a0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXResult;

    move/from16 v23, v0

    if-eqz v23, :cond_136

    .line 999
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    .line 1001
    .local v7, handler:Lorg/xml/sax/ContentHandler;
    if-nez v7, :cond_b8

    .line 1002
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "handler can not be null for a SAXResult"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1006
    :cond_b8
    move-object v0, v7

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v23, v0

    if-eqz v23, :cond_134

    .line 1007
    move-object v0, v7

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v10, v0

    .line 1011
    .local v10, lexHandler:Lorg/xml/sax/ext/LexicalHandler;
    :goto_c3
    const-string v23, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1012
    .restart local v5       #encoding:Ljava/lang/String;
    const-string v23, "method"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1014
    .local v11, method:Ljava/lang/String;
    new-instance v20, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v10

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 1015
    .local v20, toXMLSAXHandler:Lorg/apache/xml/serializer/ToXMLSAXHandler;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setShouldOutputNSAttr(Z)V

    .line 1016
    move-object/from16 v22, v20

    .line 1019
    .restart local v22       #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    const-string v23, "doctype-public"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1020
    .local v14, publicID:Ljava/lang/String;
    const-string v23, "doctype-system"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1021
    .local v19, systemID:Ljava/lang/String;
    if-eqz v19, :cond_109

    .line 1022
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 1023
    :cond_109
    if-eqz v14, :cond_111

    .line 1024
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 1026
    :cond_111
    move-object v0, v7

    instance-of v0, v0, Lorg/apache/xalan/transformer/TransformerClient;

    move/from16 v23, v0

    if-eqz v23, :cond_5e

    .line 1027
    new-instance v18, Lorg/apache/xalan/transformer/XalanTransformState;

    invoke-direct/range {v18 .. v18}, Lorg/apache/xalan/transformer/XalanTransformState;-><init>()V

    .line 1028
    .local v18, state:Lorg/apache/xalan/transformer/XalanTransformState;
    check-cast v7, Lorg/apache/xalan/transformer/TransformerClient;

    .end local v7           #handler:Lorg/xml/sax/ContentHandler;
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/xalan/transformer/TransformerClient;->setTransformState(Lorg/apache/xalan/transformer/TransformState;)V

    .line 1029
    move-object/from16 v0, v22

    check-cast v0, Lorg/apache/xml/serializer/ToSAXHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V

    goto/16 :goto_5e

    .line 1009
    .end local v5           #encoding:Ljava/lang/String;
    .end local v10           #lexHandler:Lorg/xml/sax/ext/LexicalHandler;
    .end local v11           #method:Ljava/lang/String;
    .end local v14           #publicID:Ljava/lang/String;
    .end local v18           #state:Lorg/apache/xalan/transformer/XalanTransformState;
    .end local v19           #systemID:Ljava/lang/String;
    .end local v20           #toXMLSAXHandler:Lorg/apache/xml/serializer/ToXMLSAXHandler;
    .end local v22           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v7       #handler:Lorg/xml/sax/ContentHandler;
    :cond_134
    const/4 v10, 0x0

    .restart local v10       #lexHandler:Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_c3

    .line 1037
    .end local v7           #handler:Lorg/xml/sax/ContentHandler;
    .end local v10           #lexHandler:Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1
    :cond_136
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamResult;

    move/from16 v23, v0

    if-eqz v23, :cond_213

    .line 1039
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v17, v0

    .line 1043
    .local v17, sresult:Ljavax/xml/transform/stream/StreamResult;
    :try_start_144
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v15

    check-cast v15, Lorg/apache/xml/serializer/SerializationHandler;

    .line 1046
    .local v15, serializer:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v23

    if-eqz v23, :cond_162

    .line 1047
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 1082
    :goto_15e
    move-object/from16 v22, v15

    .restart local v22       #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    goto/16 :goto_5e

    .line 1048
    .end local v22           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    :cond_162
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    if-eqz v23, :cond_17f

    .line 1049
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_172} :catch_173

    goto :goto_15e

    .line 1088
    .end local v15           #serializer:Lorg/apache/xml/serializer/SerializationHandler;
    :catch_173
    move-exception v23

    move-object/from16 v8, v23

    .line 1090
    .local v8, ioe:Ljava/io/IOException;
    new-instance v23, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 1050
    .end local v8           #ioe:Ljava/io/IOException;
    .restart local v15       #serializer:Lorg/apache/xml/serializer/SerializationHandler;
    :cond_17f
    :try_start_17f
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_205

    .line 1052
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 1054
    .local v6, fileURL:Ljava/lang/String;
    const-string v23, "file:///"

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1d5

    .line 1056
    const/16 v23, 0x8

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-lez v23, :cond_1cb

    .line 1057
    const/16 v23, 0x8

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1069
    :cond_1ae
    :goto_1ae
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1073
    move-object/from16 v22, v15

    .line 1074
    .restart local v22       #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    goto :goto_15e

    .line 1059
    .end local v22           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    :cond_1cb
    const/16 v23, 0x7

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1ae

    .line 1061
    :cond_1d5
    const-string v23, "file:/"

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1ae

    .line 1063
    const/16 v23, 0x6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-lez v23, :cond_1fb

    .line 1064
    const/16 v23, 0x6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1ae

    .line 1066
    :cond_1fb
    const/16 v23, 0x5

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1ae

    .line 1076
    .end local v6           #fileURL:Ljava/lang/String;
    :cond_205
    new-instance v23, Ljavax/xml/transform/TransformerException;

    const-string v24, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_213} :catch_173

    .line 1095
    .end local v15           #serializer:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v17           #sresult:Ljavax/xml/transform/stream/StreamResult;
    :cond_213
    new-instance v23, Ljavax/xml/transform/TransformerException;

    const-string v24, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v23
.end method

.method public currentFuncResultSeen()Z
    .registers 2

    .prologue
    .line 2793
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->empty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public currentTemplateRuleIsNull()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2739
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ns"
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .registers 7
    .parameter "elem"
    .parameter "context"
    .parameter "mode"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2143
    .local v0, xctxt:Lorg/apache/xpath/XPathContext;
    if-eqz p3, :cond_7

    .line 2144
    :try_start_4
    invoke-virtual {p0, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    .line 2145
    :cond_7
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2146
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1a

    .line 2150
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2154
    if-eqz p3, :cond_19

    .line 2155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 2157
    :cond_19
    return-void

    .line 2150
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 2154
    if-eqz p3, :cond_23

    .line 2155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_23
    throw v1
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .registers 11
    .parameter "elem"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2258
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    .line 2263
    .local v5, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    move-object v3, v5

    .line 2267
    .local v3, savedHandler:Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_5
    invoke-interface {v5}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 2270
    const/4 v2, 0x0

    .line 2271
    .local v2, lex:Lorg/xml/sax/ext/LexicalHandler;
    instance-of v6, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_11

    .line 2272
    move-object v0, p2

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v2, v0

    .line 2274
    :cond_11
    new-instance v6, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v2, v7}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2275
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 2276
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_25} :catch_28
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_25} :catch_2f

    .line 2287
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2289
    return-void

    .line 2278
    .end local v2           #lex:Lorg/xml/sax/ext/LexicalHandler;
    :catch_28
    move-exception v6

    move-object v1, v6

    .line 2280
    .local v1, e:Ljavax/xml/transform/TransformerException;
    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 2287
    .end local v1           #e:Ljavax/xml/transform/TransformerException;
    :catchall_2b
    move-exception v6

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    .line 2282
    :catch_2f
    move-exception v6

    move-object v4, v6

    .line 2283
    .local v4, se:Lorg/xml/sax/SAXException;
    :try_start_31
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_2b
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    .registers 14
    .parameter "elem"
    .parameter "shouldAddAttrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2175
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    .line 2177
    .local v5, t:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v5, :cond_7

    .line 2241
    :goto_6
    return-void

    .line 2180
    :cond_7
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v8

    if-eqz v8, :cond_34

    iget-boolean v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v8, :cond_34

    .line 2182
    move-object v0, v5

    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v1

    .line 2186
    .local v1, chars:[C
    :try_start_19
    invoke-virtual {p0, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2187
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v9, 0x0

    array-length v10, v1

    invoke-interface {v8, v1, v9, v10}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_23} :catch_27

    .line 2195
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_6

    .line 2189
    :catch_27
    move-exception v8

    move-object v4, v8

    .line 2191
    .local v4, se:Lorg/xml/sax/SAXException;
    :try_start_29
    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    .line 2195
    .end local v4           #se:Lorg/xml/sax/SAXException;
    :catchall_2f
    move-exception v8

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v8

    .line 2206
    .end local v1           #chars:[C
    :cond_34
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2207
    .local v7, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 2208
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v8}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v2

    .line 2209
    .local v2, currentTemplateElementsTop:I
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    :goto_45
    if-eqz v5, :cond_77

    .line 2217
    if-nez p2, :cond_56

    :try_start_49
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_56

    .line 2215
    :goto_51
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    goto :goto_45

    .line 2221
    :cond_56
    invoke-virtual {v7, v5}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2222
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v8, v5, v2}, Lorg/apache/xml/utils/ObjectStack;->setElementAt(Ljava/lang/Object;I)V

    .line 2223
    invoke-virtual {v5, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_6d
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_61} :catch_62

    goto :goto_51

    .line 2226
    :catch_62
    move-exception v8

    move-object v3, v8

    .line 2228
    .local v3, re:Ljava/lang/RuntimeException;
    :try_start_64
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 2229
    .local v6, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v6, v5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2230
    throw v6
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6d

    .line 2234
    .end local v3           #re:Ljava/lang/RuntimeException;
    .end local v6           #te:Ljavax/xml/transform/TransformerException;
    :catchall_6d
    move-exception v8

    iget-object v9, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v9}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2235
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    throw v8

    .line 2234
    :cond_77
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v8}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2235
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    goto :goto_6
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter "ns"
    .parameter "funcName"
    .parameter "argVec"
    .parameter "methodKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .registers 5
    .parameter "extFunction"
    .parameter "argVec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fireGenerateEvent(I)V
    .registers 2
    .parameter "eventType"

    .prologue
    .line 3240
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;)V
    .registers 3
    .parameter "eventType"
    .parameter "data"

    .prologue
    .line 3233
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "eventType"
    .parameter "name"
    .parameter "data"

    .prologue
    .line 3226
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "eventType"
    .parameter "name"
    .parameter "atts"

    .prologue
    .line 3220
    return-void
.end method

.method public fireGenerateEvent(I[CII)V
    .registers 5
    .parameter "eventType"
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 3210
    return-void
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ns"
    .parameter "funcName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 1733
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2550
    :try_start_1
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 2552
    .local v0, cnl:Lorg/apache/xml/dtm/DTMIterator;
    if-nez v0, :cond_b

    move-object v2, v3

    .line 2558
    .end local v0           #cnl:Lorg/apache/xml/dtm/DTMIterator;
    :goto_a
    return-object v2

    .line 2552
    .restart local v0       #cnl:Lorg/apache/xml/dtm/DTMIterator;
    :cond_b
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v2

    goto :goto_a

    .line 2554
    .end local v0           #cnl:Lorg/apache/xml/dtm/DTMIterator;
    :catch_10
    move-exception v2

    move-object v1, v2

    .local v1, cnse:Ljava/lang/CloneNotSupportedException;
    move-object v2, v3

    .line 2558
    goto :goto_a
.end method

.method public getCountersTable()Lorg/apache/xalan/transformer/CountersTable;
    .registers 2

    .prologue
    .line 2725
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    if-nez v0, :cond_b

    .line 2726
    new-instance v0, Lorg/apache/xalan/transformer/CountersTable;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/CountersTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 2728
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    return-object v0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 2

    .prologue
    .line 2451
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v0, p0

    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCurrentNode()I
    .registers 2

    .prologue
    .line 2463
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 4

    .prologue
    .line 2480
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 2483
    .local v0, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_13

    .line 2485
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_4

    .line 2488
    :cond_13
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    .end local v0           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object v0
.end method

.method public getCurrentTemplateElements()Lorg/apache/xml/utils/ObjectStack;
    .registers 2

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    return-object v0
.end method

.method public getCurrentTemplateElementsCount()I
    .registers 2

    .prologue
    .line 2396
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    return v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 2837
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 3004
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2876
    const-string v0, "http://xml.org/trax/features/sax/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 2879
    :goto_a
    return v0

    .line 2878
    :cond_b
    const-string v0, "http://xml.org/trax/features/dom/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 2879
    goto :goto_a

    .line 2881
    :cond_15
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncremental()Z
    .registers 2

    .prologue
    .line 3253
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    return v0
.end method

.method public getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 1311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .registers 4
    .parameter "doDocFrag"

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_d

    .line 1332
    new-instance v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1336
    :cond_d
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getKeyManager()Lorg/apache/xalan/transformer/KeyManager;
    .registers 2

    .prologue
    .line 2667
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    return-object v0
.end method

.method public getMatchedNode()I
    .registers 2

    .prologue
    .line 2537
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepTail()I

    move-result v0

    return v0
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 2525
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 2894
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/QName;

    move-object v0, p0

    goto :goto_9
.end method

.method public getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;
    .registers 2

    .prologue
    .line 2805
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    if-nez v0, :cond_b

    .line 2806
    new-instance v0, Lorg/apache/xalan/transformer/MsgMgr;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/MsgMgr;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    .line 2808
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    return-object v0
.end method

.method public getOptimize()Z
    .registers 2

    .prologue
    .line 3260
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    return v0
.end method

.method public getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;
    .registers 3

    .prologue
    .line 1363
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v1

    move-object v0, v1

    .line 1367
    .local v0, format:Lorg/apache/xalan/templates/OutputProperties;
    :goto_d
    return-object v0

    .line 1363
    .end local v0           #format:Lorg/apache/xalan/templates/OutputProperties;
    :cond_e
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    move-object v0, v1

    goto :goto_d
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 914
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "qnameString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    .line 725
    .local v0, props:Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    if-nez v1, :cond_23

    .line 729
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 730
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_23
    return-object v1
.end method

.method public getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "qnameString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    .line 756
    .local v0, props:Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 758
    .restart local v1       #value:Ljava/lang/String;
    if-nez v1, :cond_29

    .line 760
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 761
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    :cond_29
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 1499
    :try_start_1
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v4

    .line 1501
    .local v4, qname:Lorg/apache/xml/utils/QName;
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v5, :cond_b

    move-object v5, v6

    .line 1522
    .end local v4           #qname:Lorg/apache/xml/utils/QName;
    :goto_a
    return-object v5

    .line 1504
    .restart local v4       #qname:Lorg/apache/xml/utils/QName;
    :cond_b
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1506
    .local v2, n:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    :goto_14
    if-ltz v1, :cond_34

    .line 1508
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    .line 1510
    .local v0, arg:Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1512
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_2f} :catch_36

    move-result-object v5

    goto :goto_a

    .line 1506
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .end local v0           #arg:Lorg/apache/xpath/Arg;
    :cond_34
    move-object v5, v6

    .line 1516
    goto :goto_a

    .line 1518
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v4           #qname:Lorg/apache/xml/utils/QName;
    :catch_36
    move-exception v5

    move-object v3, v5

    .local v3, nsee:Ljava/util/NoSuchElementException;
    move-object v5, v6

    .line 1522
    goto :goto_a
.end method

.method public getQuietConflictWarnings()Z
    .registers 2

    .prologue
    .line 2612
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return v0
.end method

.method public getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 2

    .prologue
    .line 2645
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 2

    .prologue
    .line 2656
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S
    .registers 8
    .parameter "elementHandle"
    .parameter "dtm"

    .prologue
    const/4 v4, 0x3

    .line 3162
    :try_start_1
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2, v3, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v0

    .line 3165
    .local v0, info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    if-nez v0, :cond_d

    move v2, v4

    .line 3179
    .end local v0           #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :goto_c
    return v2

    .line 3173
    .restart local v0       #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :cond_d
    invoke-virtual {v0}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_10} :catch_17

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_c

    :cond_15
    const/4 v2, 0x1

    goto :goto_c

    .line 3177
    .end local v0           #info:Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :catch_17
    move-exception v2

    move-object v1, v2

    .local v1, se:Ljavax/xml/transform/TransformerException;
    move v2, v4

    .line 3179
    goto :goto_c
.end method

.method public getSource_location()Z
    .registers 2

    .prologue
    .line 3267
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    return v0
.end method

.method public final getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 2

    .prologue
    .line 2599
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTransformThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .prologue
    .line 2569
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v0

    return-object v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 2

    .prologue
    .line 2634
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public hasTraceListeners()Z
    .registers 2

    .prologue
    .line 3246
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransformThreadErrorCatcher()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    return v0
.end method

.method public init(Lorg/apache/xml/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .parameter "h"
    .parameter "transformer"
    .parameter "realHandler"

    .prologue
    .line 3190
    invoke-virtual {p1, p2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 3191
    invoke-virtual {p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 3192
    return-void
.end method

.method public isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z
    .registers 4
    .parameter "attrSet"

    .prologue
    .line 2680
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-nez v1, :cond_b

    .line 2682
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 2685
    :cond_b
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2687
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    .line 2689
    .local v0, loc:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1e

    .line 2691
    const/4 v1, 0x1

    .line 2695
    .end local v0           #loc:I
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public popCurrentFuncResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2782
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popCurrentMatched()V
    .registers 2

    .prologue
    .line 2510
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2511
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->pop()I

    .line 2512
    return-void
.end method

.method public popCurrentTemplateRuleIsNull()V
    .registers 2

    .prologue
    .line 2761
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    .line 2762
    return-void
.end method

.method public popElemAttributeSet()V
    .registers 2

    .prologue
    .line 2714
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2715
    return-void
.end method

.method public popElemTemplateElement()V
    .registers 2

    .prologue
    .line 2427
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2428
    return-void
.end method

.method public popMode()V
    .registers 2

    .prologue
    .line 2918
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2919
    return-void
.end method

.method postExceptionFromThread(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 3060
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 3063
    monitor-enter p0

    .line 3070
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3079
    monitor-exit p0

    .line 3080
    return-void

    .line 3079
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;
    .registers 24
    .parameter "foreach"
    .parameter "sourceNodeContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2308
    const/16 v16, 0x0

    .line 2309
    .local v16, keys:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v20, v0

    .line 2310
    .local v20, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v17

    .line 2312
    .local v17, nElems:I
    if-lez v17, :cond_13

    .line 2313
    new-instance v16, Ljava/util/Vector;

    .end local v16           #keys:Ljava/util/Vector;
    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 2316
    .restart local v16       #keys:Ljava/util/Vector;
    :cond_13
    const/4 v15, 0x0

    .local v15, i:I
    :goto_14
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_137

    .line 2318
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v19

    .line 2320
    .local v19, sort:Lorg/apache/xalan/templates/ElemSort;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v4

    if-eqz v4, :cond_100

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 2323
    .local v9, langString:Ljava/lang/String;
    :goto_36
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getDataType()Lorg/apache/xalan/templates/AVT;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v14

    .line 2326
    .local v14, dataTypeString:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_104

    .line 2327
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "TODO: Need to write the hooks for QNAME sort data type"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2336
    :cond_54
    :goto_54
    if-eqz v14, :cond_12a

    const-string v4, "number"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    const/4 v4, 0x1

    move v7, v4

    .line 2339
    .local v7, treatAsNumbers:Z
    :goto_60
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v18

    .line 2342
    .local v18, orderString:Ljava/lang/String;
    const-string v4, "ascending"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_99

    const-string v4, "descending"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 2345
    const-string v4, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "order"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2349
    :cond_99
    if-eqz v18, :cond_12e

    const-string v4, "descending"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12e

    const/4 v4, 0x1

    move v8, v4

    .line 2352
    .local v8, descending:Z
    :goto_a8
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getCaseOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v12

    .line 2355
    .local v12, caseOrder:Lorg/apache/xalan/templates/AVT;
    if-eqz v12, :cond_135

    .line 2357
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    .line 2360
    .local v13, caseOrderString:Ljava/lang/String;
    const-string v4, "upper-first"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_dd

    const-string v4, "lower-first"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_dd

    .line 2363
    const-string v4, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v10, "case-order"

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2367
    :cond_dd
    if-eqz v13, :cond_132

    const-string v4, "upper-first"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    const/4 v4, 0x1

    move v10, v4

    .line 2376
    .end local v13           #caseOrderString:Ljava/lang/String;
    .local v10, caseOrderUpper:Z
    :goto_e9
    new-instance v4, Lorg/apache/xalan/transformer/NodeSortKey;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemSort;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v6

    move-object/from16 v5, p0

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lorg/apache/xalan/transformer/NodeSortKey;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2316
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14

    .line 2320
    .end local v7           #treatAsNumbers:Z
    .end local v8           #descending:Z
    .end local v9           #langString:Ljava/lang/String;
    .end local v10           #caseOrderUpper:Z
    .end local v12           #caseOrder:Lorg/apache/xalan/templates/AVT;
    .end local v14           #dataTypeString:Ljava/lang/String;
    .end local v18           #orderString:Ljava/lang/String;
    :cond_100
    const/4 v4, 0x0

    move-object v9, v4

    goto/16 :goto_36

    .line 2329
    .restart local v9       #langString:Ljava/lang/String;
    .restart local v14       #dataTypeString:Ljava/lang/String;
    :cond_104
    const-string v4, "text"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "number"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2332
    const-string v4, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "data-type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2336
    :cond_12a
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_60

    .line 2349
    .restart local v7       #treatAsNumbers:Z
    .restart local v18       #orderString:Ljava/lang/String;
    :cond_12e
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_a8

    .line 2367
    .restart local v8       #descending:Z
    .restart local v12       #caseOrder:Lorg/apache/xalan/templates/AVT;
    .restart local v13       #caseOrderString:Ljava/lang/String;
    :cond_132
    const/4 v4, 0x0

    move v10, v4

    goto :goto_e9

    .line 2373
    .end local v13           #caseOrderString:Ljava/lang/String;
    :cond_135
    const/4 v10, 0x0

    .restart local v10       #caseOrderUpper:Z
    goto :goto_e9

    .line 2381
    .end local v7           #treatAsNumbers:Z
    .end local v8           #descending:Z
    .end local v9           #langString:Ljava/lang/String;
    .end local v10           #caseOrderUpper:Z
    .end local v12           #caseOrder:Lorg/apache/xalan/templates/AVT;
    .end local v14           #dataTypeString:Ljava/lang/String;
    .end local v18           #orderString:Ljava/lang/String;
    .end local v19           #sort:Lorg/apache/xalan/templates/ElemSort;
    :cond_137
    return-object v16
.end method

.method public pushCurrentFuncResult(Ljava/lang/Object;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 2773
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    return-void
.end method

.method public pushCurrentTemplateRuleIsNull(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 2752
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    .line 2753
    return-void
.end method

.method public pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 3
    .parameter "attrSet"

    .prologue
    .line 2706
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    return-void
.end method

.method public pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "elem"

    .prologue
    .line 2419
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    return-void
.end method

.method protected pushGlobalVars(I)V
    .registers 14
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1642
    iget-object v11, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 1643
    .local v11, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v11}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v10

    .line 1644
    .local v10, vs:Lorg/apache/xpath/VariableStack;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    .line 1645
    .local v8, sr:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v9

    .line 1647
    .local v9, vars:Ljava/util/Vector;
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    .line 1648
    .local v7, i:I
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 1650
    :cond_15
    :goto_15
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_36

    .line 1652
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemVariable;

    .line 1655
    .local v1, v:Lorg/apache/xalan/templates/ElemVariable;
    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariable;

    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/XUnresolvedVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V

    .line 1658
    .local v0, xobj:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->elementAt(I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1659
    invoke-virtual {v10, v7, v0}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_15

    .line 1662
    .end local v0           #xobj:Lorg/apache/xpath/objects/XObject;
    .end local v1           #v:Lorg/apache/xalan/templates/ElemVariable;
    :cond_36
    return-void
.end method

.method public pushMode(Lorg/apache/xml/utils/QName;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 2907
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    return-void
.end method

.method public pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V
    .registers 4
    .parameter "template"
    .parameter "child"

    .prologue
    .line 2501
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    .line 2503
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    if-eqz v0, :cond_5d

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 434
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 438
    :try_start_10
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_5e

    .line 443
    :cond_15
    :goto_15
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 447
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 449
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->reset()V

    .line 451
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->reset()V

    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->resetUserParameters()V

    .line 455
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    .line 456
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 457
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    .line 459
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 460
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 461
    new-instance v0, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 462
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 463
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 464
    new-instance v0, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 466
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    .line 468
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    .line 472
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->reset()V

    .line 476
    :cond_5d
    return-void

    .line 440
    :catch_5e
    move-exception v0

    goto :goto_15
.end method

.method public run()V
    .registers 4

    .prologue
    .line 3088
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 3106
    :try_start_3
    iget v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    invoke-virtual {p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_16

    .line 3123
    :try_start_8
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_15

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_2d

    .line 3143
    :cond_15
    :goto_15
    return-void

    .line 3109
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 3114
    .local v0, e:Ljava/lang/Exception;
    :try_start_18
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_37

    .line 3115
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_41

    .line 3123
    :try_start_1f
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_15

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2d

    goto :goto_15

    .line 3134
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 3138
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_51

    .line 3139
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    goto :goto_15

    .line 3117
    :cond_37
    :try_start_37
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_41

    .line 3123
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_41
    move-exception v1

    move-object v2, v1

    :try_start_43
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_50

    .line 3125
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    :cond_50
    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_2d

    .line 3141
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runTransformThread()V
    .registers 2

    .prologue
    .line 2942
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    .line 2943
    return-void
.end method

.method public runTransformThread(I)V
    .registers 3
    .parameter "priority"

    .prologue
    .line 2931
    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object v0

    .line 2932
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    .line 2933
    return-void
.end method

.method public setBaseURLOfSource(Ljava/lang/String;)V
    .registers 2
    .parameter "base"

    .prologue
    .line 700
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    .line 701
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 6
    .parameter "handler"

    .prologue
    .line 1704
    if-nez p1, :cond_f

    .line 1706
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ER_NULL_CONTENT_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1710
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1712
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v1, :cond_23

    .line 1714
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1715
    .local v0, h:Lorg/apache/xml/serializer/ToXMLSAXHandler;
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1716
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1718
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1723
    .end local v0           #h:Lorg/apache/xml/serializer/ToXMLSAXHandler;
    :goto_22
    return-void

    .line 1721
    :cond_23
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_22
.end method

.method public setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 2439
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    .line 2440
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 6
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2823
    if-nez p1, :cond_15

    .line 2824
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NULL_ERROR_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2827
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1

    .line 2826
    :cond_15
    :try_start_15
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 2827
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    .line 2828
    return-void
.end method

.method public setExceptionThrown(Ljava/lang/Exception;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 3016
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 3017
    return-void
.end method

.method setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 385
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionsTable;

    invoke-direct {v1, p1}, Lorg/apache/xalan/extensions/ExtensionsTable;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 389
    :cond_d
    :goto_d
    return-void

    .line 387
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 388
    .local v0, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_d
.end method

.method public setOutputFormat(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 2
    .parameter "oformat"

    .prologue
    .line 1349
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 1350
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .registers 6
    .parameter "oformat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 874
    if-eqz p1, :cond_37

    .line 878
    :try_start_5
    const-string v2, "method"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 880
    .local v0, method:Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 881
    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v2, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 885
    :cond_16
    :goto_16
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 889
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 896
    .end local v0           #method:Ljava/lang/String;
    :goto_26
    monitor-exit v1

    .line 897
    return-void

    .line 882
    .restart local v0       #method:Ljava/lang/String;
    :cond_28
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v2, :cond_16

    .line 883
    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v2}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_16

    .line 896
    .end local v0           #method:Ljava/lang/String;
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v2

    .line 894
    :cond_37
    const/4 v2, 0x0

    :try_start_38
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_34

    goto :goto_26
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 836
    :try_start_3
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v0, :cond_17

    .line 838
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 842
    :cond_17
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    .line 846
    :cond_32
    :try_start_32
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_2f

    .line 848
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1417
    if-nez p2, :cond_15

    .line 1418
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1421
    :cond_15
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "{}"

    invoke-direct {v2, p1, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1428
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, s1:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1431
    .local v1, s2:Ljava/lang/String;
    :goto_2b
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v3, :cond_36

    .line 1432
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    .line 1434
    :cond_36
    if-nez v1, :cond_4f

    .line 1436
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1437
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1450
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    :goto_4c
    return-void

    .restart local v0       #s1:Ljava/lang/String;
    :cond_4d
    move-object v1, v4

    .line 1429
    goto :goto_2b

    .line 1441
    .restart local v1       #s2:Ljava/lang/String;
    :cond_4f
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1442
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_62} :catch_63

    goto :goto_4c

    .line 1445
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    :catch_63
    move-exception v3

    goto :goto_4c
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .parameter "name"
    .parameter "namespace"
    .parameter "value"

    .prologue
    .line 1383
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    .line 1384
    .local v5, varstack:Lorg/apache/xpath/VariableStack;
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .local v1, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-static {p3, v7}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    .line 1387
    .local v6, xobject:Lorg/apache/xpath/objects/XObject;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1388
    .local v2, sroot:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v4

    .line 1389
    .local v4, vars:Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1390
    .local v0, i:I
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3f

    .line 1392
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    .line 1393
    .local v3, variable:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_1f

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1396
    invoke-virtual {v5, v0, v6}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_1f

    .line 1399
    .end local v3           #variable:Lorg/apache/xalan/templates/ElemVariable;
    :cond_3f
    return-void
.end method

.method public setParameters(Ljava/util/Properties;)V
    .registers 10
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 1573
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->clearParameters()V

    .line 1575
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 1577
    .local v1, names:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1579
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, name:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "{}"

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1587
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :try_start_20
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, s1:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1590
    .local v3, s2:Ljava/lang/String;
    :goto_2f
    if-nez v3, :cond_3e

    .line 1591
    const/4 v5, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 1595
    .end local v2           #s1:Ljava/lang/String;
    .end local v3           #s2:Ljava/lang/String;
    :catch_3a
    move-exception v5

    goto :goto_8

    .restart local v2       #s1:Ljava/lang/String;
    :cond_3c
    move-object v3, v7

    .line 1588
    goto :goto_2f

    .line 1593
    .restart local v3       #s2:Ljava/lang/String;
    :cond_3e
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/util/NoSuchElementException; {:try_start_20 .. :try_end_45} :catch_3a

    goto :goto_8

    .line 1601
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #s1:Ljava/lang/String;
    .end local v3           #s2:Ljava/lang/String;
    .end local v4           #tokenizer:Ljava/util/StringTokenizer;
    :cond_46
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2
    .parameter "xoh"

    .prologue
    .line 3196
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 3197
    return-void
.end method

.method public setSourceTreeDocForThread(I)V
    .registers 2
    .parameter "doc"

    .prologue
    .line 3027
    iput p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    .line 3028
    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "stylesheetRoot"

    .prologue
    .line 2588
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 2589
    return-void
.end method

.method public setTransformThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 499
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    .line 500
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    .line 1673
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1675
    :try_start_3
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 1676
    monitor-exit v0

    .line 1677
    return-void

    .line 1676
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setXPathContext(Lorg/apache/xpath/XPathContext;)V
    .registers 2
    .parameter "xcontext"

    .prologue
    .line 2624
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2625
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;)V
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 525
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .registers 4
    .parameter "xmlSource"
    .parameter "outputTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    .line 1124
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .registers 7
    .parameter "xmlSource"
    .parameter "outputTarget"
    .parameter "shouldRelease"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1140
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 1141
    .local v0, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1143
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1145
    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 1146
    monitor-exit v1

    .line 1147
    return-void

    .line 1146
    .end local v0           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public transform(Ljavax/xml/transform/Source;Z)V
    .registers 24
    .parameter "source"
    .parameter "shouldRelease"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 544
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    if-nez v3, :cond_15

    .line 545
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 547
    :cond_15
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, base:Ljava/lang/String;
    if-nez v8, :cond_24

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 556
    :cond_24
    if-nez v8, :cond_68

    .line 558
    const-string v11, ""
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_0 .. :try_end_28} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_28} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_28} :catch_165

    .line 560
    .local v11, currentDir:Ljava/lang/String;
    :try_start_28
    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_19e
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2d} :catch_1e7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_28 .. :try_end_2d} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_28 .. :try_end_2d} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_28 .. :try_end_2d} :catch_165

    move-result-object v11

    .line 564
    :goto_2e
    :try_start_2e
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 569
    :goto_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 572
    .end local v11           #currentDir:Ljava/lang/String;
    :cond_68
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    .line 582
    .local v2, mgr:Lorg/apache/xml/dtm/DTMManager;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move v3, v0

    if-eqz v3, :cond_9a

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9a

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_9a

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_c9

    :cond_9a
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move v3, v0

    if-eqz v3, :cond_b7

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v3

    if-nez v3, :cond_b7

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    if-eqz v3, :cond_c9

    :cond_b7
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move v3, v0

    if-eqz v3, :cond_ec

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_c6
    .catchall {:try_start_2e .. :try_end_c6} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_2e .. :try_end_c6} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2e .. :try_end_c6} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_c6} :catch_165

    move-result-object v3

    if-nez v3, :cond_ec

    .line 590
    :cond_c9
    :try_start_c9
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 592
    .local v10, builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 593
    .local v9, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v18

    .line 594
    .local v18, systemID:Ljava/lang/String;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_e1
    .catchall {:try_start_c9 .. :try_end_e1} :catchall_19e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c9 .. :try_end_e1} :catch_141
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c9 .. :try_end_e1} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_c9 .. :try_end_e1} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_c9 .. :try_end_e1} :catch_165

    .line 597
    .end local p1
    .local v16, source:Ljavax/xml/transform/Source;
    if-eqz v18, :cond_ea

    .line 598
    :try_start_e3
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_1ca
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e3 .. :try_end_ea} :catch_1e1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e3 .. :try_end_ea} :catch_1da
    .catch Lorg/xml/sax/SAXParseException; {:try_start_e3 .. :try_end_ea} :catch_1d3
    .catch Lorg/xml/sax/SAXException; {:try_start_e3 .. :try_end_ea} :catch_1ce

    :cond_ea
    move-object/from16 p1, v16

    .line 604
    .end local v9           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v10           #builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16           #source:Ljavax/xml/transform/Source;
    .end local v18           #systemID:Ljava/lang/String;
    .restart local p1
    :cond_ec
    :goto_ec
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    :try_start_f3
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 605
    .local v12, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v8}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f3 .. :try_end_fa} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_f3 .. :try_end_fa} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_f3 .. :try_end_fa} :catch_165

    .line 607
    const/4 v14, 0x1

    .line 614
    .local v14, hardDelete:Z
    :try_start_fb
    invoke-interface {v12}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_105
    .catchall {:try_start_fb .. :try_end_105} :catchall_15e

    .line 618
    if-eqz p2, :cond_10a

    .line 619
    :try_start_107
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    .line 627
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v13

    .line 629
    .local v13, e:Ljava/lang/Exception;
    if-eqz v13, :cond_1a9

    .line 631
    instance-of v3, v13, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_17e

    .line 633
    check-cast v13, Ljavax/xml/transform/TransformerException;

    .end local v13           #e:Ljava/lang/Exception;
    throw v13
    :try_end_117
    .catchall {:try_start_107 .. :try_end_117} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_107 .. :try_end_117} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_107 .. :try_end_117} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_107 .. :try_end_117} :catch_165

    .line 650
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v8           #base:Ljava/lang/String;
    .end local v12           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v14           #hardDelete:Z
    :catch_117
    move-exception v3

    move-object/from16 v20, v3

    .line 652
    .local v20, wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :goto_11a
    :try_start_11a
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v19

    .line 655
    .local v19, throwable:Ljava/lang/Throwable;
    :goto_11e
    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move v3, v0

    if-eqz v3, :cond_1b9

    .line 657
    check-cast v19, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v19           #throwable:Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_12a
    .catchall {:try_start_11a .. :try_end_12a} :catchall_19e

    move-result-object v19

    .restart local v19       #throwable:Ljava/lang/Throwable;
    goto :goto_11e

    .line 567
    .end local v19           #throwable:Ljava/lang/Throwable;
    .end local v20           #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    .restart local v8       #base:Ljava/lang/String;
    .restart local v11       #currentDir:Ljava/lang/String;
    :cond_12c
    :try_start_12c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_49

    .line 600
    .end local v11           #currentDir:Ljava/lang/String;
    .restart local v2       #mgr:Lorg/apache/xml/dtm/DTMManager;
    :catch_141
    move-exception v3

    move-object v13, v3

    .line 601
    .local v13, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_143
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_149
    .catchall {:try_start_12c .. :try_end_149} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_12c .. :try_end_149} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_12c .. :try_end_149} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_12c .. :try_end_149} :catch_165

    goto :goto_ec

    .line 665
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v8           #base:Ljava/lang/String;
    .end local v13           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_14a
    move-exception v3

    move-object/from16 v17, v3

    .line 667
    .local v17, spe:Lorg/xml/sax/SAXParseException;
    :goto_14d
    :try_start_14d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_19e

    .line 675
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 680
    .end local v17           #spe:Lorg/xml/sax/SAXParseException;
    :goto_15d
    return-void

    .line 618
    .restart local v2       #mgr:Lorg/apache/xml/dtm/DTMManager;
    .restart local v8       #base:Ljava/lang/String;
    .restart local v12       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v14       #hardDelete:Z
    :catchall_15e
    move-exception v3

    if-eqz p2, :cond_164

    .line 619
    :try_start_161
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    :cond_164
    throw v3
    :try_end_165
    .catchall {:try_start_161 .. :try_end_165} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_161 .. :try_end_165} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_161 .. :try_end_165} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_161 .. :try_end_165} :catch_165

    .line 669
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v8           #base:Ljava/lang/String;
    .end local v12           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v14           #hardDelete:Z
    :catch_165
    move-exception v3

    move-object v15, v3

    .line 671
    .local v15, se:Lorg/xml/sax/SAXException;
    :goto_167
    :try_start_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object v3, v0

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_174
    .catchall {:try_start_167 .. :try_end_174} :catchall_19e

    .line 675
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_15d

    .line 635
    .end local v15           #se:Lorg/xml/sax/SAXException;
    .restart local v2       #mgr:Lorg/apache/xml/dtm/DTMManager;
    .restart local v8       #base:Ljava/lang/String;
    .restart local v12       #dtm:Lorg/apache/xml/dtm/DTM;
    .local v13, e:Ljava/lang/Exception;
    .restart local v14       #hardDelete:Z
    :cond_17e
    :try_start_17e
    instance-of v3, v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_198

    .line 637
    check-cast v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v13           #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_18e
    .catchall {:try_start_17e .. :try_end_18e} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_17e .. :try_end_18e} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_17e .. :try_end_18e} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_17e .. :try_end_18e} :catch_165

    .line 675
    :cond_18e
    :goto_18e
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_15d

    .line 642
    .restart local v13       #e:Ljava/lang/Exception;
    :cond_198
    :try_start_198
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_19e
    .catchall {:try_start_198 .. :try_end_19e} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_198 .. :try_end_19e} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_198 .. :try_end_19e} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_198 .. :try_end_19e} :catch_165

    .line 675
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v8           #base:Ljava/lang/String;
    .end local v12           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #hardDelete:Z
    :catchall_19e
    move-exception v3

    :goto_19f
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v3

    .line 645
    .restart local v2       #mgr:Lorg/apache/xml/dtm/DTMManager;
    .restart local v8       #base:Ljava/lang/String;
    .restart local v12       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v13       #e:Ljava/lang/Exception;
    .restart local v14       #hardDelete:Z
    :cond_1a9
    :try_start_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v3, v0

    if-eqz v3, :cond_18e

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_1b8
    .catchall {:try_start_1a9 .. :try_end_1b8} :catchall_19e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1a9 .. :try_end_1b8} :catch_117
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1a9 .. :try_end_1b8} :catch_14a
    .catch Lorg/xml/sax/SAXException; {:try_start_1a9 .. :try_end_1b8} :catch_165

    goto :goto_18e

    .line 661
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v8           #base:Ljava/lang/String;
    .end local v12           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #hardDelete:Z
    .restart local v19       #throwable:Ljava/lang/Throwable;
    .restart local v20       #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_1b9
    :try_start_1b9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_1c0
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_19e

    .line 675
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_15d

    .line 675
    .end local v19           #throwable:Ljava/lang/Throwable;
    .end local v20           #wre:Lorg/apache/xml/utils/WrappedRuntimeException;
    .end local p1
    .restart local v2       #mgr:Lorg/apache/xml/dtm/DTMManager;
    .restart local v8       #base:Ljava/lang/String;
    .restart local v9       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10       #builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16       #source:Ljavax/xml/transform/Source;
    .restart local v18       #systemID:Ljava/lang/String;
    :catchall_1ca
    move-exception v3

    move-object/from16 p1, v16

    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto :goto_19f

    .line 669
    .end local p1
    .restart local v16       #source:Ljavax/xml/transform/Source;
    :catch_1ce
    move-exception v3

    move-object v15, v3

    move-object/from16 p1, v16

    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto :goto_167

    .line 665
    .end local p1
    .restart local v16       #source:Ljavax/xml/transform/Source;
    :catch_1d3
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 p1, v16

    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto/16 :goto_14d

    .line 650
    .end local p1
    .restart local v16       #source:Ljavax/xml/transform/Source;
    :catch_1da
    move-exception v3

    move-object/from16 v20, v3

    move-object/from16 p1, v16

    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto/16 :goto_11a

    .line 600
    .end local p1
    .restart local v16       #source:Ljavax/xml/transform/Source;
    :catch_1e1
    move-exception v3

    move-object v13, v3

    move-object/from16 p1, v16

    .end local v16           #source:Ljavax/xml/transform/Source;
    .restart local p1
    goto/16 :goto_143

    .line 562
    .end local v2           #mgr:Lorg/apache/xml/dtm/DTMManager;
    .end local v9           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v10           #builderF:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18           #systemID:Ljava/lang/String;
    .restart local v11       #currentDir:Ljava/lang/String;
    :catch_1e7
    move-exception v3

    goto/16 :goto_2e
.end method

.method public transformNode(I)V
    .registers 26
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1188
    const/16 v20, 0x0

    :try_start_14
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v18

    .line 1191
    .local v18, xctxt:Lorg/apache/xpath/XPathContext;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_f1

    move-result-object v5

    .line 1195
    .local v5, dtm:Lorg/apache/xml/dtm/DTM;
    :try_start_26
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushGlobalVars(I)V

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v16

    .line 1201
    .local v16, stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v13

    .line 1203
    .local v13, n:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_32
    if-ge v8, v13, :cond_63

    .line 1205
    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    .line 1206
    .local v9, imported:Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v11

    .line 1208
    .local v11, includedCount:I
    const/4 v12, -0x1

    .local v12, j:I
    :goto_40
    if-ge v12, v11, :cond_60

    .line 1210
    invoke-virtual {v9, v12}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v10

    .line 1212
    .local v10, included:Lorg/apache/xalan/templates/Stylesheet;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1214
    invoke-virtual {v10}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 1215
    .local v4, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_50
    if-eqz v4, :cond_5d

    .line 1217
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1215
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    goto :goto_50

    .line 1208
    :cond_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_40

    .line 1203
    .end local v4           #child:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v10           #included:Lorg/apache/xalan/templates/Stylesheet;
    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 1223
    .end local v9           #imported:Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v11           #includedCount:I
    .end local v12           #j:I
    :cond_63
    new-instance v6, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v6}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>()V

    .line 1224
    .local v6, dtmIter:Lorg/apache/xml/dtm/DTMIterator;
    move-object v0, v6

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 1225
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_76
    .catchall {:try_start_26 .. :try_end_76} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_76} :catch_a3

    .line 1228
    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    :try_end_85
    .catchall {:try_start_7a .. :try_end_85} :catchall_9e

    .line 1232
    :try_start_85
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_99

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_99} :catch_a3

    .line 1297
    :cond_99
    :try_start_99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 1299
    .end local v6           #dtmIter:Lorg/apache/xml/dtm/DTMIterator;
    .end local v8           #i:I
    .end local v13           #n:I
    .end local v16           #stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    :goto_9c
    monitor-exit v19
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_f1

    .line 1300
    return-void

    .line 1232
    .restart local v6       #dtmIter:Lorg/apache/xml/dtm/DTMIterator;
    .restart local v8       #i:I
    .restart local v13       #n:I
    .restart local v16       #stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    :catchall_9e
    move-exception v20

    :try_start_9f
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    throw v20
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_a3

    .line 1242
    .end local v6           #dtmIter:Lorg/apache/xml/dtm/DTMIterator;
    .end local v8           #i:I
    .end local v13           #n:I
    .end local v16           #stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    :catch_a3
    move-exception v20

    move-object/from16 v14, v20

    .line 1252
    .local v14, se:Ljava/lang/Exception;
    :cond_a6
    :goto_a6
    :try_start_a6
    move-object v0, v14

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v20, v0

    if-eqz v20, :cond_b9

    .line 1254
    move-object v0, v14

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 1255
    .local v7, e:Ljava/lang/Exception;
    if-eqz v7, :cond_a6

    .line 1256
    move-object v14, v7

    goto :goto_a6

    .line 1259
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0
    :try_end_bf
    .catchall {:try_start_a6 .. :try_end_bf} :catchall_147

    if-eqz v20, :cond_d8

    .line 1263
    :try_start_c1
    move-object v0, v14

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    move/from16 v20, v0

    if-eqz v20, :cond_f4

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object v15, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_d8
    .catchall {:try_start_c1 .. :try_end_d8} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d8} :catch_126

    .line 1279
    :cond_d8
    :goto_d8
    :try_start_d8
    move-object v0, v14

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v20, v0

    if-eqz v20, :cond_14c

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v20, v0

    check-cast v14, Ljavax/xml/transform/TransformerException;

    .end local v14           #se:Ljava/lang/Exception;
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_147

    .line 1297
    :goto_ed
    :try_start_ed
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_9c

    .line 1299
    .end local v5           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v18           #xctxt:Lorg/apache/xpath/XPathContext;
    :catchall_f1
    move-exception v20

    monitor-exit v19
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_f1

    throw v20

    .line 1265
    .restart local v5       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v14       #se:Ljava/lang/Exception;
    .restart local v18       #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_f4
    :try_start_f4
    move-object v0, v14

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v20, v0

    if-eqz v20, :cond_128

    .line 1267
    move-object v0, v14

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object/from16 v17, v0

    .line 1268
    .local v17, te:Ljavax/xml/transform/TransformerException;
    new-instance v15, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    .line 1269
    .local v15, sl:Lorg/apache/xml/utils/SAXSourceLocator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v15

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_d8

    .line 1276
    .end local v15           #sl:Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v17           #te:Ljavax/xml/transform/TransformerException;
    :catch_126
    move-exception v20

    goto :goto_d8

    .line 1273
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct/range {v23 .. v23}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_146
    .catchall {:try_start_f4 .. :try_end_146} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_146} :catch_126

    goto :goto_d8

    .line 1297
    .end local v14           #se:Ljava/lang/Exception;
    :catchall_147
    move-exception v20

    :try_start_148
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v20
    :try_end_14c
    .catchall {:try_start_148 .. :try_end_14c} :catchall_f1

    .line 1283
    .restart local v14       #se:Ljava/lang/Exception;
    :cond_14c
    :try_start_14c
    move-object v0, v14

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    move/from16 v20, v0

    if-eqz v20, :cond_17a

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v20, v0

    new-instance v21, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object v15, v0

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface/range {v20 .. v21}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto/16 :goto_ed

    .line 1291
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v20, v0

    new-instance v21, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v20 .. v21}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_18b
    .catchall {:try_start_14c .. :try_end_18b} :catchall_147

    goto/16 :goto_ed
.end method

.method public transformNode(ILjavax/xml/transform/Result;)V
    .registers 4
    .parameter "node"
    .parameter "outputTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1164
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 1165
    .local v0, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1167
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1169
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V

    .line 1170
    return-void
.end method

.method public transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 4
    .parameter "templateParent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1774
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1775
    .local v0, dtmFrag:Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 4
    .parameter "templateParent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1751
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1752
    .local v0, dtmFrag:Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;
    .registers 11
    .parameter "elem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1875
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1876
    .local v0, firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_a

    .line 1877
    const-string v6, ""

    .line 1944
    .end local v0           #firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_9
    return-object v6

    .line 1878
    .restart local v0       #firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_a
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-boolean v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v6, :cond_1b

    .line 1880
    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    .end local v0           #firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 1884
    .restart local v0       #firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1b
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1888
    .local v2, savedRTreeHandler:Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/StringWriter;

    .line 1890
    .local v5, sw:Ljava/io/StringWriter;
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/serializer/ToTextStream;

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1893
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v6, :cond_41

    .line 1898
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v6}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v4

    .line 1900
    .local v4, serializer:Lorg/apache/xml/serializer/Serializer;
    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    .end local v4           #serializer:Lorg/apache/xml/serializer/Serializer;
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1903
    :cond_41
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1904
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 1917
    const/4 v6, 0x1

    :try_start_4c
    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1918
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    .line 1920
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_7f
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_57} :catch_77

    move-result-object v1

    .line 1928
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1932
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_9e

    .line 1936
    :goto_62
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1937
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    .line 1938
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1941
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v6, v1

    .line 1944
    goto :goto_9

    .line 1922
    .end local v1           #result:Ljava/lang/String;
    :catch_77
    move-exception v6

    move-object v3, v6

    .line 1924
    .local v3, se:Lorg/xml/sax/SAXException;
    :try_start_79
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_7f

    .line 1928
    .end local v3           #se:Lorg/xml/sax/SAXException;
    :catchall_7f
    move-exception v6

    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1932
    :try_start_87
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_a0

    .line 1936
    :goto_8a
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1937
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    .line 1938
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1941
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    .line 1934
    .restart local v1       #result:Ljava/lang/String;
    :catch_9e
    move-exception v6

    goto :goto_62

    .end local v1           #result:Ljava/lang/String;
    :catch_a0
    move-exception v7

    goto :goto_8a
.end method

.method public waitTransformThread()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2970
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2972
    .local v1, transformThread:Ljava/lang/Thread;
    if-eqz v1, :cond_1f

    .line 2976
    :try_start_6
    invoke-static {v1, p0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 2978
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2980
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    .line 2982
    .local v0, e:Ljava/lang/Exception;
    if-eqz v0, :cond_20

    .line 2984
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2985
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 2991
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 2993
    :cond_1f
    :goto_1f
    return-void

    .line 2989
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_24} :catch_1e

    goto :goto_1f
.end method
