.class public Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "JAXPExtensionsProvider.java"

# interfaces
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field private extensionInvocationDisabled:Z

.field private final resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 3
    .parameter "resolver"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 50
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 51
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .registers 4
    .parameter "resolver"
    .parameter "featureSecureProcessing"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 56
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 57
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 58
    return-void
.end method


# virtual methods
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
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
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
    .line 104
    if-nez p2, :cond_1e

    .line 105
    :try_start_2
    const-string v13, "ER_ARG_CANNOT_BE_NULL"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Function Name"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, fmsg:Ljava/lang/String;
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_16
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_16} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_45

    .line 147
    .end local v7           #fmsg:Ljava/lang/String;
    :catch_16
    move-exception v13

    move-object v11, v13

    .line 150
    .local v11, xfe:Ljavax/xml/xpath/XPathFunctionException;
    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v13, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 111
    .end local v11           #xfe:Ljavax/xml/xpath/XPathFunctionException;
    :cond_1e
    :try_start_1e
    new-instance v9, Ljavax/xml/namespace/QName;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v9, myQName:Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    move v13, v0

    if-eqz v13, :cond_4d

    .line 117
    const-string v13, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 120
    .restart local v7       #fmsg:Ljava/lang/String;
    new-instance v13, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v13, v7}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_45
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1e .. :try_end_45} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_45} :catch_45

    .line 151
    .end local v7           #fmsg:Ljava/lang/String;
    .end local v9           #myQName:Ljavax/xml/namespace/QName;
    :catch_45
    move-exception v13

    move-object v6, v13

    .line 152
    .local v6, e:Ljava/lang/Exception;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 125
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v9       #myQName:Ljavax/xml/namespace/QName;
    :cond_4d
    :try_start_4d
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v5

    .line 127
    .local v5, arity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    move-object v13, v0

    invoke-interface {v13, v9, v5}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v12

    .line 131
    .local v12, xpathFunction:Ljavax/xml/xpath/XPathFunction;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v3, argList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_60
    if-ge v8, v5, :cond_8b

    .line 133
    move-object/from16 v0, p3

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 136
    .local v4, argument:Ljava/lang/Object;
    instance-of v13, v4, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v13, :cond_79

    .line 137
    check-cast v4, Lorg/apache/xpath/objects/XNodeSet;

    .end local v4           #argument:Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-virtual {v3, v8, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    :goto_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 138
    .restart local v4       #argument:Ljava/lang/Object;
    :cond_79
    instance-of v13, v4, Lorg/apache/xpath/objects/XObject;

    if-eqz v13, :cond_87

    .line 139
    check-cast v4, Lorg/apache/xpath/objects/XObject;

    .end local v4           #argument:Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v10

    .line 140
    .local v10, passedArgument:Ljava/lang/Object;
    invoke-virtual {v3, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_76

    .line 142
    .end local v10           #passedArgument:Ljava/lang/Object;
    .restart local v4       #argument:Ljava/lang/Object;
    :cond_87
    invoke-virtual {v3, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_76

    .line 146
    .end local v4           #argument:Ljava/lang/Object;
    :cond_8b
    invoke-interface {v12, v3}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_4d .. :try_end_8e} :catch_16
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8e} :catch_45

    move-result-object v13

    return-object v13
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .registers 21
    .parameter "extFunction"
    .parameter "argVec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, namespace:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, functionName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getArgCount()I

    move-result v4

    .line 167
    .local v4, arity:I
    new-instance v9, Ljavax/xml/namespace/QName;

    invoke-direct {v9, v10, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v9, myQName:Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    move v14, v0

    if-eqz v14, :cond_37

    .line 174
    const-string v14, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, fmsg:Ljava/lang/String;
    new-instance v14, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v14, v6}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2f
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_6d

    .line 199
    .end local v4           #arity:I
    .end local v6           #fmsg:Ljava/lang/String;
    .end local v7           #functionName:Ljava/lang/String;
    .end local v9           #myQName:Ljavax/xml/namespace/QName;
    .end local v10           #namespace:Ljava/lang/String;
    :catch_2f
    move-exception v14

    move-object v12, v14

    .line 202
    .local v12, xfe:Ljavax/xml/xpath/XPathFunctionException;
    new-instance v14, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v14, v12}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 179
    .end local v12           #xfe:Ljavax/xml/xpath/XPathFunctionException;
    .restart local v4       #arity:I
    .restart local v7       #functionName:Ljava/lang/String;
    .restart local v9       #myQName:Ljavax/xml/namespace/QName;
    .restart local v10       #namespace:Ljava/lang/String;
    :cond_37
    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    move-object v14, v0

    invoke-interface {v14, v9, v4}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v13

    .line 182
    .local v13, xpathFunction:Ljavax/xml/xpath/XPathFunction;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v2, argList:Ljava/util/ArrayList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_46
    if-ge v8, v4, :cond_79

    .line 184
    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, argument:Ljava/lang/Object;
    instance-of v14, v3, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v14, :cond_5f

    .line 188
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    .end local v3           #argument:Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-virtual {v2, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :goto_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 189
    .restart local v3       #argument:Ljava/lang/Object;
    :cond_5f
    instance-of v14, v3, Lorg/apache/xpath/objects/XObject;

    if-eqz v14, :cond_75

    .line 190
    check-cast v3, Lorg/apache/xpath/objects/XObject;

    .end local v3           #argument:Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v11

    .line 191
    .local v11, passedArgument:Ljava/lang/Object;
    invoke-virtual {v2, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6c
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_37 .. :try_end_6c} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6c} :catch_6d

    goto :goto_5c

    .line 203
    .end local v2           #argList:Ljava/util/ArrayList;
    .end local v4           #arity:I
    .end local v7           #functionName:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #myQName:Ljavax/xml/namespace/QName;
    .end local v10           #namespace:Ljava/lang/String;
    .end local v11           #passedArgument:Ljava/lang/Object;
    .end local v13           #xpathFunction:Ljavax/xml/xpath/XPathFunction;
    :catch_6d
    move-exception v14

    move-object v5, v14

    .line 204
    .local v5, e:Ljava/lang/Exception;
    new-instance v14, Ljavax/xml/transform/TransformerException;

    invoke-direct {v14, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 193
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #argList:Ljava/util/ArrayList;
    .restart local v3       #argument:Ljava/lang/Object;
    .restart local v4       #arity:I
    .restart local v7       #functionName:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #myQName:Ljavax/xml/namespace/QName;
    .restart local v10       #namespace:Ljava/lang/String;
    .restart local v13       #xpathFunction:Ljavax/xml/xpath/XPathFunction;
    :cond_75
    :try_start_75
    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5c

    .line 197
    .end local v3           #argument:Ljava/lang/Object;
    :cond_79
    invoke-interface {v13, v2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_75 .. :try_end_7c} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_6d

    move-result-object v14

    return-object v14
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "ns"
    .parameter "funcName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 67
    if-nez p2, :cond_1c

    .line 68
    :try_start_4
    const-string v4, "ER_ARG_CANNOT_BE_NULL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Function Name"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, fmsg:Ljava/lang/String;
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v1           #fmsg:Ljava/lang/String;
    :catch_18
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move v4, v8

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1b
    return v4

    .line 74
    :cond_1c
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v2, myQName:Ljavax/xml/namespace/QName;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_18

    move-result-object v3

    .line 77
    .local v3, xpathFunction:Ljavax/xml/xpath/XPathFunction;
    if-nez v3, :cond_2c

    move v4, v8

    .line 78
    goto :goto_1b

    :cond_2c
    move v4, v6

    .line 80
    goto :goto_1b
.end method
