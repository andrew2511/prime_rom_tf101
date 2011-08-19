.class public Lcom/asus/dmlib/syncml/message/command/Delete;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Delete.java"


# instance fields
.field private mIsArchive:Z

.field private mIsSftDel:Z

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
    const/4 v6, 0x0

    .line 28
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 24
    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z

    .line 25
    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    .line 30
    const/4 v3, 0x0

    .line 31
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 32
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 34
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 36
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 38
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 78
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 82
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 39
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 40
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 80
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 41
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "SftDel"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 42
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    goto :goto_0

    .line 43
    :cond_4
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 44
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    goto :goto_0

    .line 45
    :cond_5
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 46
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 47
    :cond_6
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "Delete"

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

    if-eqz v6, :cond_8

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 71
    :cond_7
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCmdID:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_8
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_7

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_7

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
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_2

    .line 34
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
    .line 117
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 88
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
    .line 113
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public isArchive()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z

    return v0
.end method

.method public isSftDel()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public setArchive(Z)V
    .locals 0
    .parameter "archive"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z

    .line 102
    return-void
.end method

.method public setSftDel(Z)V
    .locals 0
    .parameter "sftDel"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    .line 110
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

    .line 153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 158
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 164
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 170
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    :cond_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z

    if-eqz v3, :cond_1

    .line 173
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    :cond_1
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    if-eqz v3, :cond_2

    .line 176
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_4

    .line 182
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    :cond_4
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 185
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 186
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_5
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 189
    .restart local v1       #c:I
    :cond_6
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Delete>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsArchive:Z

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "<Archive/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mIsSftDel:Z

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "<SftDel/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_4
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Delete;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_5
    const-string v2, "</Delete>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
