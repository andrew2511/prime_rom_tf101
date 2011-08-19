.class public Lorg/apache/xpath/functions/FuncExtElementAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtElementAvailable.java"


# static fields
.field static final serialVersionUID:J = -0x68ec6e558ac27a2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 12
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtElementAvailable;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v8, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, fullName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 57
    .local v3, indexOfNSSep:I
    if-gez v3, :cond_43

    .line 59
    const-string v6, ""

    .line 60
    .local v6, prefix:Ljava/lang/String;
    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    .line 61
    .local v5, namespace:Ljava/lang/String;
    move-object v4, v2

    .line 72
    .local v4, methName:Ljava/lang/String;
    :goto_17
    const-string v8, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "http://xml.apache.org/xalan"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 77
    :cond_27
    :try_start_27
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 78
    .local v7, transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getAvailableElements()Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Lorg/apache/xml/utils/QName;

    invoke-direct {v9, v5, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_42} :catch_5f

    .line 91
    .end local v4           #methName:Ljava/lang/String;
    .end local v7           #transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    :goto_42
    return-object v8

    .line 65
    .end local v5           #namespace:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    :cond_43
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 66
    .restart local v6       #prefix:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .restart local v5       #namespace:Ljava/lang/String;
    if-nez v5, :cond_55

    .line 68
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_42

    .line 69
    :cond_55
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #methName:Ljava/lang/String;
    goto :goto_17

    .line 78
    .restart local v7       #transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    :cond_5c
    :try_start_5c
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 82
    .end local v7           #transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    :catch_5f
    move-exception v8

    move-object v0, v8

    .line 84
    .local v0, e:Ljava/lang/Exception;
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_42

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/ExtensionsProvider;

    .line 91
    .local v1, extProvider:Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v1, v5, v4}, Lorg/apache/xpath/ExtensionsProvider;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_42

    :cond_73
    sget-object v8, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_42
.end method
