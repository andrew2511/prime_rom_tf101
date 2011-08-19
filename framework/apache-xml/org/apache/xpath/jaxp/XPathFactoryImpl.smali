.class public Lorg/apache/xpath/jaxp/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "XPathFactoryImpl.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "XPathFactoryImpl"


# instance fields
.field private featureSecureProcessing:Z

.field private xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    .line 47
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 52
    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    if-nez p1, :cond_16

    .line 191
    const-string v1, "ER_GETTING_NULL_FEATURE"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 199
    iget-boolean v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return v1

    .line 203
    :cond_21
    const-string v1, "ER_GETTING_UNKNOWN_FEATURE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isObjectModelSupported(Ljava/lang/String;)Z
    .registers 7
    .parameter "objectModel"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 74
    if-nez p1, :cond_1c

    .line 75
    const-string v1, "ER_OBJECT_MODEL_NULL"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3a

    .line 83
    const-string v1, "ER_OBJECT_MODEL_EMPTY"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_3a
    const-string v1, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v2

    .line 95
    :goto_43
    return v1

    :cond_44
    move v1, v4

    goto :goto_43
.end method

.method public newXPath()Ljavax/xml/xpath/XPath;
    .registers 5

    .prologue
    .line 105
    new-instance v0, Lorg/apache/xpath/jaxp/XPathImpl;

    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v3, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/jaxp/XPathImpl;-><init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 10
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_1e

    .line 141
    const-string v1, "ER_FEATURE_NAME_NULL"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_1e
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 150
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    .line 153
    return-void

    .line 157
    :cond_29
    const-string v1, "ER_FEATURE_UNKNOWN"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .registers 7
    .parameter "resolver"

    .prologue
    .line 227
    if-nez p1, :cond_16

    .line 228
    const-string v1, "ER_NULL_XPATH_FUNCTION_RESOLVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFactoryImpl"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 235
    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 7
    .parameter "resolver"

    .prologue
    .line 253
    if-nez p1, :cond_16

    .line 254
    const-string v1, "ER_NULL_XPATH_VARIABLE_RESOLVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFactoryImpl"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 261
    return-void
.end method
