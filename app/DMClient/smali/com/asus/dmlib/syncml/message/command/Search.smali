.class public Lcom/asus/dmlib/syncml/message/command/Search;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Search.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mIsNoResults:Z

.field private mLang:Ljava/lang/String;

.field private mSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/common/Source;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 28
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 42
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 43
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 44
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 46
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 48
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 92
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 96
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 49
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "NoResults"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 50
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 93
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 94
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 51
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 52
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    goto :goto_0

    .line 53
    :cond_4
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 54
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 55
    :cond_5
    const-string v6, "Target"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 56
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    goto :goto_0

    .line 57
    :cond_6
    const-string v6, "Source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v6, "Search"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 68
    :sswitch_2
    const/4 v5, 0x0

    .line 69
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_8

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 81
    :cond_7
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 82
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCmdID:Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    :cond_8
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_7

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_7

    .line 77
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

    .line 83
    :cond_9
    const-string v6, "Lang"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 84
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    goto/16 :goto_0

    .line 85
    :cond_a
    const-string v6, "Data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private doWriteDataLenth(ILjava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "dataSize"
    .parameter "baos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x20

    const/16 v1, 0x4000

    const/16 v0, 0x80

    .line 247
    if-ge p1, v0, :cond_0

    .line 248
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    :goto_0
    return-void

    .line 249
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 250
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 252
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 253
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 255
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 256
    :cond_2
    if-lt p1, v2, :cond_3

    const/high16 v0, 0x1000

    if-ge p1, v0, :cond_3

    .line 257
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 262
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Item: Too big message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncml"

    .prologue
    .line 102
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;

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
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/common/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public hasNestedCommands()Z
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNoResults()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z

    return v0
.end method

.method public removeSource(Lcom/asus/dmlib/syncml/message/common/Source;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setNoResults(Z)V
    .locals 0
    .parameter "noResults"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z

    .line 116
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 124
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x3d

    const/4 v5, 0x1

    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x63

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCmdID:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 191
    const/16 v4, 0x4b

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCmdID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCmdID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    :goto_0
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResp:Z

    if-eqz v4, :cond_0

    .line 203
    const/16 v4, 0x1d

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    :cond_0
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z

    if-eqz v4, :cond_1

    .line 206
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v4, :cond_2

    .line 209
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v4, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v4, :cond_3

    .line 212
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v4, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    :cond_3
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 215
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/message/common/Source;

    .line 216
    .local v3, temp:Lcom/asus/dmlib/syncml/message/common/Source;
    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    .end local v1           #c:I
    .end local v3           #temp:Lcom/asus/dmlib/syncml/message/common/Source;
    :cond_4
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 219
    .restart local v1       #c:I
    :cond_5
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 220
    const/16 v4, 0x55

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    :cond_6
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v4, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 230
    const/16 v4, 0x4f

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v2, v4

    .line 236
    .local v2, dataSize:I
    invoke-direct {p0, v2, v0}, Lcom/asus/dmlib/syncml/message/command/Search;->doWriteDataLenth(ILjava/io/ByteArrayOutputStream;)V

    .line 237
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 239
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Search>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mIsNoResults:Z

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "<NoResults/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_3
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 175
    const-string v2, "<Lang>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Lang>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v2, "<Data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Search;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Data>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, "</Search>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
