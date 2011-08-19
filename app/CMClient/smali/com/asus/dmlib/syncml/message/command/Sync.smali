.class public Lcom/asus/dmlib/syncml/message/command/Sync;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Sync.java"


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

.field private mNumberOfChanges:Ljava/lang/String;

.field private mSource:Lcom/asus/dmlib/syncml/message/common/Source;

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .parameter "parser"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 34
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, tagName:Ljava/lang/String;
    const/4 v3, 0x1

    .line 40
    .local v3, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 41
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v5

    .line 42
    .local v5, type:I
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 44
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v7, "NoResp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 46
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 103
    .end local v5           #type:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 104
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 108
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v5       #type:I
    :cond_2
    :try_start_1
    const-string v7, "Cred"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 48
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    .end local v5           #type:I
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 106
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 49
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #type:I
    :cond_3
    :try_start_2
    const-string v7, "Target"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 50
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    goto :goto_0

    .line 51
    :cond_4
    const-string v7, "Source"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 52
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    goto :goto_0

    .line 53
    :cond_5
    const-string v7, "Meta"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 54
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 56
    :cond_6
    const/4 v1, 0x0

    .line 57
    .local v1, bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const-string v7, "Atomic"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 58
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Atomic;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Atomic;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_8
    const-string v7, "Copy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 60
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Copy;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Copy;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 61
    :cond_9
    const-string v7, "Move"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 62
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Move;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Move;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 63
    :cond_a
    const-string v7, "Sequence"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 64
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Sequence;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Sequence;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 65
    :cond_b
    const-string v7, "Add"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 66
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Add;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Add;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 67
    :cond_c
    const-string v7, "Replace"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 68
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Replace;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Replace;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 69
    :cond_d
    const-string v7, "Delete"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 70
    new-instance v1, Lcom/asus/dmlib/syncml/message/command/Delete;

    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v1, p1}, Lcom/asus/dmlib/syncml/message/command/Delete;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .restart local v1       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    goto :goto_2

    .line 76
    .end local v1           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :sswitch_1
    const-string v7, "Sync"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 82
    :sswitch_2
    const/4 v6, 0x0

    .line 83
    .local v6, value:Ljava/lang/String;
    instance-of v7, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v7, :cond_f

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v7

    if-nez v7, :cond_0

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 95
    :cond_e
    :goto_3
    const-string v7, "CmdID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 96
    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdID:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :cond_f
    instance-of v7, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v7, :cond_e

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v7

    const/16 v8, 0xc3

    if-ne v7, v8, :cond_e

    .line 91
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

    .restart local v6       #value:Ljava/lang/String;
    goto :goto_3

    .line 97
    :cond_10
    const-string v7, "NumberOfChanges"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 42
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
    .line 151
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 114
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
    .line 147
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    return-object v0
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
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfChanges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/asus/dmlib/syncml/message/common/Source;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public hasNestedCommands()Z
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public setNumberOfChanges(Ljava/lang/String;)V
    .locals 0
    .parameter "numOfChanges"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 136
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 128
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
    const/4 v5, 0x1

    const/16 v4, -0x3d

    .line 193
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x6a

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 198
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 210
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_4

    .line 222
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    :cond_4
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 225
    const/16 v3, 0x73

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    :cond_5
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 233
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 234
    .local v2, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    .end local v1           #c:I
    .end local v2           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_6
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 237
    .restart local v1       #c:I
    :cond_7
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "<Sync>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, "<CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CmdID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "<NoResp/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    if-eqz v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 178
    const-string v3, "<NumberOfChanges>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mNumberOfChanges:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</NumberOfChanges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_5
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 182
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Sync;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 183
    .local v1, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v1           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_6
    const-string v3, "</Sync>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
