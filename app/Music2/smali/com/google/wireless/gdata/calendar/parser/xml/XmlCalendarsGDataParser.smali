.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 15
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 58
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move v13, v0

    if-nez v13, :cond_0

    .line 59
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Expected CalendarEntry!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 61
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move-object v3, v0

    .line 65
    .local v3, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, name:Ljava/lang/String;
    const-string v13, "accesslevel"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 67
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, accesslevelStr:Ljava/lang/String;
    const/4 v1, 0x1

    .line 70
    .local v1, accesslevel:B
    const-string v13, "none"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 71
    const/4 v1, 0x0

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 125
    .end local v1           #accesslevel:B
    .end local v2           #accesslevelStr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 72
    .restart local v1       #accesslevel:B
    .restart local v2       #accesslevelStr:Ljava/lang/String;
    :cond_3
    const-string v13, "read"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    :cond_4
    const-string v13, "freebusy"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 75
    const/4 v1, 0x2

    goto :goto_0

    .line 76
    :cond_5
    const-string v13, "contributor"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 79
    const/4 v1, 0x3

    goto :goto_0

    .line 80
    :cond_6
    const-string v13, "editor"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 81
    const/4 v1, 0x3

    goto :goto_0

    .line 82
    :cond_7
    const-string v13, "owner"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 83
    const/4 v1, 0x4

    goto :goto_0

    .line 84
    :cond_8
    const-string v13, "root"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 85
    const/4 v1, 0x5

    goto :goto_0

    .line 88
    .end local v1           #accesslevel:B
    .end local v2           #accesslevelStr:Ljava/lang/String;
    :cond_9
    const-string v13, "color"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 89
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, color:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v4           #color:Ljava/lang/String;
    :cond_a
    const-string v13, "hidden"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 93
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, hiddenStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 96
    .local v5, hidden:Z
    const-string v13, "false"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 97
    const/4 v5, 0x0

    .line 101
    :cond_b
    :goto_2
    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 103
    if-eqz v5, :cond_2

    .line 104
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_1

    .line 98
    :cond_c
    const-string v13, "true"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 99
    const/4 v5, 0x1

    goto :goto_2

    .line 106
    .end local v5           #hidden:Z
    .end local v6           #hiddenStr:Ljava/lang/String;
    :cond_d
    const-string v13, "selected"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 107
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, selectedStr:Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, selected:Z
    const-string v13, "false"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 111
    const/4 v10, 0x0

    .line 115
    :cond_e
    :goto_3
    invoke-virtual {v3, v10}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_1

    .line 112
    :cond_f
    const-string v13, "true"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 113
    const/4 v10, 0x1

    goto :goto_3

    .line 116
    .end local v10           #selected:Z
    .end local v11           #selectedStr:Ljava/lang/String;
    :cond_10
    const-string v13, "timezone"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 117
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, timezone:Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    .end local v12           #timezone:Ljava/lang/String;
    :cond_11
    const-string v13, "overridename"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 121
    const-string v13, "value"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, overrideName:Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 3
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v2, "alternate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/atom+xml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    move-object v0, p4

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move-object v1, v0

    .line 139
    .local v1, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-virtual {v1, p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 141
    .end local v1           #calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    :cond_0
    return-void
.end method
