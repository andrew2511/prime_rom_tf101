.class public Lcom/google/android/talk/util/SessionStanzaParser;
.super Ljava/lang/Object;
.source "SessionStanzaParser.java"


# instance fields
.field public mId:Ljava/lang/String;

.field public mInitiator:Ljava/lang/String;

.field public mRawStanza:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionStanzaString"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/talk/util/SessionStanzaParser;->mId:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/SessionStanzaParser;->parseSessionStanzaString(Ljava/lang/String;)Z

    .line 36
    return-void
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 104
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 105
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 107
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 112
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v3

    .line 110
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 111
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "talk:videochat"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseSessionStanzaString(Ljava/lang/String;)Z
    .locals 17
    .parameter "sessionStanza"

    .prologue
    .line 44
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/talk/util/SessionStanzaParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 47
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 51
    .local v3, eventType:I
    :goto_0
    const/4 v14, 0x1

    if-eq v3, v14, :cond_5

    .line 52
    const/4 v14, 0x2

    if-ne v3, v14, :cond_4

    const-string v14, "session"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "http://www.google.com/session"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 55
    const/4 v5, 0x0

    .line 56
    .local v5, idFound:Z
    const/4 v6, 0x0

    .line 57
    .local v6, initiatorFound:Z
    const/4 v12, 0x0

    .line 58
    .local v12, typeFound:Z
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 59
    .local v2, attributeCount:I
    const/4 v4, 0x0

    .line 61
    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_5

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v12, :cond_5

    .line 62
    :cond_0
    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, name:Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v14, "id"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 68
    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/util/SessionStanzaParser;->mId:Ljava/lang/String;

    .line 69
    const/4 v5, 0x1

    .line 77
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_1

    .line 70
    :cond_2
    if-nez v6, :cond_3

    const-string v14, "initiator"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 71
    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/util/SessionStanzaParser;->mInitiator:Ljava/lang/String;

    .line 72
    const/4 v6, 0x1

    goto :goto_2

    .line 73
    :cond_3
    if-nez v12, :cond_1

    const-string v14, "type"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 74
    invoke-interface {v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    .line 75
    const/4 v12, 0x1

    goto :goto_2

    .line 81
    .end local v2           #attributeCount:I
    .end local v4           #i:I
    .end local v5           #idFound:Z
    .end local v6           #initiatorFound:Z
    .end local v8           #name:Ljava/lang/String;
    .end local v12           #typeFound:Z
    :cond_4
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    goto :goto_0

    .line 84
    .end local v3           #eventType:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v14

    move-object v13, v14

    .line 85
    .local v13, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v14, "talk:videochat"

    const-string v15, "Couldn\'t parse stanza"

    invoke-static {v14, v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v14, 0x0

    .line 98
    .end local v13           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return v14

    .line 87
    :catch_1
    move-exception v14

    move-object v10, v14

    .line 88
    .local v10, npe:Ljava/lang/NullPointerException;
    const-string v14, "talk:videochat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t parse the stanza "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v14, 0x0

    goto :goto_3

    .line 90
    .end local v10           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v14

    move-object v9, v14

    .line 91
    .local v9, nfe:Ljava/lang/NumberFormatException;
    const-string v14, "talk:videochat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t parse the sessionId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v14, 0x0

    goto :goto_3

    .line 93
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v14

    move-object v7, v14

    .line 94
    .local v7, ioe:Ljava/io/IOException;
    const-string v14, "talk:videochat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t parse the stanza "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v14, 0x0

    goto :goto_3

    .line 98
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v3       #eventType:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    const/4 v14, 0x1

    goto :goto_3
.end method


# virtual methods
.method public isValidSessionStanza()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/talk/util/SessionStanzaParser;->mInitiator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
