.class public Lcom/asus/dmlib/syncml/message/command/Move;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Move.java"


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
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 31
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 33
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 35
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 72
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 73
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 77
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 38
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 39
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 40
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 42
    :cond_4
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "Move"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :sswitch_2
    const/4 v5, 0x0

    .line 54
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_6

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 66
    :cond_5
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_6
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_5

    .line 61
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    .line 62
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

    .line 33
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
    .line 96
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 83
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
    .line 92
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNestedCommands()Z
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 89
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

    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 131
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 143
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    :cond_2
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 153
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 154
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_3
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 157
    .restart local v1       #c:I
    :cond_4
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Move>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Move;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_3
    const-string v2, "</Move>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
