.class public Lorg/dom4j/DocumentFactory;
.super Ljava/lang/Object;
.source "DocumentFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$0:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field protected transient cache:Lorg/dom4j/tree/QNameCache;

.field private xpathNamespaceURIs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    .line 83
    return-void
.end method

.method protected static createSingleton(Ljava/lang/String;)Lorg/dom4j/DocumentFactory;
    .locals 6
    .parameter "className"

    .prologue
    .line 375
    const/4 v3, 0x1

    .line 376
    :try_start_0
    sget-object v4, Lorg/dom4j/DocumentFactory;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    const-string v4, "org.dom4j.DocumentFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    sput-object v4, Lorg/dom4j/DocumentFactory;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 375
    invoke-static {p0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 378
    .local v2, theClass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/dom4j/DocumentFactory;

    move-object p0, v0

    .end local p0
    move-object v3, p0

    .line 383
    .end local v2           #theClass:Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 376
    .restart local p0
    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 379
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 380
    .local v1, e:Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "WARNING: Cannot load DocumentFactory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    new-instance v3, Lorg/dom4j/DocumentFactory;

    invoke-direct {v3}, Lorg/dom4j/DocumentFactory;-><init>()V

    goto :goto_0
.end method

.method private static createSingleton()Lorg/dom4j/util/SingletonStrategy;
    .locals 7

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 60
    .local v3, result:Lorg/dom4j/util/SingletonStrategy;
    :try_start_0
    const-string v5, "org.dom4j.factory"

    .line 61
    const-string v6, "org.dom4j.DocumentFactory"

    .line 60
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    .local v1, documentFactoryClassName:Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v5, "org.dom4j.DocumentFactory.singleton.strategy"

    .line 69
    const-string v6, "org.dom4j.util.SimpleSingleton"

    .line 67
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, singletonClass:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Lorg/dom4j/util/SingletonStrategy;
    check-cast v3, Lorg/dom4j/util/SingletonStrategy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v4           #singletonClass:Ljava/lang/String;
    .restart local v3       #result:Lorg/dom4j/util/SingletonStrategy;
    :goto_1
    invoke-interface {v3, v1}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V

    .line 78
    return-object v3

    .line 62
    .end local v1           #documentFactoryClassName:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 63
    .local v2, e:Ljava/lang/Exception;
    const-string v1, "org.dom4j.DocumentFactory"

    .restart local v1       #documentFactoryClassName:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #result:Lorg/dom4j/util/SingletonStrategy;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 73
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v3, Lorg/dom4j/util/SimpleSingleton;

    invoke-direct {v3}, Lorg/dom4j/util/SimpleSingleton;-><init>()V

    .restart local v3       #result:Lorg/dom4j/util/SingletonStrategy;
    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lorg/dom4j/DocumentFactory;
    .locals 2

    .prologue
    .line 94
    const-class v1, Lorg/dom4j/DocumentFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lorg/dom4j/DocumentFactory;->createSingleton()Lorg/dom4j/util/SingletonStrategy;

    move-result-object v0

    sput-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 97
    :cond_0
    sget-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v0}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/DocumentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 413
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    .line 414
    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 160
    invoke-virtual {p0, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "qname"
    .parameter "value"

    .prologue
    .line 156
    new-instance v0, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1
    .parameter "text"

    .prologue
    .line 164
    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1
    .parameter "text"

    .prologue
    .line 168
    new-instance v0, Lorg/dom4j/tree/DefaultComment;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultComment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;
    .locals 1
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 140
    new-instance v0, Lorg/dom4j/tree/DefaultDocumentType;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 103
    .local v0, answer:Lorg/dom4j/tree/DefaultDocument;
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 105
    return-object v0
.end method

.method public createDocument(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3
    .parameter "encoding"

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 124
    .local v1, answer:Lorg/dom4j/Document;
    instance-of v2, v1, Lorg/dom4j/tree/AbstractDocument;

    if-eqz v2, :cond_0

    .line 125
    move-object v0, v1

    check-cast v0, Lorg/dom4j/tree/AbstractDocument;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/dom4j/tree/AbstractDocument;->setXMLEncoding(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-object v1
.end method

.method public createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .locals 1
    .parameter "rootElement"

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 133
    .local v0, answer:Lorg/dom4j/Document;
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 135
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qualifiedName"
    .parameter "namespaceURI"

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qname"

    .prologue
    .line 144
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 181
    new-instance v0, Lorg/dom4j/tree/DefaultEntity;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 185
    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1
    .parameter "xpathPattern"

    .prologue
    .line 315
    new-instance v0, Lorg/dom4j/xpath/XPathPattern;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/XPathPattern;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"

    .prologue
    .line 190
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"

    .prologue
    .line 195
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"

    .prologue
    .line 203
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .parameter "qualifiedName"
    .parameter "uri"

    .prologue
    .line 211
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2
    .parameter "name"
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 207
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .parameter "localName"
    .parameter "namespace"

    .prologue
    .line 199
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected createQNameCache()Lorg/dom4j/tree/QNameCache;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lorg/dom4j/tree/QNameCache;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/QNameCache;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-object v0
.end method

.method public createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 2
    .parameter "text"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v0, "Adding text to an XML document must not be null"

    .line 174
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/dom4j/tree/DefaultText;

    invoke-direct {v1, p1}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 2
    .parameter "xpathExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, xpath:Lorg/dom4j/xpath/DefaultXPath;
    iget-object v1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceURIs(Ljava/util/Map;)V

    .line 236
    :cond_0
    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpathExpression"
    .parameter "variableContext"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 255
    .local v0, xpath:Lorg/dom4j/XPath;
    invoke-interface {v0, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 257
    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "xpathFilterExpression"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/NodeFilter;
    .locals 1
    .parameter "xpathFilterExpression"
    .parameter "variableContext"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 279
    .local v0, answer:Lorg/dom4j/XPath;
    invoke-interface {v0, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 281
    return-object v0
.end method

.method public getQNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0}, Lorg/dom4j/tree/QNameCache;->getQNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXPathNamespaceURIs()Ljava/util/Map;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createQNameCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    .line 418
    return-void
.end method

.method protected intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;
    .locals 1
    .parameter "qname"

    .prologue
    .line 397
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public setXPathNamespaceURIs(Ljava/util/Map;)V
    .locals 0
    .parameter "namespaceURIs"

    .prologue
    .line 353
    iput-object p1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    .line 354
    return-void
.end method
