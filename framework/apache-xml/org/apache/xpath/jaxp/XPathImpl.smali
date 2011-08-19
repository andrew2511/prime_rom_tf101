.class public Lorg/apache/xpath/jaxp/XPathImpl;
.super Ljava/lang/Object;
.source "XPathImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# static fields
.field private static d:Lorg/w3c/dom/Document;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 4
    .parameter "vr"
    .parameter "fr"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 73
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 74
    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .registers 5
    .parameter "vr"
    .parameter "fr"
    .parameter "featureSecureProcessing"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    .line 78
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 79
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 80
    iput-boolean p3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    .line 81
    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .parameter "expression"
    .parameter "contextItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 195
    new-instance v2, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-direct {v2, p1, v4, v5, v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    .line 197
    .local v2, xpath:Lorg/apache/xpath/XPath;
    const/4 v3, 0x0

    .line 202
    .local v3, xpathSupport:Lorg/apache/xpath/XPathContext;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz v4, :cond_34

    .line 203
    new-instance v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    .line 205
    .local v0, jep:Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    new-instance v3, Lorg/apache/xpath/XPathContext;

    .end local v3           #xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v0, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    .line 210
    .end local v0           #jep:Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    .restart local v3       #xpathSupport:Lorg/apache/xpath/XPathContext;
    :goto_1c
    const/4 v1, 0x0

    .line 212
    .local v1, xobj:Lorg/apache/xpath/objects/XObject;
    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 215
    instance-of v4, p2, Lorg/w3c/dom/Node;

    if-eqz v4, :cond_3a

    .line 216
    check-cast p2, Lorg/w3c/dom/Node;

    .end local p2
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v2, v3, p2, v4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 222
    :goto_33
    return-object v1

    .line 207
    .end local v1           #xobj:Lorg/apache/xpath/objects/XObject;
    .restart local p2
    :cond_34
    new-instance v3, Lorg/apache/xpath/XPathContext;

    .end local v3           #xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .restart local v3       #xpathSupport:Lorg/apache/xpath/XPathContext;
    goto :goto_1c

    .line 219
    .restart local v1       #xobj:Lorg/apache/xpath/objects/XObject;
    :cond_3a
    const/4 v4, -0x1

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    goto :goto_33
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .registers 4

    .prologue
    .line 184
    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    if-nez v1, :cond_17

    .line 185
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 186
    .local v0, dim:Lorg/w3c/dom/DOMImplementation;
    const-string v1, "http://java.sun.com/jaxp/xpath"

    const-string v2, "dummyroot"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    sput-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    .line 189
    .end local v0           #dim:Lorg/w3c/dom/DOMImplementation;
    :cond_17
    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-object v1
.end method

.method private static getParser()Ljavax/xml/parsers/DocumentBuilder;
    .registers 4

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 172
    .local v0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 174
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    .line 175
    .end local v0           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 177
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 9
    .parameter "resultObject"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 317
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_c
    return-object v2

    .line 320
    :cond_d
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 321
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_c

    .line 324
    :cond_1f
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 325
    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_c

    .line 328
    :cond_31
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v2

    goto :goto_c

    .line 332
    :cond_3e
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 333
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    .line 335
    .local v1, ni:Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_c

    .line 337
    .end local v1           #ni:Lorg/w3c/dom/traversal/NodeIterator;
    :cond_4f
    const-string v2, "ER_UNSUPPORTED_RETURN_TYPE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, fmsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isSupported(Ljavax/xml/namespace/QName;)Z
    .registers 3
    .parameter "returnType"

    .prologue
    .line 302
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 308
    :cond_28
    const/4 v0, 0x1

    .line 310
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .registers 10
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 393
    if-nez p1, :cond_16

    .line 394
    const-string v2, "ER_ARG_CANNOT_BE_NULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "XPath expression"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, fmsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    .end local v6           #fmsg:Ljava/lang/String;
    :cond_16
    :try_start_16
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    .line 403
    .local v1, xpath:Lorg/apache/xpath/XPath;
    new-instance v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;-><init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    :try_end_2c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 406
    .local v0, ximpl:Lorg/apache/xpath/jaxp/XPathExpressionImpl;
    return-object v0

    .line 407
    .end local v0           #ximpl:Lorg/apache/xpath/jaxp/XPathExpressionImpl;
    .end local v1           #xpath:Lorg/apache/xpath/XPath;
    :catch_2d
    move-exception v2

    move-object v7, v2

    .line 408
    .local v7, te:Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v2, v7}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 13
    .parameter "expression"
    .parameter "item"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 258
    if-nez p1, :cond_16

    .line 259
    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "XPath expression"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, fmsg:Ljava/lang/String;
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    if-nez p3, :cond_2a

    .line 265
    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "returnType"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 272
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_2a
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 273
    const-string v5, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 281
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_44
    :try_start_44
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    .line 282
    .local v3, resultObject:Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v3, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_4b} :catch_4d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_44 .. :try_end_4b} :catch_55

    move-result-object v5

    return-object v5

    .line 283
    .end local v3           #resultObject:Lorg/apache/xpath/objects/XObject;
    :catch_4d
    move-exception v5

    move-object v2, v5

    .line 287
    .local v2, npe:Ljava/lang/NullPointerException;
    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v5, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 288
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :catch_55
    move-exception v5

    move-object v4, v5

    .line 289
    .local v4, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 290
    .local v1, nestedException:Ljava/lang/Throwable;
    instance-of v5, v1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v5, :cond_62

    .line 291
    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    .end local v1           #nestedException:Ljava/lang/Throwable;
    throw v1

    .line 295
    .restart local v1       #nestedException:Ljava/lang/Throwable;
    :cond_62
    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v5, v4}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 14
    .parameter "expression"
    .parameter "source"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 444
    if-nez p2, :cond_16

    .line 445
    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "source"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, fmsg:Ljava/lang/String;
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 450
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_16
    if-nez p1, :cond_2a

    .line 451
    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "XPath expression"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .restart local v2       #fmsg:Ljava/lang/String;
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 456
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_2a
    if-nez p3, :cond_3e

    .line 457
    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "returnType"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2       #fmsg:Ljava/lang/String;
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_3e
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 466
    const-string v6, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2       #fmsg:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 474
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_58
    :try_start_58
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 476
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    .line 477
    .local v4, resultObject:Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v4, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_67
    .catch Lorg/xml/sax/SAXException; {:try_start_58 .. :try_end_67} :catch_69
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_67} :catch_71
    .catch Ljavax/xml/transform/TransformerException; {:try_start_58 .. :try_end_67} :catch_79

    move-result-object v6

    return-object v6

    .line 478
    .end local v0           #document:Lorg/w3c/dom/Document;
    .end local v4           #resultObject:Lorg/apache/xpath/objects/XObject;
    :catch_69
    move-exception v6

    move-object v1, v6

    .line 479
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 480
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_71
    move-exception v6

    move-object v1, v6

    .line 481
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 482
    .end local v1           #e:Ljava/io/IOException;
    :catch_79
    move-exception v6

    move-object v5, v6

    .line 483
    .local v5, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v3

    .line 484
    .local v3, nestedException:Ljava/lang/Throwable;
    instance-of v6, v3, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v6, :cond_86

    .line 485
    check-cast v3, Ljavax/xml/xpath/XPathFunctionException;

    .end local v3           #nestedException:Ljava/lang/Throwable;
    throw v3

    .line 487
    .restart local v3       #nestedException:Ljava/lang/Throwable;
    :cond_86
    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v5}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "expression"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 4
    .parameter "expression"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 521
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object v0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 541
    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 543
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .registers 7
    .parameter "nsContext"

    .prologue
    .line 137
    if-nez p1, :cond_16

    .line 138
    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NamespaceContext"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 144
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-direct {v1, p1}, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    .line 145
    return-void
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 7
    .parameter "resolver"

    .prologue
    .line 113
    if-nez p1, :cond_16

    .line 114
    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFunctionResolver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 120
    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 7
    .parameter "resolver"

    .prologue
    .line 89
    if-nez p1, :cond_16

    .line 90
    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathVariableResolver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 96
    return-void
.end method
