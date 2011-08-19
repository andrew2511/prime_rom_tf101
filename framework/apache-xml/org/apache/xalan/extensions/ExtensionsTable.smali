.class public Lorg/apache/xalan/extensions/ExtensionsTable;
.super Ljava/lang/Object;
.source "ExtensionsTable.java"


# instance fields
.field public m_extensionFunctionNamespaces:Ljava/util/Hashtable;

.field private m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 7
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 61
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v2

    .line 62
    .local v2, extensions:Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    .line 66
    .local v1, extNamespaceSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->launch()Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v0

    .line 67
    .local v0, extHandler:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_2c

    .line 68
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/apache/xalan/extensions/ExtensionsTable;->addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V

    .line 62
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 70
    .end local v0           #extHandler:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v1           #extNamespaceSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    :cond_2f
    return-void
.end method


# virtual methods
.method public addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V
    .registers 4
    .parameter "uri"
    .parameter "extNS"

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ns"
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, isAvailable:Z
    if-eqz p1, :cond_11

    .line 138
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    .line 140
    .local v0, extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_11

    .line 141
    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isElementAvailable(Ljava/lang/String;)Z

    move-result v1

    .line 143
    .end local v0           #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    :cond_11
    return v1
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .registers 13
    .parameter "ns"
    .parameter "funcName"
    .parameter "argVec"
    .parameter "methodKey"
    .parameter "exprContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, result:Ljava/lang/Object;
    if-eqz p1, :cond_11

    .line 169
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionHandler;

    .line 171
    .local v1, extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v1, :cond_1b

    .line 175
    :try_start_d
    invoke-virtual {v1, p2, p3, p4, p5}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_14

    move-result-object v2

    .line 193
    .end local v1           #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v2           #result:Ljava/lang/Object;
    :cond_11
    return-object v2

    .line 178
    .restart local v1       #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v2       #result:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 180
    .local v0, e:Ljavax/xml/transform/TransformerException;
    throw v0

    .line 182
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    :catch_14
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1b
    new-instance v3, Lorg/apache/xpath/XPathProcessorException;

    const-string v4, "ER_EXTENSION_FUNC_UNKNOWN"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .registers 13
    .parameter "extFunction"
    .parameter "argVec"
    .parameter "exprContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, result:Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, ns:Ljava/lang/String;
    if-eqz v2, :cond_15

    .line 216
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionHandler;

    .line 218
    .local v1, extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v1, :cond_1f

    .line 222
    :try_start_11
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_14
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_14} :catch_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_18

    move-result-object v3

    .line 239
    .end local v1           #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v3           #result:Ljava/lang/Object;
    :cond_15
    return-object v3

    .line 224
    .restart local v1       #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v3       #result:Ljava/lang/Object;
    :catch_16
    move-exception v0

    .line 226
    .local v0, e:Ljavax/xml/transform/TransformerException;
    throw v0

    .line 228
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    :catch_18
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1f
    new-instance v4, Lorg/apache/xpath/XPathProcessorException;

    const-string v5, "ER_EXTENSION_FUNC_UNKNOWN"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ns"
    .parameter "funcName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, isAvailable:Z
    if-eqz p1, :cond_11

    .line 115
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    .line 117
    .local v0, extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-eqz v0, :cond_11

    .line 118
    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isFunctionAvailable(Ljava/lang/String;)Z

    move-result v1

    .line 120
    .end local v0           #extNS:Lorg/apache/xalan/extensions/ExtensionHandler;
    :cond_11
    return v1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;
    .registers 3
    .parameter "extns"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/extensions/ExtensionHandler;

    return-object p0
.end method
