.class public Lcom/asus/dmlib/syncml/message/container/SyncML;
.super Ljava/lang/Object;
.source "SyncML.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncML"


# instance fields
.field private mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

.field private mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 18
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V
    .locals 2
    .parameter "syncHeader"
    .parameter "syncBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 18
    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 23
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new SyncML if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 30
    iput-object p2, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 18
    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 41
    .local v1, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 42
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    .line 43
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v4, "SyncHdr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    new-instance v4, Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-direct {v4, p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 58
    .end local v3           #type:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 59
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 63
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 48
    .restart local v3       #type:I
    :cond_2
    :try_start_1
    const-string v4, "SyncBody"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v4, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    .end local v3           #type:I
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #type:I
    :pswitch_1
    :try_start_2
    const-string v4, "SyncML"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertCharsetWBXMLToken(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "charset"
    .parameter "baos"

    .prologue
    const/16 v2, 0x6a

    const/16 v1, -0x79

    .line 119
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ISO8859_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 126
    :cond_5
    const-string v0, "ISO-8859-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ISO8859_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    :cond_6
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 129
    :cond_7
    const-string v0, "ISO-8859-4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ISO8859_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :cond_8
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 132
    :cond_9
    const-string v0, "ISO-8859-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ISO8859_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 135
    :cond_b
    const-string v0, "ISO-8859-7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ISO8859_7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    :cond_c
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 138
    :cond_d
    const-string v0, "ISO-8859-13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ISO8859_13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    :cond_e
    const/16 v0, 0x6d

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 141
    :cond_f
    const-string v0, "ISO-8859-15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ISO8859_15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    :cond_10
    const/16 v0, 0x6f

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 144
    :cond_11
    const-string v0, "UTF-16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    const/16 v0, 0x77

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 147
    :cond_12
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "UnicodeBigUnmarked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 149
    :cond_13
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    const/16 v0, 0x75

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 151
    :cond_14
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 153
    :cond_15
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    const/16 v0, 0x76

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 155
    :cond_16
    const-string v0, "KOI8-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "KOI8_R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 156
    :cond_17
    const/16 v0, -0x70

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 159
    :cond_18
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "xmlType"

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, length:I
    const-string v1, "application/vnd.syncml.dm+xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    add-int/lit8 v0, v0, 0x2a

    :goto_0
    move v1, v0

    .line 176
    :goto_1
    return v1

    .line 167
    :cond_0
    const-string v1, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const-string v1, "SyncML"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncML getLength() returning -1, xml type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    return-object v0
.end method

.method public getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    return-object v0
.end method

.method public setSyncBody(Lcom/asus/dmlib/syncml/message/container/SyncBody;)V
    .locals 0
    .parameter "syncBody"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 79
    return-void
.end method

.method public setSyncHeader(Lcom/asus/dmlib/syncml/message/container/SyncHdr;)V
    .locals 0
    .parameter "syncHeader"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 71
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 3
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    const/16 v2, -0x5c

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->insertCharsetWBXMLToken(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    const/16 v2, 0x6d

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 111
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 112
    .local v1, ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SyncML xmlns=\"SYNCML:SYNCML"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncML;->mSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</SyncML>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
