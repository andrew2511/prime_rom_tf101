.class public Lcom/asus/dmlib/syncml/message/common/Cred;
.super Ljava/lang/Object;
.source "Cred.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 2
    .parameter "pCredElement"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v1, "Meta"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    invoke-virtual {p0, v0}, Lcom/asus/dmlib/syncml/message/common/Cred;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Cred if data is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 44
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 45
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 46
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 48
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 80
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 84
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 54
    .restart local v4       #type:I
    :sswitch_1
    :try_start_1
    const-string v6, "Cred"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :sswitch_2
    const/4 v5, 0x0

    .line 61
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_3

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_2
    :goto_2
    const-string v6, "Data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 82
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    :try_start_2
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_2

    .line 68
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_2

    .line 69
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

    .line 46
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
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    return-object v0
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 2
    .parameter "meta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null meta"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 113
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 3
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    :cond_0
    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    const/16 v1, -0x3d

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<Cred>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "<Data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/common/Cred;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</Data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    const-string v1, "</Cred>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
