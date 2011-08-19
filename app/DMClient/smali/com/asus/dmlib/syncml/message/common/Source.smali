.class public Lcom/asus/dmlib/syncml/message/common/Source;
.super Ljava/lang/Object;
.source "Source.java"


# instance fields
.field private mLocName:Ljava/lang/String;

.field private mLocURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "locURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Source if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    .line 31
    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 46
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 47
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 48
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 50
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v6, "Source"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :sswitch_2
    const/4 v5, 0x0

    .line 60
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_3

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 72
    :cond_1
    :goto_1
    const-string v6, "LocName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 81
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 85
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-void

    .line 66
    .restart local v4       #type:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    :try_start_1
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_1

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_1

    .line 68
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
    goto :goto_1

    .line 74
    :cond_4
    const-string v6, "LocURI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 83
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 48
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
.method public getLocName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    return-object v0
.end method

.method public setLocName(Ljava/lang/String;)V
    .locals 2
    .parameter "locName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null locName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setLocURI(Ljava/lang/String;)V
    .locals 2
    .parameter "pLocUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null locName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, -0x3d

    const/4 v2, 0x1

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 140
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<Source>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "<LocURI>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</LocURI>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "<LocName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/common/Source;->mLocName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</LocName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    const-string v1, "</Source>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
