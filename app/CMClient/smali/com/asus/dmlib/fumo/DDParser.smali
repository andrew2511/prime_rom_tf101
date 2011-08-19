.class public Lcom/asus/dmlib/fumo/DDParser;
.super Ljava/lang/Object;
.source "DDParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DDParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/asus/dmlib/vdm/DownloadDescriptor;
    .locals 11
    .parameter "inIS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 21
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 22
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 23
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 25
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 28
    .local v1, eventType:I
    new-instance v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;

    invoke-direct {v0}, Lcom/asus/dmlib/vdm/DownloadDescriptor;-><init>()V

    .line 29
    .local v0, dd:Lcom/asus/dmlib/vdm/DownloadDescriptor;
    const/4 v3, -0x1

    .line 30
    .local v3, savePoint:I
    :goto_0
    if-eq v1, v10, :cond_d

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 84
    const-string v7, "DDParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse: default eventType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v7, "DDParser"

    const-string v8, "Start document"

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :pswitch_2
    const-string v7, "DDParser"

    const-string v8, "End document"

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :pswitch_3
    const-string v7, "DDParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v7, "installParam"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 41
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->INSTALL_PARAM:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto :goto_1

    .line 42
    :cond_1
    const-string v7, "DDVersion"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->VERSION:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto :goto_1

    .line 44
    :cond_2
    const-string v7, "description"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 45
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->DESCRIPTION:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto :goto_1

    .line 46
    :cond_3
    const-string v7, "name"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->NAME:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto :goto_1

    .line 48
    :cond_4
    const-string v7, "objectURI"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 49
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->OBJECT_URI:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 50
    :cond_5
    const-string v7, "size"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 51
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->SIZE:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 52
    :cond_6
    const-string v7, "type"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 53
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->TYPE:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 54
    :cond_7
    const-string v7, "vendor"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 55
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->VENDOR:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 56
    :cond_8
    const-string v7, "installNotifyURI"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 57
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->INSTALL_NOTIFY_URI:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 58
    :cond_9
    const-string v7, "nextURL"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 59
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->NEXT_URL:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 60
    :cond_a
    const-string v7, "infoURL"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 61
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->INFO_URL:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 62
    :cond_b
    const-string v7, "iconURI"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 63
    sget-object v7, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->INCON_URL:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v3

    goto/16 :goto_1

    .line 65
    :cond_c
    const/4 v3, -0x1

    .line 68
    goto/16 :goto_1

    .line 74
    :pswitch_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    const-string v7, "\n"

    const-string v8, "\\n"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, value:Ljava/lang/String;
    iget-object v7, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    aput-object v5, v7, v3

    .line 80
    const/4 v3, -0x1

    .line 81
    goto/16 :goto_1

    .line 90
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_d
    iget-object v7, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    sget-object v8, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->SIZE:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_e

    .line 91
    iget-object v7, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    sget-object v8, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->SIZE:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    .line 94
    :cond_e
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
