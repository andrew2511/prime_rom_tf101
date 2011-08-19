.class public Lorg/dom4j/xpath/DefaultXPath;
.super Ljava/lang/Object;
.source "DefaultXPath.java"

# interfaces
.implements Lorg/dom4j/XPath;
.implements Lorg/dom4j/NodeFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private namespaceContext:Lorg/jaxen/NamespaceContext;

.field private text:Ljava/lang/String;

.field private xpath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lorg/dom4j/xpath/DefaultXPath;->parse(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    .line 60
    return-void
.end method

.method protected static parse(Ljava/lang/String;)Lorg/jaxen/XPath;
    .locals 4
    .parameter "text"

    .prologue
    .line 358
    :try_start_0
    new-instance v2, Lorg/jaxen/dom4j/Dom4jXPath;

    invoke-direct {v2, p0}, Lorg/jaxen/dom4j/Dom4jXPath;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 359
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 360
    .local v0, e:Lorg/jaxen/JaxenException;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v0           #e:Lorg/jaxen/JaxenException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 362
    .local v1, t:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v2, p0, v1}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public booleanValueOf(Ljava/lang/Object;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->booleanValueOf(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v2, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, answer:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .end local v0           #answer:Ljava/util/List;
    :goto_0
    return-object v2

    .restart local v0       #answer:Ljava/util/List;
    :cond_0
    move-object v2, v0

    .line 116
    goto :goto_0

    .line 117
    .end local v0           #answer:Ljava/util/List;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 118
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 120
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;
    .locals 1
    .parameter "node"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    return-object v0
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
    .line 374
    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    .line 265
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 267
    iget-object v3, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v3, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, answer:Ljava/util/List;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 270
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, item:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 273
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 283
    .end local v0           #answer:Ljava/util/List;
    :goto_0
    return v3

    .line 276
    .restart local v0       #answer:Ljava/util/List;
    .restart local v2       #item:Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .end local v2           #item:Ljava/lang/Object;
    :cond_1
    move v3, v4

    .line 279
    goto :goto_0

    .line 280
    .end local v0           #answer:Ljava/util/List;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 281
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move v3, v4

    .line 283
    goto :goto_0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 2
    .parameter "context"

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 197
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected removeDuplicates(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .parameter "list"
    .parameter "sortValues"

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 332
    .local v0, distinctValues:Ljava/util/HashSet;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    return-void

    .line 333
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, node:Ljava/lang/Object;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 136
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "sortXPath"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, answer:Ljava/util/List;
    invoke-interface {p2, v0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    .line 144
    return-object v0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "sortXPath"
    .parameter "distinct"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, answer:Ljava/util/List;
    invoke-interface {p2, v0, p3}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    .line 152
    return-object v0
.end method

.method public selectObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v2, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, answer:Ljava/lang/Object;
    instance-of v2, v0, Lorg/dom4j/Node;

    if-eqz v2, :cond_0

    .line 162
    check-cast v0, Lorg/dom4j/Node;

    .end local v0           #answer:Ljava/lang/Object;
    move-object v2, v0

    .line 175
    :goto_0
    return-object v2

    .line 165
    .restart local v0       #answer:Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    move-object v2, v5

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    new-instance v2, Lorg/dom4j/XPathException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "The result of the XPath expression is not a Node. It was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-direct {v2, v3}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #answer:Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move-object v2, v5

    .line 175
    goto :goto_0
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .locals 1
    .parameter "functionContext"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 83
    return-void
.end method

.method protected setNSContext(Ljava/lang/Object;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 367
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-static {p1}, Lorg/dom4j/xpath/DefaultNamespaceContext;->create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .locals 1
    .parameter "namespaceContext"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    .line 95
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 96
    return-void
.end method

.method public setNamespaceURIs(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 90
    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0, p1}, Lorg/jaxen/SimpleNamespaceContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 91
    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 1
    .parameter "variableContext"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 104
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Z)V

    .line 226
    return-void
.end method

.method protected sort(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .parameter "list"
    .parameter "sortValues"

    .prologue
    .line 296
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath$1;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/xpath/DefaultXPath$1;-><init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    return-void
.end method

.method public sort(Ljava/util/List;Z)V
    .locals 8
    .parameter "list"
    .parameter "distinct"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 243
    .local v5, size:I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 245
    .local v6, sortValues:Ljava/util/HashMap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 255
    invoke-virtual {p0, p1, v6}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Ljava/util/Map;)V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p0, p1, v6}, Lorg/dom4j/xpath/DefaultXPath;->removeDuplicates(Ljava/util/List;Ljava/util/Map;)V

    .line 261
    .end local v2           #i:I
    .end local v5           #size:I
    .end local v6           #sortValues:Ljava/util/HashMap;
    :cond_0
    return-void

    .line 246
    .restart local v2       #i:I
    .restart local v5       #size:I
    .restart local v6       #sortValues:Ljava/util/HashMap;
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 248
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lorg/dom4j/Node;

    if-eqz v7, :cond_2

    .line 249
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Node;

    move-object v3, v0

    .line 250
    .local v3, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/DefaultXPath;->getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, expression:Ljava/lang/Object;
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v1           #expression:Ljava/lang/Object;
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[XPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 187
    const-string v1, ""

    goto :goto_0
.end method
