.class Lorg/dom4j/io/ElementStack;
.super Ljava/lang/Object;
.source "ElementStack.java"

# interfaces
.implements Lorg/dom4j/ElementPath;


# instance fields
.field private handler:Lorg/dom4j/io/DispatchHandler;

.field protected lastElementIndex:I

.field protected stack:[Lorg/dom4j/Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/dom4j/io/ElementStack;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "defaultCapacity"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    .line 39
    new-array v0, p1, [Lorg/dom4j/Element;

    iput-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 40
    return-void
.end method

.method private getHandlerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 167
    iget-object v1, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v1}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    invoke-virtual {p0, v1}, Lorg/dom4j/io/ElementStack;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 171
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    move-object v0, p1

    .line 179
    .local v0, handlerPath:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 173
    .end local v0           #handlerPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #handlerPath:Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0           #handlerPath:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #handlerPath:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 2
    .parameter "path"
    .parameter "elementHandler"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {p0, p1}, Lorg/dom4j/io/ElementStack;->getHandlerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 145
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    .line 56
    return-void
.end method

.method public containsHandler(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 161
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->containsHandler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCurrent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->peekElement()Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getElement(I)Lorg/dom4j/Element;
    .locals 3
    .parameter "depth"

    .prologue
    .line 123
    :try_start_0
    iget-object v2, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    aget-object v1, v2, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v1, element:Lorg/dom4j/Element;
    :goto_0
    return-object v1

    .line 124
    .end local v1           #element:Lorg/dom4j/Element;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 125
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1       #element:Lorg/dom4j/Element;
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/ElementStack;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekElement()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-gez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public popElement()Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 78
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-gez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iput v2, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public pushElement(Lorg/dom4j/Element;)V
    .locals 3
    .parameter "element"

    .prologue
    .line 92
    iget-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    array-length v0, v1

    .line 94
    .local v0, length:I
    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-lt v1, v0, :cond_0

    .line 95
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/ElementStack;->reallocate(I)V

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v2, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aput-object p1, v1, v2

    .line 99
    return-void
.end method

.method protected reallocate(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 109
    .local v0, oldStack:[Lorg/dom4j/Element;
    new-array v1, p1, [Lorg/dom4j/Element;

    iput-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 110
    iget-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-void
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {p0, p1}, Lorg/dom4j/io/ElementStack;->getHandlerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 149
    return-void
.end method

.method public setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0
    .parameter "dispatchHandler"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    .line 44
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
