.class public Lcom/asus/dmlib/syncml/message/container/SyncHdr;
.super Ljava/lang/Object;
.source "SyncHdr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncHdr"


# instance fields
.field private mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

.field private mHdrElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

.field private mIsNoResp:Z

.field private mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

.field private mMsgID:Ljava/lang/String;

.field private mRespURI:Ljava/lang/String;

.field private mSessionID:Ljava/lang/String;

.field private mSource:Lcom/asus/dmlib/syncml/message/common/Source;

.field private mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

.field private mVerDTD:Ljava/lang/String;

.field private mVerProto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 2
    .parameter "pHeader"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mHdrElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 138
    const-string v1, "VerProto"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    .line 139
    const-string v1, "VerDTD"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    .line 140
    const-string v1, "SessionID"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    .line 141
    const-string v1, "MsgID"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    .line 142
    const-string v1, "RespURI"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    .line 145
    const-string v1, "Cred"

    invoke-virtual {p1, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 147
    .local v0, credElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v1, v0}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V

    .line 149
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;)V
    .locals 1
    .parameter "pOldHeader"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getVerProto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 66
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 67
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    .line 68
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMetaData()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 76
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 77
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 78
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 80
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v6, "Target"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 129
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 133
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 83
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 131
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    goto :goto_0

    .line 87
    :cond_4
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 89
    :cond_5
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mIsNoResp:Z

    goto :goto_0

    .line 94
    :sswitch_1
    const-string v6, "SyncHdr"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    :sswitch_2
    const/4 v5, 0x0

    .line 101
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_7

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_6
    :goto_2
    const-string v6, "VerDTD"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 115
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    goto/16 :goto_0

    .line 107
    :cond_7
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_6

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_6

    .line 109
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

    .line 116
    :cond_8
    const-string v6, "VerProto"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 117
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    :cond_9
    const-string v6, "SessionID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 119
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_a
    const-string v6, "MsgID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 121
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    :cond_b
    const-string v6, "RespURI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 78
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
.method public getCred()Lcom/asus/dmlib/syncml/message/common/Cred;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 5
    .parameter "xmlType"

    .prologue
    const/4 v4, 0x2

    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, length:I
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    add-int/lit8 v1, v1, 0x13

    .line 357
    add-int/lit8 v1, v1, 0x11

    .line 359
    add-int/lit8 v1, v1, 0x15

    .line 361
    add-int/lit8 v1, v1, 0x17

    .line 363
    add-int/lit8 v1, v1, 0xf

    .line 366
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    add-int/lit8 v1, v1, 0x13

    .line 395
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    :goto_1
    add-int/2addr v1, v2

    .line 397
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    :goto_2
    add-int/2addr v1, v2

    .line 399
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    :goto_3
    add-int/2addr v1, v2

    .line 401
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    :goto_4
    add-int/2addr v1, v2

    .line 403
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/2addr v1, v2

    :goto_6
    move v2, v1

    .line 413
    :goto_7
    return v2

    .line 374
    :cond_1
    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    add-int/lit8 v1, v1, 0x2

    .line 376
    add-int/lit8 v1, v1, 0x2

    .line 377
    add-int/lit8 v1, v1, 0x2

    .line 378
    add-int/lit8 v1, v1, 0x2

    .line 379
    add-int/lit8 v1, v1, 0x2

    .line 381
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 382
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 390
    :cond_2
    const-string v2, "SyncHdr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHdr getLength() returning -1, xml type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v2, -0x1

    goto :goto_7

    .line 395
    :cond_3
    const/4 v2, 0x6

    goto :goto_1

    .line 397
    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    :cond_5
    move v2, v4

    .line 399
    goto :goto_3

    :cond_6
    move v2, v4

    .line 401
    goto :goto_4

    .line 403
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 404
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 405
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "SyncHdr"

    invoke-static {v2, v0}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public getMetaData()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    return-object v0
.end method

.method public getRespURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/asus/dmlib/syncml/message/common/Source;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    return-object v0
.end method

.method public getTarget()Lcom/asus/dmlib/syncml/message/common/Target;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    return-object v0
.end method

.method public getVerDTD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    return-object v0
.end method

.method public getVerProto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    return-object v0
.end method

.method public isContainCred()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mHdrElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    if-nez v0, :cond_0

    move v0, v2

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mHdrElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    const-string v1, "Cred"

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V
    .locals 0
    .parameter "cred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 212
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    .line 213
    return-void
.end method

.method public setMetaData(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 2
    .parameter "meta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null meta"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 229
    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 2
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null msgID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setRespURI(Ljava/lang/String;)V
    .locals 2
    .parameter "respURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null respURI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 2
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null sessionID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    .line 204
    return-void
.end method

.method public setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V
    .locals 2
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    .line 196
    return-void
.end method

.method public setVerDTD(Ljava/lang/String;)V
    .locals 2
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setVerProto(Ljava/lang/String;)V
    .locals 2
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    .line 164
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

    .line 291
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 297
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 308
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 316
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 324
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/message/common/Target;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 328
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/message/common/Source;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 330
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 331
    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 335
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    :cond_0
    iget-boolean v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mIsNoResp:Z

    if-eqz v1, :cond_1

    .line 339
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 347
    :cond_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<SyncHdr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "<VerDTD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerDTD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VerDTD>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "<VerProto>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mVerProto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VerProto>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "<SessionID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</SessionID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "<MsgID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMsgID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</MsgID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mTarget:Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Target;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mSource:Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Source;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "<RespURI>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mRespURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</RespURI>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    iget-boolean v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mIsNoResp:Z

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "<NoResp/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3
    const-string v1, "</SyncHdr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
