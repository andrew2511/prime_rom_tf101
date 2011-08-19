.class Lorg/dom4j/io/PruningElementStack;
.super Lorg/dom4j/io/ElementStack;
.source "PruningElementStack.java"


# instance fields
.field private elementHandler:Lorg/dom4j/ElementHandler;

.field private matchingElementIndex:I

.field private path:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 0
    .parameter "path"
    .parameter "elementHandler"

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/dom4j/io/ElementStack;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    .line 46
    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    .line 47
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;I)V
    .locals 0
    .parameter "path"
    .parameter "elementHandler"
    .parameter "defaultCapacity"

    .prologue
    .line 51
    invoke-direct {p0, p3}, Lorg/dom4j/io/ElementStack;-><init>(I)V

    .line 52
    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    .line 54
    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    .line 55
    return-void
.end method

.method private checkPath()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 110
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    if-ge v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid path of length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 112
    const-string v2, " it must be greater than 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    .line 116
    return-void
.end method


# virtual methods
.method protected pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 1
    .parameter "parent"
    .parameter "selectedNode"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v0, p0}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    .line 91
    invoke-interface {p1, p2}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Element;)Z

    .line 92
    return-void
.end method

.method public popElement()Lorg/dom4j/Element;
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 60
    .local v0, answer:Lorg/dom4j/Element;
    iget v3, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    iget v4, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    if-ne v3, v4, :cond_0

    .line 61
    iget v3, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-ltz v3, :cond_0

    .line 67
    iget v3, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, parent:Lorg/dom4j/Element;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-le v1, v3, :cond_1

    .line 80
    :goto_1
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0, v2, v0}, Lorg/dom4j/io/PruningElementStack;->pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    .line 86
    .end local v1           #i:I
    .end local v2           #parent:Lorg/dom4j/Element;
    :cond_0
    return-object v0

    .line 71
    .restart local v1       #i:I
    .restart local v2       #parent:Lorg/dom4j/Element;
    :cond_1
    iget-object v3, p0, Lorg/dom4j/io/PruningElementStack;->stack:[Lorg/dom4j/Element;

    aget-object v2, v3, v1

    .line 73
    invoke-virtual {p0, v2, v1}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    const/4 v2, 0x0

    .line 76
    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected validElement(Lorg/dom4j/Element;I)Z
    .locals 3
    .parameter "element"
    .parameter "index"

    .prologue
    .line 95
    iget-object v2, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    aget-object v1, v2, p2

    .line 96
    .local v1, requiredName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, name:Ljava/lang/String;
    if-ne v1, v0, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 106
    :goto_0
    return v2

    .line 102
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
