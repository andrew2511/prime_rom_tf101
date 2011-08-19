.class public Lorg/apache/xpath/functions/FuncLang;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncLang.java"


# static fields
.field static final serialVersionUID:J = -0x6d3341a25189a979L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
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
    const/4 v9, -0x1

    .line 47
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncLang;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, lang:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    .line 49
    .local v5, parent:I
    const/4 v1, 0x0

    .line 50
    .local v1, isLang:Z
    invoke-virtual {p1, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 52
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    :goto_14
    if-eq v9, v5, :cond_4c

    .line 54
    const/4 v7, 0x1

    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v8

    if-ne v7, v8, :cond_51

    .line 56
    const-string v7, "http://www.w3.org/XML/1998/namespace"

    const-string v8, "lang"

    invoke-interface {v0, v5, v7, v8}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, langAttr:I
    if-eq v9, v3, :cond_51

    .line 60
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, langVal:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 66
    .local v6, valLen:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v6, :cond_4b

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4c

    .line 69
    :cond_4b
    const/4 v1, 0x1

    .line 80
    .end local v3           #langAttr:I
    .end local v4           #langVal:Ljava/lang/String;
    .end local v6           #valLen:I
    :cond_4c
    if-eqz v1, :cond_56

    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_50
    return-object v7

    .line 77
    :cond_51
    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v5

    goto :goto_14

    .line 80
    :cond_56
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_50
.end method
