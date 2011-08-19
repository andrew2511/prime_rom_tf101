.class public Lorg/kxml2/kdom/Element;
.super Lorg/kxml2/kdom/Node;
.source "Element.java"


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected parent:Lorg/kxml2/kdom/Node;

.field protected prefixes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/kxml2/kdom/Node;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    .line 60
    iput-object v0, p0, Lorg/kxml2/kdom/Element;->children:Ljava/util/Vector;

    .line 61
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;
    .registers 4
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lorg/kxml2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1, p2}, Lorg/kxml2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    goto :goto_8
.end method

.method public getAttributeCount()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p0, v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 103
    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_1d

    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 105
    :cond_1d
    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_21
    return-object v1

    .line 102
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_25
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceCount()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 170
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefix"

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getNamespaceCount()I

    move-result v0

    .line 147
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 148
    invoke-virtual {p0, v1}, Lorg/kxml2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v2, :cond_19

    if-eqz p1, :cond_1e

    invoke-virtual {p0, v1}, Lorg/kxml2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 150
    :cond_19
    invoke-virtual {p0, v1}, Lorg/kxml2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .end local p0
    :goto_1d
    return-object v2

    .line 147
    .restart local p0
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 152
    :cond_21
    iget-object v2, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    instance-of v2, v2, Lorg/kxml2/kdom/Element;

    if-eqz v2, :cond_30

    iget-object p0, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    .end local p0
    check-cast p0, Lorg/kxml2/kdom/Element;

    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Element;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .restart local p0
    :cond_30
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getParent()Lorg/kxml2/kdom/Node;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    return-object v0
.end method

.method public getRoot()Lorg/kxml2/kdom/Node;
    .registers 3

    .prologue
    .line 117
    move-object v0, p0

    .line 119
    .local v0, current:Lorg/kxml2/kdom/Element;
    :goto_1
    iget-object v1, v0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    if-eqz v1, :cond_13

    .line 120
    iget-object v1, v0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    instance-of v1, v1, Lorg/kxml2/kdom/Element;

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    .line 124
    :goto_d
    return-object v1

    .line 121
    :cond_e
    iget-object v0, v0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    .end local v0           #current:Lorg/kxml2/kdom/Element;
    check-cast v0, Lorg/kxml2/kdom/Element;

    .restart local v0       #current:Lorg/kxml2/kdom/Element;
    goto :goto_1

    :cond_13
    move-object v1, v0

    .line 124
    goto :goto_d
.end method

.method public init()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .line 200
    .local v0, i:I
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 201
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/kxml2/kdom/Element;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 205
    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 206
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/kxml2/kdom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 214
    :cond_3b
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->init()V

    .line 217
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 227
    :cond_47
    :goto_47
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 233
    return-void

    .line 220
    :cond_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 221
    invoke-super {p0, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 223
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v1

    if-nez v1, :cond_47

    .line 224
    const/4 v1, 0x7

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    goto :goto_47
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "namespace"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 240
    iget-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    if-nez v3, :cond_e

    .line 241
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    .line 243
    :cond_e
    if-nez p1, :cond_12

    .line 244
    const-string p1, ""

    .line 246
    :cond_12
    iget-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1a
    if-ltz v2, :cond_46

    .line 247
    iget-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 248
    .local v1, attribut:[Ljava/lang/String;
    aget-object v3, v1, v6

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    aget-object v3, v1, v5

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 251
    if-nez p3, :cond_40

    .line 252
    iget-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 263
    .end local v1           #attribut:[Ljava/lang/String;
    :goto_3f
    return-void

    .line 255
    .restart local v1       #attribut:[Ljava/lang/String;
    :cond_40
    aput-object p3, v1, v7

    goto :goto_3f

    .line 246
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 261
    .end local v1           #attribut:[Ljava/lang/String;
    :cond_46
    iget-object v3, p0, Lorg/kxml2/kdom/Element;->attributes:Ljava/util/Vector;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    aput-object p3, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3f
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 280
    iput-object p1, p0, Lorg/kxml2/kdom/Element;->name:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 4
    .parameter "namespace"

    .prologue
    .line 290
    if-nez p1, :cond_a

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use \"\" for empty namespace"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_a
    iput-object p1, p0, Lorg/kxml2/kdom/Element;->namespace:Ljava/lang/String;

    .line 293
    return-void
.end method

.method protected setParent(Lorg/kxml2/kdom/Node;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 302
    iput-object p1, p0, Lorg/kxml2/kdom/Element;->parent:Lorg/kxml2/kdom/Node;

    .line 303
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"
    .parameter "namespace"

    .prologue
    .line 271
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    .line 272
    :cond_b
    iget-object v0, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v2, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-eqz v2, :cond_1b

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lorg/kxml2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 314
    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 318
    .end local v0           #i:I
    :cond_1b
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getAttributeCount()I

    move-result v1

    .line 324
    .local v1, len:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2b
    if-ge v0, v1, :cond_3f

    .line 325
    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 331
    :cond_3f
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Element;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 333
    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    return-void
.end method
