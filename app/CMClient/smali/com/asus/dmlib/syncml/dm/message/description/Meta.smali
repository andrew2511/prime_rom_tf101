.class public Lcom/asus/dmlib/syncml/dm/message/description/Meta;
.super Ljava/lang/Object;
.source "Meta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Meta"


# instance fields
.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 8
    .parameter "pMetaElem"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot construct a new Meta if element is null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    .local v2, elems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 91
    .local v1, elem:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Format"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, attrKey:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v0, v5}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0           #attrKey:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v1           #elem:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .end local v4           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "formatValue"
    .parameter "typeValue"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setFormat(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setType(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tagName"
    .parameter "tagValue"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 45
    .local v2, keepParsingMeta:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 46
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 47
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 49
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 50
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "Meta"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :sswitch_2
    const/4 v5, 0x0

    .line 59
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_3

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v5}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 76
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 80
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-void

    .line 65
    .restart local v4       #type:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    :try_start_1
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_1

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_1

    .line 67
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapExtensionData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 78
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private addTag(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)V
    .locals 5
    .parameter "metaTag"

    .prologue
    .line 198
    const/4 v0, 0x1

    .line 199
    .local v0, a:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 204
    .local v2, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    goto :goto_2

    .line 211
    .end local v2           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    .line 212
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_4
    if-eqz v0, :cond_0

    .line 217
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 190
    .local v1, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    invoke-static {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 194
    .end local v1           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :goto_1
    return-object v2

    .line 188
    .restart local v1       #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v1           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "Format"

    invoke-virtual {p0, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "pXmlType"

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 492
    .local v1, length:I
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v1

    .line 514
    :goto_1
    return v2

    .line 495
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 496
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Meta"

    invoke-static {v2, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 500
    add-int/lit8 v1, v1, 0x2

    .line 502
    :try_start_1
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0xd

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x2

    goto :goto_0

    .line 503
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 504
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Meta"

    invoke-static {v2, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 511
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getTagNames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 179
    .local v2, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    if-nez v2, :cond_0

    .line 177
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    .end local v2           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_1
    return-object v1
.end method

.method public getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tagName"

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 157
    .local v1, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    invoke-static {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->getTagValue()Ljava/lang/String;

    move-result-object v2

    .line 161
    .end local v1           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :goto_1
    return-object v2

    .line 155
    .restart local v1       #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "Type"

    invoke-virtual {p0, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tagName"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 168
    .local v1, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    invoke-static {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v1           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_2
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "formatValue"

    .prologue
    .line 122
    const-string v0, "Format"

    invoke-virtual {p0, v0, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tagName"
    .parameter "tagValue"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    invoke-direct {v0, p0, p1, p2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;-><init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->addTag(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)V

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tagName"
    .parameter "tagValue"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;-><init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->addTag(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)V

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "typeValue"

    .prologue
    .line 126
    const-string v0, "Type"

    invoke-virtual {p0, v0, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 11
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x51

    const/4 v9, 0x0

    const/16 v8, -0x3d

    const/4 v7, 0x1

    .line 307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, metaStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 312
    new-array v5, v9, [B

    .line 486
    :goto_0
    return-object v5

    .line 315
    :cond_0
    const/16 v5, 0x5a

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    .line 321
    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 322
    .local v4, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Format"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    const/16 v5, 0x47

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 329
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    :cond_2
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    const/16 v5, 0x53

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 337
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 338
    :cond_3
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NextNonce"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 339
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 341
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 345
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 346
    :cond_4
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MaxMsgSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 347
    const/16 v5, 0x4c

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 349
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 353
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 354
    :cond_5
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MaxObjSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 355
    const/16 v5, 0x55

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 357
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 358
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 361
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 362
    :cond_6
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 363
    const/16 v5, 0x52

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 367
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 369
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 370
    :cond_7
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Anchor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 371
    const/16 v5, 0x45

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 373
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 377
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 378
    :cond_8
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EMI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 379
    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 385
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 386
    :cond_9
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FreeID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 387
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 389
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 390
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 391
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 393
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 394
    :cond_a
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FreeMem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 395
    const/16 v5, 0x49

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 397
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 398
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 399
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 401
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 402
    :cond_b
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Last"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 403
    const/16 v5, 0x4a

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 406
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 407
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 409
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 410
    :cond_c
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mark"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 411
    const/16 v5, 0x4b

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 413
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 415
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 417
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 418
    :cond_d
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 419
    const/16 v5, 0x4d

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 423
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 425
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 426
    :cond_e
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MetInf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 427
    const/16 v5, 0x4e

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 430
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 433
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 434
    :cond_f
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Next"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 435
    const/16 v5, 0x4f

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 439
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 441
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 442
    :cond_10
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SharedMem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 443
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 450
    :cond_11
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SharedMem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 451
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 453
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 455
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 457
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 458
    :cond_12
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 459
    const/16 v5, 0x54

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 461
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 462
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 465
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 467
    :cond_13
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$000(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FieldLevel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    const/16 v5, 0x56

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 473
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 474
    invoke-static {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->access$100(Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 476
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 481
    .end local v4           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_14
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 482
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 486
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 222
    const-string v3, ""

    .line 234
    :goto_0
    return-object v3

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<Meta>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;

    .line 228
    .local v2, tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    if-nez v2, :cond_1

    .line 226
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    .end local v2           #tag:Lcom/asus/dmlib/syncml/dm/message/description/Meta$MetaTag;
    :cond_2
    const-string v3, "</Meta>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
