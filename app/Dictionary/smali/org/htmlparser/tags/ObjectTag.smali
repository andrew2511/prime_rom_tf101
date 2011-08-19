.class public Lorg/htmlparser/tags/ObjectTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "ObjectTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "OBJECT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/ObjectTag;->mIds:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/ObjectTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public createObjectParamsTable()Ljava/util/Hashtable;
    .locals 10

    .prologue
    .line 96
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 97
    .local v6, ret:Ljava/util/Hashtable;
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 98
    .local v2, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_1

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 101
    iget-object v8, p0, Lorg/htmlparser/tags/ObjectTag;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v8, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 102
    .local v3, node:Lorg/htmlparser/Node;
    instance-of v8, v3, Lorg/htmlparser/Tag;

    if-eqz v8, :cond_0

    .line 104
    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v7, v0

    .line 105
    .local v7, tag:Lorg/htmlparser/Tag;
    invoke-interface {v7}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PARAM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    const-string v8, "NAME"

    invoke-interface {v7, v8}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, paramName:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    const-string v8, "VALUE"

    invoke-interface {v7, v8}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, paramValue:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v4           #paramName:Ljava/lang/String;
    .end local v5           #paramValue:Ljava/lang/String;
    .end local v7           #tag:Lorg/htmlparser/Tag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1           #i:I
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_1
    return-object v6
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/htmlparser/tags/ObjectTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/ObjectTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getObjectClassId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "CLASSID"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectCodeBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectCodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "CODETYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "DATA"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "HEIGHT"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParams()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->createObjectParamsTable()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStandby()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "STANDBY"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "WIDTH"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectParams()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectParams()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setObjectClassId(Ljava/lang/String;)V
    .locals 1
    .parameter "newClassId"

    .prologue
    .line 226
    const-string v0, "CLASSID"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setObjectCodeBase(Ljava/lang/String;)V
    .locals 1
    .parameter "newCodeBase"

    .prologue
    .line 235
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setObjectCodeType(Ljava/lang/String;)V
    .locals 1
    .parameter "newCodeType"

    .prologue
    .line 244
    const-string v0, "CODETYPE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setObjectData(Ljava/lang/String;)V
    .locals 1
    .parameter "newData"

    .prologue
    .line 253
    const-string v0, "DATA"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setObjectHeight(Ljava/lang/String;)V
    .locals 1
    .parameter "newHeight"

    .prologue
    .line 262
    const-string v0, "HEIGHT"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setObjectParams(Ljava/util/Hashtable;)V
    .locals 14
    .parameter "newObjectParams"

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 307
    .local v4, kids:Lorg/htmlparser/util/NodeList;
    if-nez v4, :cond_1

    .line 308
    new-instance v4, Lorg/htmlparser/util/NodeList;

    .end local v4           #kids:Lorg/htmlparser/util/NodeList;
    invoke-direct {v4}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 337
    .restart local v4       #kids:Lorg/htmlparser/util/NodeList;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 339
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 340
    .local v1, attributes:Ljava/util/Vector;
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 341
    .local v6, paramName:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 342
    .local v7, paramValue:Ljava/lang/String;
    new-instance v10, Lorg/htmlparser/Attribute;

    const-string v11, "PARAM"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 343
    new-instance v10, Lorg/htmlparser/Attribute;

    const-string v11, " "

    invoke-direct {v10, v11}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 344
    new-instance v10, Lorg/htmlparser/Attribute;

    const-string v11, "VALUE"

    const/16 v12, 0x22

    invoke-direct {v10, v11, v7, v12}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 345
    new-instance v10, Lorg/htmlparser/Attribute;

    const-string v11, " "

    invoke-direct {v10, v11}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 346
    new-instance v10, Lorg/htmlparser/Attribute;

    const-string v11, "NAME"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x22

    invoke-direct {v10, v11, v12, v13}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 347
    new-instance v9, Lorg/htmlparser/nodes/TagNode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12, v1}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .line 348
    .local v9, tag:Lorg/htmlparser/Tag;
    invoke-virtual {v4, v9}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    goto :goto_0

    .line 311
    .end local v1           #attributes:Ljava/util/Vector;
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v6           #paramName:Ljava/lang/String;
    .end local v7           #paramValue:Ljava/lang/String;
    .end local v9           #tag:Lorg/htmlparser/Tag;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 313
    invoke-virtual {v4, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    .line 314
    .local v5, node:Lorg/htmlparser/Node;
    instance-of v10, v5, Lorg/htmlparser/Tag;

    if-eqz v10, :cond_4

    .line 315
    check-cast v5, Lorg/htmlparser/Tag;

    .end local v5           #node:Lorg/htmlparser/Node;
    invoke-interface {v5}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PARAM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 317
    invoke-virtual {v4, v3}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 319
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 321
    invoke-virtual {v4, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    .line 322
    .restart local v5       #node:Lorg/htmlparser/Node;
    instance-of v10, v5, Lorg/htmlparser/nodes/TextNode;

    if-eqz v10, :cond_2

    .line 324
    move-object v0, v5

    check-cast v0, Lorg/htmlparser/nodes/TextNode;

    move-object v8, v0

    .line 325
    .local v8, string:Lorg/htmlparser/nodes/TextNode;
    invoke-virtual {v8}, Lorg/htmlparser/nodes/TextNode;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 326
    invoke-virtual {v4, v3}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    goto :goto_1

    .line 331
    .end local v5           #node:Lorg/htmlparser/Node;
    .end local v8           #string:Lorg/htmlparser/nodes/TextNode;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    .restart local v5       #node:Lorg/htmlparser/Node;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 334
    goto :goto_1

    .line 352
    .end local v3           #i:I
    .end local v5           #node:Lorg/htmlparser/Node;
    .restart local v2       #e:Ljava/util/Enumeration;
    :cond_5
    invoke-virtual {p0, v4}, Lorg/htmlparser/tags/ObjectTag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 353
    return-void
.end method

.method public setObjectStandby(Ljava/lang/String;)V
    .locals 1
    .parameter "newStandby"

    .prologue
    .line 271
    const-string v0, "STANDBY"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setObjectType(Ljava/lang/String;)V
    .locals 1
    .parameter "newType"

    .prologue
    .line 280
    const-string v0, "TYPE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setObjectWidth(Ljava/lang/String;)V
    .locals 1
    .parameter "newWidth"

    .prologue
    .line 289
    const-string v0, "WIDTH"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ObjectTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 369
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v10, 0x1f4

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 370
    .local v9, ret:Ljava/lang/StringBuffer;
    const-string v10, "Object Tag\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v10, "**********\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v10, "ClassId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectClassId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v10, "CodeBase = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectCodeBase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v10, "CodeType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectCodeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v10, "Data = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v10, "Height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectHeight()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v10, "Standby = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectStandby()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v10, "Type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v10, "Width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectWidth()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->getObjectParams()Ljava/util/Hashtable;

    move-result-object v7

    .line 397
    .local v7, parameters:Ljava/util/Hashtable;
    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 398
    .local v8, params:Ljava/util/Enumeration;
    if-nez v8, :cond_3

    .line 399
    const-string v10, "No Params found.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_0
    const/4 v3, 0x0

    .line 413
    .local v3, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v2

    .local v2, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 415
    invoke-interface {v2}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v4

    .line 416
    .local v4, node:Lorg/htmlparser/Node;
    instance-of v10, v4, Lorg/htmlparser/Tag;

    if-eqz v10, :cond_2

    .line 417
    move-object v0, v4

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v10, v0

    invoke-interface {v10}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PARAM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 419
    :cond_2
    if-nez v3, :cond_4

    .line 420
    const-string v10, "Miscellaneous items :\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    :goto_1
    const/4 v3, 0x1

    .line 424
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 401
    .end local v2           #e:Lorg/htmlparser/util/SimpleNodeIterator;
    .end local v3           #found:Z
    .end local v4           #node:Lorg/htmlparser/Node;
    :cond_3
    const/4 v1, 0x0

    .local v1, cnt:I
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 403
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 404
    .local v5, paramName:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 405
    .local v6, paramValue:Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 406
    const-string v10, ": Parameter name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v10, ", Parameter value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    .end local v1           #cnt:I
    .end local v5           #paramName:Ljava/lang/String;
    .end local v6           #paramValue:Ljava/lang/String;
    .restart local v2       #e:Lorg/htmlparser/util/SimpleNodeIterator;
    .restart local v3       #found:Z
    .restart local v4       #node:Lorg/htmlparser/Node;
    :cond_4
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 426
    .end local v4           #node:Lorg/htmlparser/Node;
    :cond_5
    if-eqz v3, :cond_6

    .line 427
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_6
    const-string v10, "End of Object Tag\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v10, "*****************\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
