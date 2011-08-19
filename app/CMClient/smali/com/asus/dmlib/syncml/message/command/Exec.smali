.class public Lcom/asus/dmlib/syncml/message/command/Exec;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Exec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Exec"


# instance fields
.field private mCorrelator:Ljava/lang/String;

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

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Exec if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mAppCommandRef:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/message/command/Exec;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

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

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 96
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 100
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

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 98
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

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 63
    :cond_4
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v6, "Exec"

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

    if-eqz v6, :cond_7

    .line 88
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCmdID:Ljava/lang/String;

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

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_2

    .line 89
    :cond_7
    const-string v6, "Correlator"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 54
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
    .line 230
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 14
    .parameter "syncml"

    .prologue
    .line 104
    const/4 v8, 0x0

    .line 105
    .local v8, status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    .line 108
    .local v0, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    :try_start_0
    new-instance v9, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v11, 0xca

    invoke-direct {v9, p0, v11}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .local v9, status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object v8, v9

    .line 115
    .end local v9           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v8       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :goto_0
    iget-object v11, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 116
    iget-object v11, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v11

    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v11, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 119
    .local v5, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v11

    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, locURI:Ljava/lang/String;
    const-string v11, "Exec"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "locURI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, data:Ljava/lang/String;
    const-string v11, "Exec"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v10

    .line 125
    .local v10, tree:Lcom/asus/dmlib/tree/DMTree;
    invoke-virtual {v10, v6}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v7

    .line 126
    .local v7, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v7, :cond_1

    .line 128
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, v8, v11}, Lcom/asus/dmlib/tree/DMNode;->onExecute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 110
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v6           #locURI:Ljava/lang/String;
    .end local v7           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v10           #tree:Lcom/asus/dmlib/tree/DMTree;
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 111
    .local v3, ex:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    const/16 v11, 0x1f4

    throw v8

    .line 112
    invoke-static {v3}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 135
    .end local v3           #ex:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .restart local v6       #locURI:Ljava/lang/String;
    .restart local v7       #node:Lcom/asus/dmlib/tree/DMNode;
    .restart local v10       #tree:Lcom/asus/dmlib/tree/DMTree;
    :cond_1
    const/16 v11, 0x194

    :try_start_2
    invoke-virtual {v8, v11}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 136
    :catch_2
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 142
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v6           #locURI:Ljava/lang/String;
    .end local v7           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v10           #tree:Lcom/asus/dmlib/tree/DMTree;
    :cond_2
    invoke-virtual {v0, v8}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 143
    return-void
.end method

.method public getCorrelator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    return-object v0
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
    .line 258
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 1
    .parameter "contentType"

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setCorrelator(Ljava/lang/String;)V
    .locals 0
    .parameter "correlator"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x3d

    const/4 v4, 0x1

    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x51

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 190
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 202
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 212
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 215
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 218
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 222
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 223
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 225
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "<Exec>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v3, "<CmdID>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CmdID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "<NoResp/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 173
    const-string v3, "<Correlator>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</Correlator>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 176
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 177
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Exec;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_4
    const-string v3, "</Exec>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
