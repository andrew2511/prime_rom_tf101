.class public Lcom/asus/dmlib/syncml/message/command/Add;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Add.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseCommand"


# instance fields
.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 2
    .parameter "appCommandRef"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Add if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mAppCommandRef:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/message/command/Add;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 44
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 45
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 46
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 48
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 86
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 90
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 51
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 52
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 87
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 88
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 54
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 55
    :cond_4
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v6, "Add"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    :sswitch_2
    const/4 v5, 0x0

    .line 68
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_6

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_5
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_6
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_5

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    .line 76
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
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_2

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 14
    .parameter "syncml"

    .prologue
    .line 94
    iget-object v11, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 95
    .local v4, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v11

    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, locURI:Ljava/lang/String;
    const-string v11, "BaseCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "locURI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v6

    .line 99
    .local v6, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    const/4 v2, 0x0

    .local v2, format:Ljava/lang/String;
    const/4 v10, 0x0

    .line 100
    .local v10, type:Ljava/lang/String;
    const-string v11, "BaseCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v6, :cond_1

    .line 103
    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v10

    .line 106
    :cond_1
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v9

    .line 107
    .local v9, tree:Lcom/asus/dmlib/tree/DMTree;
    const/4 v11, 0x0

    const/16 v12, 0x2f

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, parientUri:Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v7

    .line 109
    .local v7, parientNode:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v7, :cond_0

    .line 112
    invoke-virtual {v9, v5}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v11

    if-nez v11, :cond_0

    .line 113
    const-string v11, "node"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 116
    :try_start_0
    invoke-virtual {v9, v5, v10}, Lcom/asus/dmlib/tree/DMTree;->addInteriorNode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 123
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v5, v2, v10, v11}, Lcom/asus/dmlib/tree/DMTree;->addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 125
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 127
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 136
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v2           #format:Ljava/lang/String;
    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v5           #locURI:Ljava/lang/String;
    .end local v6           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v7           #parientNode:Lcom/asus/dmlib/tree/DMNode;
    .end local v8           #parientUri:Ljava/lang/String;
    .end local v9           #tree:Lcom/asus/dmlib/tree/DMTree;
    .end local v10           #type:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 6
    .parameter "pXmlType"

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, length:I
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    add-int/lit8 v2, v2, 0xb

    .line 223
    add-int/lit8 v2, v2, 0xf

    .line 232
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    const/4 v4, 0x2

    :goto_1
    add-int/2addr v2, v4

    .line 237
    :goto_2
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v4, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getLength(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 242
    .local v3, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getLength(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 224
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_1
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    add-int/lit8 v2, v2, 0x2

    .line 226
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 228
    :cond_2
    const/4 v4, -0x1

    .line 244
    :goto_4
    return v4

    .line 232
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 234
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BaseCommand"

    invoke-static {v4, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    move v4, v2

    .line 244
    goto :goto_4
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 185
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 186
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 187
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 198
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    :cond_2
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 209
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 210
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_3
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 213
    .restart local v1       #c:I
    :cond_4
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "<Add><CmdID>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CmdID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "<NoResp/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Add;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 172
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_3
    const-string v3, "</Add>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
