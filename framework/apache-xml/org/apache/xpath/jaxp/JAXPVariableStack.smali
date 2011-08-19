.class public Lorg/apache/xpath/jaxp/JAXPVariableStack;
.super Lorg/apache/xpath/VariableStack;
.source "JAXPVariableStack.java"


# instance fields
.field private final resolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 3
    .parameter "resolver"

    .prologue
    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    .line 46
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 47
    return-void
.end method


# virtual methods
.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .parameter "xctxt"
    .parameter "qname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 51
    if-nez p2, :cond_16

    .line 54
    const-string v3, "ER_ARG_CANNOT_BE_NULL"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "Variable qname"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, fmsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_16
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v1, name:Ljavax/xml/namespace/QName;
    iget-object v3, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-interface {v3, v1}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, varValue:Ljava/lang/Object;
    if-nez v2, :cond_3f

    .line 65
    const-string v3, "ER_RESOLVE_VARIABLE_RETURNS_NULL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_3f
    invoke-static {v2, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    return-object v3
.end method
