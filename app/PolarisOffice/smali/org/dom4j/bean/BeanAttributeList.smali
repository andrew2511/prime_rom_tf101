.class public Lorg/dom4j/bean/BeanAttributeList;
.super Ljava/util/AbstractList;
.source "BeanAttributeList.java"


# instance fields
.field private attributes:[Lorg/dom4j/bean/BeanAttribute;

.field private beanMetaData:Lorg/dom4j/bean/BeanMetaData;

.field private parent:Lorg/dom4j/bean/BeanElement;


# direct methods
.method public constructor <init>(Lorg/dom4j/bean/BeanElement;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    .line 43
    invoke-virtual {p1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, data:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 45
    .local v0, beanClass:Ljava/lang/Class;
    :goto_0
    invoke-static {v0}, Lorg/dom4j/bean/BeanMetaData;->get(Ljava/lang/Class;)Lorg/dom4j/bean/BeanMetaData;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    .line 46
    iget-object v2, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v2}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result v2

    new-array v2, v2, [Lorg/dom4j/bean/BeanAttribute;

    iput-object v2, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    .line 47
    return-void

    .line 44
    .end local v0           #beanClass:Ljava/lang/Class;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/dom4j/bean/BeanElement;Lorg/dom4j/bean/BeanMetaData;)V
    .locals 1
    .parameter "parent"
    .parameter "beanMetaData"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    .line 36
    iput-object p2, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    .line 37
    invoke-virtual {p2}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result v0

    new-array v0, v0, [Lorg/dom4j/bean/BeanAttribute;

    iput-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    .line 38
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add(int,Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add(Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 2
    .parameter "name"

    .prologue
    .line 50
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v1, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, index:I
    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v1

    return-object v1
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 2
    .parameter "qname"

    .prologue
    .line 56
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v1, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Lorg/dom4j/QName;)I

    move-result v0

    .line 58
    .local v0, index:I
    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v1

    return-object v1
.end method

.method public attribute(I)Lorg/dom4j/bean/BeanAttribute;
    .locals 2
    .parameter "index"

    .prologue
    .line 62
    if-ltz p1, :cond_1

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v1, v1

    if-gt p1, v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v1, p1

    .line 65
    .local v0, attribute:Lorg/dom4j/bean/BeanAttribute;
    if-nez v0, :cond_0

    .line 66
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    :cond_0
    move-object v1, v0

    .line 73
    .end local v0           #attribute:Lorg/dom4j/bean/BeanAttribute;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 141
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v3, v1

    .line 137
    .local v0, attribute:Lorg/dom4j/bean/BeanAttribute;
    if-eqz v0, :cond_1

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    .line 134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;
    .locals 1
    .parameter "element"
    .parameter "index"

    .prologue
    .line 146
    new-instance v0, Lorg/dom4j/bean/BeanAttribute;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/bean/BeanAttribute;-><init>(Lorg/dom4j/bean/BeanAttributeList;I)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 99
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v1, p1

    .line 101
    .local v0, attribute:Lorg/dom4j/bean/BeanAttribute;
    if-nez v0, :cond_0

    .line 102
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    .line 106
    :cond_0
    return-object v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 85
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/bean/BeanMetaData;->getData(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/dom4j/bean/BeanElement;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    return-object v0
.end method

.method public getQName(I)Lorg/dom4j/QName;
    .locals 1
    .parameter "index"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getQName(I)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/bean/BeanAttribute;

    .line 127
    .local v0, attribute:Lorg/dom4j/bean/BeanAttribute;
    invoke-virtual {v0}, Lorg/dom4j/bean/BeanAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, oldValue:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    .line 130
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set(int,Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "data"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/dom4j/bean/BeanMetaData;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v0, v0

    return v0
.end method
