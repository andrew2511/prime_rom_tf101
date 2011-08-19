.class public Lorg/htmlparser/util/NodeList;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private capacity:I

.field private capacityIncrement:I

.field private nodeData:[Lorg/htmlparser/Node;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeList;->removeAll()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 58
    return-void
.end method

.method static access$000(Lorg/htmlparser/util/NodeList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    return v0
.end method

.method static access$100(Lorg/htmlparser/util/NodeList;)[Lorg/htmlparser/Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    return-object v0
.end method

.method private adjustVectorCapacity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    iget v2, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    .line 93
    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    .line 94
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    .line 95
    .local v0, oldData:[Lorg/htmlparser/Node;
    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    invoke-direct {p0, v1}, Lorg/htmlparser/util/NodeList;->newNodeArrayFor(I)[Lorg/htmlparser/Node;

    move-result-object v1

    iput-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    .line 96
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void
.end method

.method private newNodeArrayFor(I)[Lorg/htmlparser/Node;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 101
    new-array v0, p1, [Lorg/htmlparser/Node;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/htmlparser/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 62
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    if-ne v0, v1, :cond_0

    .line 63
    invoke-direct {p0}, Lorg/htmlparser/util/NodeList;->adjustVectorCapacity()V

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    iget v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    aput-object p1, v0, v1

    .line 65
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-ge v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public elementAt(I)Lorg/htmlparser/Node;
    .locals 1
    .parameter "i"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public elements()Lorg/htmlparser/util/SimpleNodeIterator;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/htmlparser/util/NodeList$1;

    invoke-direct {v0, p0}, Lorg/htmlparser/util/NodeList$1;-><init>(Lorg/htmlparser/util/NodeList;)V

    return-object v0
.end method

.method public indexOf(Lorg/htmlparser/Node;)I
    .locals 3
    .parameter "node"

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 230
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 231
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move v1, v0

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    return v1
.end method

.method public remove(I)Lorg/htmlparser/Node;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 194
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v0, v1, p1

    .line 195
    .local v0, ret:Lorg/htmlparser/Node;
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    iget v4, p0, Lorg/htmlparser/util/NodeList;->size:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    sub-int/2addr v2, v5

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 197
    iget v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    .line 199
    return-object v0
.end method

.method public remove(Lorg/htmlparser/Node;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, ret:Z
    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/htmlparser/util/NodeList;->indexOf(Lorg/htmlparser/Node;)I

    move-result v0

    .local v0, index:I
    if-eq v2, v0, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 251
    const/4 v1, 0x1

    .line 254
    :cond_0
    return v1
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    .line 205
    const/16 v0, 0xa

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    .line 206
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    invoke-direct {p0, v0}, Lorg/htmlparser/util/NodeList;->newNodeArrayFor(I)[Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    .line 207
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    .line 208
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    return v0
.end method

.method public toHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/util/NodeList;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 3
    .parameter "verbatim"

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-ge v0, v2, :cond_0

    .line 171
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/htmlparser/Node;->toHtml(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toNodeArray()[Lorg/htmlparser/Node;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    invoke-direct {p0, v1}, Lorg/htmlparser/util/NodeList;->newNodeArrayFor(I)[Lorg/htmlparser/Node;

    move-result-object v0

    .line 142
    .local v0, nodeArray:[Lorg/htmlparser/Node;
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-ge v0, v2, :cond_0

    .line 268
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/Node;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
