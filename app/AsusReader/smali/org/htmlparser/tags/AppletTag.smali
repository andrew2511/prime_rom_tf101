.class public Lorg/htmlparser/tags/AppletTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "AppletTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLET"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->mIds:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public createAppletParamsTable()Ljava/util/Hashtable;
    .locals 10

    .prologue
    .line 98
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 99
    .local v6, ret:Ljava/util/Hashtable;
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 100
    .local v2, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_1

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 103
    iget-object v8, p0, Lorg/htmlparser/tags/AppletTag;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v8, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 104
    .local v3, node:Lorg/htmlparser/Node;
    instance-of v8, v3, Lorg/htmlparser/Tag;

    if-eqz v8, :cond_0

    .line 106
    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v7, v0

    .line 107
    .local v7, tag:Lorg/htmlparser/Tag;
    invoke-interface {v7}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PARAM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    const-string v8, "NAME"

    invoke-interface {v7, v8}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, paramName:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    const-string v8, "VALUE"

    invoke-interface {v7, v8}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, paramValue:Ljava/lang/String;
    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4           #paramName:Ljava/lang/String;
    .end local v5           #paramValue:Ljava/lang/String;
    .end local v7           #tag:Lorg/htmlparser/Tag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1           #i:I
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_1
    return-object v6
.end method

.method public getAppletClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "CODE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppletParams()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->createAppletParamsTable()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "ARCHIVE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 282
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v10, 0x1f4

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 283
    .local v9, ret:Ljava/lang/StringBuffer;
    const-string v10, "Applet Tag\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v10, "**********\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v10, "Class Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletClass()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v10, "Archive = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getArchive()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v10, "Codebase = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getCodeBase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletParams()Ljava/util/Hashtable;

    move-result-object v7

    .line 295
    .local v7, parameters:Ljava/util/Hashtable;
    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 296
    .local v8, params:Ljava/util/Enumeration;
    if-nez v8, :cond_3

    .line 297
    const-string v10, "No Params found.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :cond_0
    const/4 v3, 0x0

    .line 311
    .local v3, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v2

    .local v2, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 313
    invoke-interface {v2}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v4

    .line 314
    .local v4, node:Lorg/htmlparser/Node;
    instance-of v10, v4, Lorg/htmlparser/Tag;

    if-eqz v10, :cond_2

    .line 315
    move-object v0, v4

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v10, v0

    invoke-interface {v10}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PARAM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 317
    :cond_2
    if-nez v3, :cond_4

    .line 318
    const-string v10, "Miscellaneous items :\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :goto_1
    const/4 v3, 0x1

    .line 322
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
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

    .line 301
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    .local v5, paramName:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 303
    .local v6, paramValue:Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 304
    const-string v10, ": Parameter name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v10, ", Parameter value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 320
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

    .line 324
    .end local v4           #node:Lorg/htmlparser/Node;
    :cond_5
    if-eqz v3, :cond_6

    .line 325
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_6
    const-string v10, "End of Applet Tag\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v10, "*****************\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
