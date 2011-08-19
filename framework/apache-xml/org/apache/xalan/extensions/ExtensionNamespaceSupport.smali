.class public Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
.super Ljava/lang/Object;
.source "ExtensionNamespaceSupport.java"


# instance fields
.field m_args:[Ljava/lang/Object;

.field m_handlerClass:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_sig:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "namespace"
    .parameter "handlerClass"
    .parameter "constructorArgs"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    .line 37
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    .line 39
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    iput-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 52
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_34

    .line 53
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 56
    :cond_34
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    .line 60
    :cond_36
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public launch()Lorg/apache/xalan/extensions/ExtensionHandler;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 76
    .local v4, handler:Lorg/apache/xalan/extensions/ExtensionHandler;
    :try_start_1
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, cl:Ljava/lang/Class;
    const/4 v1, 0x0

    .line 79
    .local v1, con:Ljava/lang/reflect/Constructor;
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    if-eqz v6, :cond_1d

    .line 80
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 94
    :cond_12
    :goto_12
    if-eqz v1, :cond_37

    .line 95
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #handler:Lorg/apache/xalan/extensions/ExtensionHandler;
    check-cast v4, Lorg/apache/xalan/extensions/ExtensionHandler;

    .line 103
    .restart local v4       #handler:Lorg/apache/xalan/extensions/ExtensionHandler;
    return-object v4

    .line 83
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 84
    .local v2, cons:[Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_22
    array-length v6, v2

    if-ge v5, v6, :cond_12

    .line 86
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v7, v7

    if-ne v6, v7, :cond_34

    .line 88
    aget-object v1, v2, v5

    .line 89
    goto :goto_12

    .line 84
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 97
    .end local v2           #cons:[Ljava/lang/reflect/Constructor;
    .end local v5           #i:I
    :cond_37
    new-instance v6, Ljavax/xml/transform/TransformerException;

    const-string v7, "ExtensionHandler constructor not found"

    invoke-direct {v6, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_3f

    .line 99
    .end local v0           #cl:Ljava/lang/Class;
    .end local v1           #con:Ljava/lang/reflect/Constructor;
    .end local v4           #handler:Lorg/apache/xalan/extensions/ExtensionHandler;
    :catch_3f
    move-exception v6

    move-object v3, v6

    .line 101
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
