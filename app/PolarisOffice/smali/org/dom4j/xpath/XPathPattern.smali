.class public Lorg/dom4j/xpath/XPathPattern;
.super Ljava/lang/Object;
.source "XPathPattern.java"

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# instance fields
.field private context:Lorg/jaxen/Context;

.field private pattern:Lorg/jaxen/pattern/Pattern;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    .line 52
    new-instance v2, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object v2, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    .line 55
    :try_start_0
    invoke-static {p1}, Lorg/jaxen/pattern/PatternParser;->parse(Ljava/lang/String;)Lorg/jaxen/pattern/Pattern;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;
    :try_end_0
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    return-void

    .line 56
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Lorg/jaxen/saxpath/SAXPathException;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/saxpath/SAXPathException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0           #e:Lorg/jaxen/saxpath/SAXPathException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 59
    .local v1, t:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v2, p1, v1}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Lorg/jaxen/pattern/Pattern;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    .line 46
    invoke-virtual {p1}, Lorg/jaxen/pattern/Pattern;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    .line 48
    return-void
.end method


# virtual methods
.method protected getContextSupport()Lorg/jaxen/ContextSupport;
    .locals 5

    .prologue
    .line 119
    new-instance v0, Lorg/jaxen/ContextSupport;

    new-instance v1, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v1}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    .line 120
    invoke-static {}, Lorg/jaxen/XPathFunctionContext;->getInstance()Lorg/jaxen/FunctionContext;

    move-result-object v2

    .line 121
    new-instance v3, Lorg/jaxen/SimpleVariableContext;

    invoke-direct {v3}, Lorg/jaxen/SimpleVariableContext;-><init>()V

    invoke-static {}, Lorg/jaxen/dom4j/DocumentNavigator;->getInstance()Lorg/jaxen/Navigator;

    move-result-object v4

    .line 119
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/ContextSupport;-><init>(Lorg/jaxen/NamespaceContext;Lorg/jaxen/FunctionContext;Lorg/jaxen/VariableContext;Lorg/jaxen/Navigator;)V

    return-object v0
.end method

.method public getMatchType()S
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getPriority()D

    move-result-wide v0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .locals 6

    .prologue
    .line 86
    iget-object v4, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v4}, Lorg/jaxen/pattern/Pattern;->getUnionPatterns()[Lorg/jaxen/pattern/Pattern;

    move-result-object v2

    .line 88
    .local v2, patterns:[Lorg/jaxen/pattern/Pattern;
    if-eqz v2, :cond_1

    .line 89
    array-length v3, v2

    .line 90
    .local v3, size:I
    new-array v0, v3, [Lorg/dom4j/xpath/XPathPattern;

    .line 92
    .local v0, answer:[Lorg/dom4j/xpath/XPathPattern;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    move-object v4, v0

    .line 99
    .end local v0           #answer:[Lorg/dom4j/xpath/XPathPattern;
    .end local v1           #i:I
    .end local v3           #size:I
    :goto_1
    return-object v4

    .line 93
    .restart local v0       #answer:[Lorg/dom4j/xpath/XPathPattern;
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_0
    new-instance v4, Lorg/dom4j/xpath/XPathPattern;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Lorg/dom4j/xpath/XPathPattern;-><init>(Lorg/jaxen/pattern/Pattern;)V

    aput-object v4, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0           #answer:[Lorg/dom4j/xpath/XPathPattern;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/XPathException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v1, list:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v2, v1}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 69
    iget-object v2, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    iget-object v3, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v2, p1, v3}, Lorg/jaxen/pattern/Pattern;->matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 73
    .end local v1           #list:Ljava/util/ArrayList;
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 71
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/XPathPattern;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 73
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 1
    .parameter "variableContext"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[XPathPattern: text: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
