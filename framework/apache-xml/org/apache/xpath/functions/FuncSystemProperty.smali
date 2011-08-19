.class public Lorg/apache/xpath/functions/FuncSystemProperty;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSystemProperty.java"


# static fields
.field static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"

.field static final serialVersionUID:J = 0x3346d5380b84c043L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 15
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 59
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSystemProperty;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, fullName:Ljava/lang/String;
    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 62
    .local v2, indexOfNSSep:I
    const-string v5, ""

    .line 66
    .local v5, propName:Ljava/lang/String;
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 68
    .local v8, xsltInfo:Ljava/util/Properties;
    const-string v9, "org/apache/xalan/res/XSLTInfo.properties"

    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/functions/FuncSystemProperty;->loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V

    .line 70
    if-lez v2, :cond_83

    .line 72
    if-ltz v2, :cond_54

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 76
    .local v4, prefix:Ljava/lang/String;
    :goto_27
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, namespace:Ljava/lang/String;
    if-gez v2, :cond_58

    move-object v5, v1

    .line 80
    :goto_32
    const-string v9, "http://www.w3.org/XSL/Transform"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_42

    const-string v9, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 83
    :cond_42
    invoke-virtual {v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, result:Ljava/lang/String;
    if-nez v6, :cond_9a

    .line 87
    const-string v9, "WG_PROPERTY_NOT_SUPPORTED"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 154
    .end local v3           #namespace:Ljava/lang/String;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :goto_53
    return-object v9

    .line 72
    :cond_54
    const-string v9, ""

    move-object v4, v9

    goto :goto_27

    .line 77
    .restart local v3       #namespace:Ljava/lang/String;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_58
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    goto :goto_32

    .line 95
    :cond_60
    const-string v9, "WG_DONT_DO_ANYTHING_WITH_NS"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v11

    aput-object v1, v10, v12

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :try_start_6c
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .restart local v6       #result:Ljava/lang/String;
    if-nez v6, :cond_9a

    .line 107
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_6c .. :try_end_74} :catch_75

    goto :goto_53

    .line 110
    .end local v6           #result:Ljava/lang/String;
    :catch_75
    move-exception v9

    move-object v7, v9

    .line 112
    .local v7, se:Ljava/lang/SecurityException;
    const-string v9, "WG_SECURITY_EXCEPTION"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_53

    .line 123
    .end local v3           #namespace:Ljava/lang/String;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v7           #se:Ljava/lang/SecurityException;
    :cond_83
    :try_start_83
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6       #result:Ljava/lang/String;
    if-nez v6, :cond_9a

    .line 129
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_8b
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_8b} :catch_8c

    goto :goto_53

    .line 132
    .end local v6           #result:Ljava/lang/String;
    :catch_8c
    move-exception v9

    move-object v7, v9

    .line 134
    .restart local v7       #se:Ljava/lang/SecurityException;
    const-string v9, "WG_SECURITY_EXCEPTION"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_53

    .line 141
    .end local v7           #se:Ljava/lang/SecurityException;
    .restart local v6       #result:Ljava/lang/String;
    :cond_9a
    const-string v9, "version"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b8

    .line 146
    :try_start_a8
    new-instance v9, Lorg/apache/xpath/objects/XString;

    const-string v10, "1.0"

    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_53

    .line 148
    :catch_b0
    move-exception v9

    move-object v0, v9

    .line 150
    .local v0, ex:Ljava/lang/Exception;
    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_53

    .line 154
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_b8
    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_53
.end method

.method public loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 8
    .parameter "file"
    .parameter "target"

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object v3

    .line 171
    .local v3, ss:Lorg/apache/xpath/functions/SecuritySupport;
    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 175
    .local v2, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 177
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-virtual {p2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 185
    return-void

    .line 180
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #ss:Lorg/apache/xpath/functions/SecuritySupport;
    :catch_18
    move-exception v4

    move-object v1, v4

    .line 183
    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v4, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
