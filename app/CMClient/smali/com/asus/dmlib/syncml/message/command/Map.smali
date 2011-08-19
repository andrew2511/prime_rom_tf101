.class public Lcom/asus/dmlib/syncml/message/command/Map;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Map.java"


# instance fields
.field private mMapItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/command/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Lcom/asus/dmlib/syncml/message/common/Source;

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    .line 37
    const/4 v3, 0x0

    .line 38
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 39
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 41
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 43
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v6, "Target"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 83
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 87
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 46
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 47
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 85
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 48
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 49
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    goto :goto_0

    .line 50
    :cond_4
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 51
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 52
    :cond_5
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/message/command/MapItem;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/message/command/MapItem;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v6, "Map"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    const/4 v2, 0x0

    goto :goto_0

    .line 63
    :sswitch_2
    const/4 v5, 0x0

    .line 64
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_7

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_6
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCmdID:Ljava/lang/String;

    goto/16 :goto_0

    .line 70
    :cond_7
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_6

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_6

    .line 72
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

    .line 41
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
.method public addItem(Lcom/asus/dmlib/syncml/message/command/MapItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 93
    return-void
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 2
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
    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMapItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/command/MapItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoResp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "NoResp"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSource()Lcom/asus/dmlib/syncml/message/common/Source;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public hasNestedCommands()Z
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/message/command/MapItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setNoResp(Z)V
    .locals 2
    .parameter "noResp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "NoResp"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 115
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 107
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

    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x58

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 164
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 176
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 178
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    :cond_1
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/message/command/MapItem;

    .line 187
    .local v2, temp:Lcom/asus/dmlib/syncml/message/command/MapItem;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/command/MapItem;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/message/command/MapItem;
    :cond_2
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 190
    .restart local v1       #c:I
    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Map>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Map;->mMapItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/message/command/MapItem;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/command/MapItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    const-string v2, "</Map>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
