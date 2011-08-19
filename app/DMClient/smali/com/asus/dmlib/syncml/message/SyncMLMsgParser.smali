.class public Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;
.super Ljava/lang/Object;
.source "SyncMLMsgParser.java"

# interfaces
.implements Lcom/asus/dmlib/syncml/message/IMsgParser;


# static fields
.field public static final BINARY_XML:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final TEXT_XML:Ljava/lang/String; = "application/vnd.syncml.dm+xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private parseImpl(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 12
    .parameter "in"
    .parameter "contentType"
    .parameter "encoding"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    const/4 v3, 0x0

    .line 52
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "application/vnd.syncml.dm+xml"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 53
    new-instance v3, Lorg/kxml2/io/KXmlParser;

    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v3}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 64
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3, p1, p3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, keepParsing:Z
    move-object v5, v4

    .line 67
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .local v5, syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :goto_1
    if-eqz v2, :cond_3

    .line 68
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 69
    .local v7, type:I
    packed-switch v7, :pswitch_data_0

    :cond_1
    move-object v4, v5

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :goto_2
    move-object v5, v4

    .line 99
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_1

    .line 54
    .end local v2           #keepParsing:Z
    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :cond_2
    const-string v8, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 55
    new-instance v3, Lorg/kxml2/wap/WbxmlParser;

    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v3}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 56
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object v0, v3

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v8, v0

    sget-object v9, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v8, v11, v9}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 57
    move-object v0, v3

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v8, v0

    sget-object v9, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 58
    move-object v0, v3

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v8, v0

    new-array v9, v10, [Ljava/lang/String;

    const-string v10, "xmlns=SYNCML:SYNCML1.2"

    aput-object v10, v9, v11

    invoke-virtual {v8, v11, v9}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v2       #keepParsing:Z
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :pswitch_0
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 75
    const-string v8, "SyncML"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    new-instance v4, Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-direct {v4, v3}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_2

    .line 81
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :pswitch_1
    const/4 v2, 0x0

    move-object v4, v5

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_2

    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .end local v7           #type:I
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :cond_3
    move-object v4, v5

    .line 107
    .end local v2           #keepParsing:Z
    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .end local v6           #tagName:Ljava/lang/String;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :goto_3
    return-object v4

    .line 100
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 101
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 102
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 103
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 104
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 105
    .local v1, e:Ljava/io/IOException;
    :goto_6
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 104
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v2       #keepParsing:Z
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v6       #tagName:Ljava/lang/String;
    :catch_3
    move-exception v8

    move-object v1, v8

    move-object v4, v5

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_6

    .line 102
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :catch_4
    move-exception v8

    move-object v1, v8

    move-object v4, v5

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_5

    .line 100
    .end local v4           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v5       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :catch_5
    move-exception v8

    move-object v1, v8

    move-object v4, v5

    .end local v5           #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    .restart local v4       #syncML:Lcom/asus/dmlib/syncml/message/container/SyncML;
    goto :goto_4

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMessage;
    .locals 1
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/MsgParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseBinaryXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/MsgParseException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "application/vnd.syncml.dm+wbxml"

    invoke-direct {p0, p1, v0, p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;->parseImpl(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    return-object v0
.end method

.method public parseTextXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 2
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/MsgParseException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v1, "application/vnd.syncml.dm+xml"

    invoke-direct {p0, p1, v1, p2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;->parseImpl(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    .line 42
    .local v0, result:Lcom/asus/dmlib/syncml/message/container/SyncML;
    return-object v0
.end method
