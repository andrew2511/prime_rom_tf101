.class public Lcom/asus/dmlib/syncml/message/command/Atomic;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Atomic.java"


# instance fields
.field private mCmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/command/BaseCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .parameter "parser"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    .line 30
    const/4 v4, 0x0

    .line 31
    .local v4, tagName:Ljava/lang/String;
    const/4 v3, 0x1

    .line 32
    .local v3, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v5

    .line 34
    .local v5, type:I
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 36
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-string v7, "NoResp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    .end local v5           #type:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 98
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 102
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 39
    .restart local v5       #type:I
    :cond_2
    :try_start_1
    const-string v7, "Meta"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 40
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    .end local v5           #type:I
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 100
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #type:I
    :cond_3
    const/4 v1, 0x0

    .line 43
    .local v1, bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :try_start_2
    const-string v7, "Alert"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 44
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Alert;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Alert;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_5
    const-string v7, "Atomic"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 46
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Atomic;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Atomic;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 47
    :cond_6
    const-string v7, "Copy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 48
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Copy;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Copy;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 49
    :cond_7
    const-string v7, "Exec"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 50
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Exec;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Exec;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 51
    :cond_8
    const-string v7, "Get"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 52
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Get;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Get;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 53
    :cond_9
    const-string v7, "Map"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 54
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Map;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Map;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 55
    :cond_a
    const-string v7, "Move"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 56
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Move;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Move;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 57
    :cond_b
    const-string v7, "Sequence"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 58
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Sequence;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Sequence;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 59
    :cond_c
    const-string v7, "Sync"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 60
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Sync;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Sync;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 61
    :cond_d
    const-string v7, "Add"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 62
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Add;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Add;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto/16 :goto_2

    .line 63
    :cond_e
    const-string v7, "Replace"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 64
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Replace;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Replace;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto/16 :goto_2

    .line 65
    :cond_f
    const-string v7, "Delete"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Delete;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Delete;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto/16 :goto_2

    .line 72
    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :sswitch_1
    const-string v7, "Atomic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 78
    :sswitch_2
    const/4 v6, 0x0

    .line 79
    .local v6, value:Ljava/lang/String;
    instance-of v7, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v7, :cond_11

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 91
    :cond_10
    :goto_3
    const-string v7, "CmdID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdID:Ljava/lang/String;

    goto/16 :goto_0

    .line 85
    :cond_11
    instance-of v7, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v7, :cond_10

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v7

    const/16 v8, 0xc3

    if-ne v7, v8, :cond_10

    .line 87
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/kxml2/wap/WbxmlParser;->getWapExtensionData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v6       #value:Ljava/lang/String;
    goto :goto_3

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
.method public addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 108
    return-void
.end method

.method public getCmdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/command/BaseCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCred()Lcom/asus/dmlib/syncml/message/common/Cred;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    invoke-direct {v0}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>()V

    throw v0
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
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public removeCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V
    .locals 1
    .parameter "cred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    invoke-direct {v0}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>()V

    throw v0
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

    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x48

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 163
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    const/16 v3, -0x3d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 169
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 175
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    :cond_1
    const/4 v2, 0x0

    .line 181
    .local v2, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    check-cast v2, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 183
    .restart local v2       #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v1           #c:I
    .end local v2           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_2
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 186
    .restart local v1       #c:I
    .restart local v2       #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "<Atomic>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "<CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CmdID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "<NoResp/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Atomic;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 148
    .local v1, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_2
    const-string v3, "</Atomic>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
