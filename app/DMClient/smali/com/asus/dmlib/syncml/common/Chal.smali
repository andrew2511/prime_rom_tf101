.class public Lcom/asus/dmlib/syncml/common/Chal;
.super Ljava/lang/Object;
.source "Chal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Chal"


# instance fields
.field private mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 2
    .parameter "pMeta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Chal if meta is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 5
    .parameter "chal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot construct a new Chal if element is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    new-instance v3, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v4, "Meta"

    invoke-virtual {p1, v4}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    iput-object v3, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 78
    iget-object v3, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, type:Ljava/lang/String;
    const-string v3, "syncml:auth-md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "syncml:auth-mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Spec. violation ! Format MUST be specified with auth-md5/auth-mac."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v4, "NextNonce"

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, nextNonce:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Spec. violation ! NextNonce MUST be specified with auth-md5/auth-mac."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #nextNonce:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 36
    .local v1, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    .line 38
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v4, "Meta"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v4, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v4, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    .end local v3           #type:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 55
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 59
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 45
    .restart local v3       #type:I
    :pswitch_1
    :try_start_1
    const-string v4, "Chal"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    .end local v3           #type:I
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 57
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "xmlType"

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, length:I
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/common/Chal;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v2, v1

    .line 148
    :goto_1
    return v2

    .line 134
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 135
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "Chal"

    invoke-static {v2, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    add-int/lit8 v1, v1, 0x2

    .line 139
    iget-object v2, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getLength(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 141
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getLength(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    goto :goto_0

    .line 146
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    return-object v0
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 0
    .parameter "meta"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 102
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 2
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    iget-object v1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<Chal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 109
    const-string v1, ""

    .line 113
    :goto_0
    return-object v1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/common/Chal;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    const-string v1, "</Chal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
