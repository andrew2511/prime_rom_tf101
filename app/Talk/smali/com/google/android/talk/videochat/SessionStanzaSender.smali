.class public Lcom/google/android/talk/videochat/SessionStanzaSender;
.super Ljava/lang/Object;
.source "SessionStanzaSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    }
.end annotation


# static fields
.field public static final CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "<(\\s+)?(\\w+?:)?session\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?session(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "<(\\s+)?(\\w+?:)?callPerfStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?callPerfStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "<(\\s+)?(\\w+?:)?systemInfoStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?systemInfoStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "<(\\s+)?(\\w+?:)?error\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?error(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 322
    sget-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/SessionStanzaSender;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractErrorXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 306
    sget-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/SessionStanzaSender;->ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSessionXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 290
    sget-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/SessionStanzaSender;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 340
    sget-object v0, Lcom/google/android/talk/videochat/SessionStanzaSender;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/SessionStanzaSender;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 10
    .parameter "parentXml"
    .parameter "startTagPattern"
    .parameter "endTagPattern"

    .prologue
    const/4 v9, 0x0

    .line 347
    const/4 v4, -0x1

    .line 348
    .local v4, startIndex:I
    const/4 v0, -0x1

    .line 349
    .local v0, endIndex:I
    const/4 v3, 0x0

    .line 352
    .local v3, offset:I
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 353
    .local v5, startMatcher:Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v9

    .line 382
    :goto_0
    return-object v6

    .line 359
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 360
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 363
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 364
    .local v1, endMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 377
    :goto_1
    if-gt v0, v4, :cond_3

    .line 378
    const-string v6, "talk"

    const-string v7, "[SessionStanzaSender] extractXmlNode: failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 379
    goto :goto_0

    .line 368
    :cond_1
    const-string v6, "/>"

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 369
    .local v2, index:I
    if-gez v2, :cond_2

    .line 370
    const-string v6, "talk"

    const-string v7, "[SessionStanzaSender] extractXmlNode: no close tag:"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v6, "talk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 372
    goto :goto_0

    .line 374
    :cond_2
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 382
    .end local v2           #index:I
    :cond_3
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .locals 13
    .parameter "rawIqStanza"
    .parameter "sessionXml"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 245
    .local v0, iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/talk/util/SessionStanzaParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object v9, v0

    .line 249
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .local v9, iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, event:I
    const/4 v5, 0x1

    if-eq v7, v5, :cond_0

    .line 250
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, elementName:Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v7, v5, :cond_2

    .line 253
    const-string v5, "iq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 254
    const-string v5, ""

    const-string v12, "from"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, from:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "to"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, to:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "id"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, id:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "type"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, type:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 260
    const-string v5, "talk"

    const-string v12, "more than one <iq> found!"

    invoke-static {v5, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v6           #elementName:Ljava/lang/String;
    :cond_0
    move-object v0, v9

    .line 274
    .end local v7           #event:I
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :goto_1
    return-object v0

    .line 264
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #from:Ljava/lang/String;
    .restart local v3       #to:Ljava/lang/String;
    .restart local v4       #type:Ljava/lang/String;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #event:I
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v0, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :goto_2
    move-object v9, v0

    .line 267
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    goto :goto_0

    .line 268
    .end local v6           #elementName:Ljava/lang/String;
    .end local v7           #event:I
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :catch_0
    move-exception v5

    move-object v8, v5

    .line 269
    .local v8, ioEx:Ljava/io/IOException;
    :goto_3
    const-string v5, "talk"

    const-string v12, "[SessionStanzaSender] parseRawIqXml caught "

    invoke-static {v5, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    .end local v8           #ioEx:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v11, v5

    .line 271
    .local v11, parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v5, "talk"

    const-string v12, "[SessionStanzaSender] parseRawIqXml caught "

    invoke-static {v5, v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .end local v11           #parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v5

    move-object v11, v5

    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    goto :goto_4

    .line 268
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :catch_3
    move-exception v5

    move-object v8, v5

    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    goto :goto_3

    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #event:I
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    :cond_2
    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 386
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SessionStanzaSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method static parseRawIqStanza(Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .locals 6
    .parameter "rawIqStanza"

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    const-string v3, "talk"

    const-string v4, "[SessionStanzaSender] parseRawIqXml: invalid xml!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 189
    :goto_0
    return-object v3

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, sessionXml:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractErrorXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, errorXml:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {p0, v3}, Lcom/google/android/talk/videochat/SessionStanzaSender;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v5

    goto :goto_1
.end method

.method static parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    .locals 8
    .parameter "rawIqStanza"

    .prologue
    const/4 v7, 0x0

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-string v5, "talk"

    const-string v6, "[SessionStanzaSender] parseRawIqXml: invalid xml!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 235
    :goto_0
    return-object v5

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, callPerfStatsXml:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, sessionXml:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, systemInfoStatsXml:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_3
    invoke-static {p0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->extractErrorXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, errorXml:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {p0, v5}, Lcom/google/android/talk/videochat/SessionStanzaSender;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;

    move-result-object v5

    goto :goto_0

    :cond_5
    move-object v5, v7

    goto :goto_1
.end method

.method public static queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "username"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, barejid:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "GET"

    const-string v6, "<query xmlns=\"google:jingleinfo\" />"

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/SessionStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string v0, "queryJingleInfo: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static sendCallPerfStatsStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "username"
    .parameter "stanza"

    .prologue
    .line 136
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;

    move-result-object v7

    .line 137
    .local v7, iq:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    if-nez v7, :cond_1

    .line 138
    const-string v0, "sendCallPerfStatsStanza: not a valid IQ"

    invoke-static {v0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 139
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->id:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->from:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->to:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->type:Ljava/lang/String;

    iget-object v6, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->extension:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/SessionStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "sendCallPerfStatsStanza: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 146
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendSessionStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "username"
    .parameter "stanza"

    .prologue
    .line 121
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->parseRawIqStanza(Ljava/lang/String;)Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;

    move-result-object v7

    .line 122
    .local v7, iq:Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;
    if-nez v7, :cond_1

    .line 123
    const-string v0, "sendSessionStanza: not a valid IQ"

    invoke-static {v0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->id:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->from:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->to:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->type:Ljava/lang/String;

    iget-object v6, v7, Lcom/google/android/talk/videochat/SessionStanzaSender$IQ;->extension:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/SessionStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "sendSessionStanza: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    .line 131
    invoke-static {p2}, Lcom/google/android/talk/videochat/SessionStanzaSender;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "username"
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    const/4 v6, 0x0

    .line 93
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "app"

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "attr:id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "attr:from"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "attr:to"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v2, "attr:type"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v2, "extension"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendXmppStanzaViaIntent: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 114
    goto :goto_0
.end method
