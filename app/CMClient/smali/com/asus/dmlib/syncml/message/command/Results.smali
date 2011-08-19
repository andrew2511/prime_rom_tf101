.class public Lcom/asus/dmlib/syncml/message/command/Results;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Results.java"


# instance fields
.field private mCmdRef:Ljava/lang/String;

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

.field private mMsgRef:Ljava/lang/String;

.field private mSourceRef:Ljava/lang/String;

.field private mTargetRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cmdID"
    .parameter "msgRef"
    .parameter "cmdRef"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/syncml/message/command/Results;->setCmdID(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/message/command/Results;->setMsgRef(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p3}, Lcom/asus/dmlib/syncml/message/command/Results;->setCmdRef(Ljava/lang/String;)V

    .line 51
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, ex:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 61
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 62
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 63
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 65
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 66
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 106
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 107
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 111
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 68
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 109
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :sswitch_1
    :try_start_2
    const-string v6, "Results"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :sswitch_2
    const/4 v5, 0x0

    .line 80
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_4

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 92
    :cond_3
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 93
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_4
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_3

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_3

    .line 88
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

    .line 94
    :cond_5
    const-string v6, "MsgRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 95
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_6
    const-string v6, "CmdRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 97
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    goto/16 :goto_0

    .line 98
    :cond_7
    const-string v6, "SourceRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 99
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :cond_8
    const-string v6, "TargetRef"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 63
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
    .line 160
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, pItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/dm/message/description/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 194
    .local v1, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/message/command/Results;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    goto :goto_0

    .line 195
    .end local v1           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_0
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 2
    .parameter "syncml"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmdRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

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
    .line 156
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMsgRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    return-object v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSourceRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    return-object v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCmdRef(Ljava/lang/String;)V
    .locals 0
    .parameter "cmdRef"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setMsgRef(Ljava/lang/String;)V
    .locals 0
    .parameter "msgRef"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setSourceRef(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceRef"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTargetRef(Ljava/lang/String;)V
    .locals 0
    .parameter "targetRef"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    .line 153
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

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x62

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 205
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 207
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 220
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 227
    const/16 v3, 0x4c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 231
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 233
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 243
    const/16 v3, 0x6f

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 253
    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 255
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 259
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 262
    :cond_3
    const/4 v1, 0x0

    .local v1, c:I
    :goto_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 264
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 235
    :cond_5
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 267
    .restart local v1       #c:I
    :cond_6
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 268
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Results><CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "<MsgRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMsgRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</MsgRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    const-string v2, "<CmdRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mCmdRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 180
    const-string v2, "<TargetRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mTargetRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</TargetRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 183
    const-string v2, "<SourceRef>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mSourceRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</SourceRef>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_3
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Results;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_4
    const-string v2, "</Results>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
