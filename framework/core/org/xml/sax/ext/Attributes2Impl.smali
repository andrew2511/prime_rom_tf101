.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "Attributes2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private declared:[Z

.field private specified:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 49
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 50
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .registers 2
    .parameter "atts"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    .line 250
    .local v0, length:I
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v2, v2

    if-le v0, v2, :cond_26

    .line 254
    new-array v1, v0, [Z

    .line 255
    .local v1, newFlags:[Z
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 258
    new-array v1, v0, [Z

    .line 259
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 263
    .end local v1           #newFlags:[Z
    :cond_26
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    sub-int v3, v0, v6

    aput-boolean v6, v2, v3

    .line 264
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sub-int v3, v0, v6

    const-string v4, "CDATA"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    move v4, v6

    :goto_39
    aput-boolean v4, v2, v3

    .line 265
    return-void

    :cond_3c
    move v4, v5

    .line 264
    goto :goto_39
.end method

.method public isDeclared(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 86
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 87
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_21
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .registers 6
    .parameter "qName"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, index:I
    if-gez v0, :cond_1f

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1f
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, index:I
    if-gez v0, :cond_29

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_29
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 134
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 135
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_21
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .registers 6
    .parameter "qName"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, index:I
    if-gez v0, :cond_1f

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1f
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, index:I
    if-gez v0, :cond_29

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_29
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public removeAttribute(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 273
    .local v0, origMax:I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    .line 274
    if-eq p1, v0, :cond_22

    .line 275
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :cond_22
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 10
    .parameter "atts"

    .prologue
    const/4 v7, 0x1

    .line 200
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 202
    .local v3, length:I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 203
    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 204
    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 206
    instance-of v4, p1, Lorg/xml/sax/ext/Attributes2;

    if-eqz v4, :cond_2e

    .line 207
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/Attributes2;

    move-object v1, v0

    .line 208
    .local v1, a2:Lorg/xml/sax/ext/Attributes2;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v3, :cond_4b

    .line 209
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 210
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 213
    .end local v1           #a2:Lorg/xml/sax/ext/Attributes2;
    .end local v2           #i:I
    :cond_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    if-ge v2, v3, :cond_4b

    .line 214
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string v5, "CDATA"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    move v5, v7

    :goto_40
    aput-boolean v5, v4, v2

    .line 215
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean v7, v4, v2

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 214
    :cond_49
    const/4 v5, 0x0

    goto :goto_40

    .line 218
    :cond_4b
    return-void
.end method

.method public setDeclared(IZ)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 296
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 297
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_21
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aput-boolean p2, v0, p1

    .line 300
    return-void
.end method

.method public setSpecified(IZ)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 315
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 316
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_21
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean p2, v0, p1

    .line 319
    return-void
.end method
