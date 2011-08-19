.class public Lcom/asus/dmlib/syncml/dm/message/description/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Item"


# instance fields
.field private mData:Ljava/lang/String;

.field private mInStreamItem:Lcom/asus/dmlib/syncml/dm/InputStreamItem;

.field private mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

.field private mMoreData:Z

.field private mSource:Lcom/asus/dmlib/syncml/message/common/Source;

.field private mSourceParent:Ljava/lang/String;

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

.field private mTargetParent:Ljava/lang/String;

.field private m_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    .line 40
    iput v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->m_size:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mInStreamItem:Lcom/asus/dmlib/syncml/dm/InputStreamItem;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    .line 40
    iput v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->m_size:I

    .line 42
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mInStreamItem:Lcom/asus/dmlib/syncml/dm/InputStreamItem;

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 54
    .local v2, keepParsingItem:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 55
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 56
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 58
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v6, "Target"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 99
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 100
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 104
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 61
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 102
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 65
    :cond_4
    const-string v6, "MoreData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    goto :goto_0

    .line 70
    :sswitch_1
    const-string v6, "Item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    :sswitch_2
    const/4 v5, 0x0

    .line 77
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_6

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 89
    :cond_5
    :goto_2
    const-string v6, "SourceParent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 90
    iput-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_6
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_5

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    .line 85
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

    .line 91
    :cond_7
    const-string v6, "TargetParent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 92
    iput-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_8
    const-string v6, "Data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iput-object v5, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 56
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

    .line 287
    if-ge p1, v0, :cond_0

    .line 288
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    :goto_0
    return-void

    .line 289
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 290
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 291
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 292
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 293
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 295
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 296
    :cond_2
    if-lt p1, v2, :cond_3

    const/high16 v0, 0x1000

    if-ge p1, v0, :cond_3

    .line 297
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 300
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 302
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Item: Too big message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getInputStreamItem()Lcom/asus/dmlib/syncml/dm/InputStreamItem;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mInStreamItem:Lcom/asus/dmlib/syncml/dm/InputStreamItem;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "pXmlType"

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, length:I
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v1

    .line 355
    :goto_1
    return v2

    .line 316
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Item"

    invoke-static {v2, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    return-object v0
.end method

.method public getSource()Lcom/asus/dmlib/syncml/message/common/Source;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    return-object v0
.end method

.method public getSourceParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public getTargetParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    return-object v0
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 0
    .parameter "meta"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 144
    return-void
.end method

.method public setMoreData(Z)V
    .locals 0
    .parameter "moreData"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    .line 160
    return-void
.end method

.method public setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 120
    return-void
.end method

.method public setSourceParent(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceParent"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 112
    return-void
.end method

.method public setTargetParent(Ljava/lang/String;)V
    .locals 0
    .parameter "targetParent"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    .line 136
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
    const/16 v5, 0x79

    const/16 v4, -0x3d

    const/4 v3, 0x1

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-nez v2, :cond_0

    .line 221
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    .line 225
    :cond_0
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSourceParent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    :cond_3
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 246
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTargetParent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 254
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_5

    .line 258
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 261
    const/16 v2, 0x4f

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    .line 267
    .local v1, dataSize:I
    invoke-direct {p0, v1, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->doWriteDataLenth(ILjava/io/ByteArrayOutputStream;)V

    .line 268
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 270
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 278
    .end local v1           #dataSize:I
    :cond_6
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    if-eqz v2, :cond_7

    .line 279
    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    :cond_7
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<Item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 194
    const-string v1, "<Data><![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]></Data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    iget-boolean v1, p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;->mMoreData:Z

    if-eqz v1, :cond_4

    .line 200
    const-string v1, "<MoreData/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    const-string v1, "</Item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
