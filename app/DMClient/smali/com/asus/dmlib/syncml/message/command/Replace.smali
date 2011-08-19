.class public Lcom/asus/dmlib/syncml/message/command/Replace;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Replace.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Replace"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 2
    .parameter "pAppCommandRef"
    .parameter "pItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Replace if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mAppCommandRef:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 52
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 54
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 94
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 98
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 59
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 96
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 63
    :cond_4
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v6, "Replace"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    const/4 v2, 0x0

    goto :goto_0

    .line 74
    :sswitch_2
    const/4 v5, 0x0

    .line 75
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_6

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 87
    :cond_5
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_6
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_5

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    .line 83
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

    .line 54
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
    .line 154
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 13
    .parameter "syncml"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    .line 103
    .local v0, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    const/4 v7, 0x0

    .line 106
    .local v7, status:Lcom/asus/dmlib/syncml/message/management/Status;
    :try_start_0
    new-instance v8, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v10, 0xc8

    invoke-direct {v8, p0, v10}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .local v8, status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object v7, v8

    .line 113
    .end local v8           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v7       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :goto_0
    iget-object v10, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 114
    iget-object v10, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v10, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 117
    .local v4, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, locURI:Ljava/lang/String;
    const-string v10, "Replace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "locURI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, data:Ljava/lang/String;
    const-string v10, "Replace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v9

    .line 123
    .local v9, tree:Lcom/asus/dmlib/tree/DMTree;
    invoke-virtual {v9, v5}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v6

    .line 124
    .local v6, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v6, :cond_1

    .line 126
    :try_start_1
    invoke-virtual {v6, v1}, Lcom/asus/dmlib/tree/DMNode;->onWrite(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, e:Lcom/asus/dmlib/vdm/VdmException;
    const/16 v10, 0x1f4

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 129
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v5           #locURI:Ljava/lang/String;
    .end local v6           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v9           #tree:Lcom/asus/dmlib/tree/DMTree;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 110
    .local v2, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 133
    .end local v2           #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .restart local v5       #locURI:Ljava/lang/String;
    .restart local v6       #node:Lcom/asus/dmlib/tree/DMNode;
    .restart local v9       #tree:Lcom/asus/dmlib/tree/DMTree;
    :cond_1
    const/16 v10, 0x194

    :try_start_2
    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 134
    :catch_2
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 140
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v5           #locURI:Ljava/lang/String;
    .end local v6           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v9           #tree:Lcom/asus/dmlib/tree/DMTree;
    :cond_2
    invoke-virtual {v0, v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 141
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
    .line 150
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 1
    .parameter "contentType"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 147
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

    .line 184
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 189
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 201
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 210
    :cond_2
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 212
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_3
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 215
    .restart local v1       #c:I
    :cond_4
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Replace>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_2
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Replace;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    const-string v2, "</Replace>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
