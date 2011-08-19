.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# static fields
.field private static GCAL_NAMESPACE:Ljava/lang/String;

.field private static GD_NAMESPACE:Ljava/lang/String;


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "http://schemas.google.com/g/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GD_NAMESPACE:Ljava/lang/String;

    .line 29
    const-string v0, "http://schemas.google.com/gCal/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 52
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 6
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "originalEvent"

    .line 404
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 406
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 407
    .local v0, eventType:I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v3, "originalEvent"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected <originalEvent>: Actual element: <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 418
    :cond_1
    const-string v3, "href"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 421
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 422
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 423
    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 425
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 426
    const-string v3, "when"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    const-string v3, "startTime"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 433
    const-string v3, "originalEvent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    :cond_3
    return-void

    .line 423
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 9
    .parameter "eventEntry"

    .prologue
    const/4 v8, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 364
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;-><init>()V

    .line 365
    .local v6, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-virtual {p1, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    .line 367
    const-string v7, "method"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, methodStr:Ljava/lang/String;
    const-string v7, "minutes"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, minutesStr:Ljava/lang/String;
    const-string v7, "hours"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, hoursStr:Ljava/lang/String;
    const-string v7, "days"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, daysStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    const-string v7, "alert"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 378
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    .line 386
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 387
    .local v3, minutes:I
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 388
    invoke-static {v4, v3}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 395
    :cond_1
    :goto_1
    if-gez v3, :cond_2

    .line 396
    const/4 v3, -0x1

    .line 398
    :cond_2
    invoke-virtual {v6, v3}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMinutes(I)V

    .line 399
    return-void

    .line 379
    .end local v3           #minutes:I
    :cond_3
    const-string v7, "email"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 380
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 381
    :cond_4
    const-string v7, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 389
    .restart local v3       #minutes:I
    :cond_5
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 390
    invoke-static {v1, v3}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v3, v7, 0x3c

    goto :goto_1

    .line 391
    :cond_6
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 392
    invoke-static {v0, v3}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit16 v3, v7, 0x5a0

    goto :goto_1
.end method

.method private handleWhen(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 13
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "when"

    .line 308
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 310
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 311
    .local v1, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    const-string v8, "when"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 316
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected <when>: Actual element: <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 322
    :cond_1
    const-string v8, "startTime"

    invoke-interface {v5, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, startTime:Ljava/lang/String;
    const-string v8, "endTime"

    invoke-interface {v5, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, endTime:Ljava/lang/String;
    new-instance v7, Lcom/google/wireless/gdata2/calendar/data/When;

    invoke-direct {v7, v6, v0}, Lcom/google/wireless/gdata2/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v7, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V

    .line 329
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v2, v9

    .line 333
    .local v2, firstWhen:Z
    :goto_0
    if-eqz v2, :cond_4

    iget-boolean v8, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v8, :cond_4

    move v3, v9

    .line 335
    .local v3, handleReminders:Z
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 336
    :goto_2
    if-eq v1, v9, :cond_5

    .line 337
    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_2
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2

    .end local v2           #firstWhen:Z
    .end local v3           #handleReminders:Z
    :cond_3
    move v2, v10

    .line 329
    goto :goto_0

    .restart local v2       #firstWhen:Z
    :cond_4
    move v3, v10

    .line 333
    goto :goto_1

    .line 339
    .restart local v3       #handleReminders:Z
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 340
    const-string v8, "reminder"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 343
    if-eqz v3, :cond_2

    .line 344
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto :goto_3

    .line 349
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 350
    const-string v8, "when"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 359
    :cond_5
    return-void

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 17
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 210
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 211
    .local v3, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, name:Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_0

    const-string v14, "who"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 216
    :cond_0
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Expected <who>: Actual element: <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 222
    :cond_1
    const/4 v14, 0x0

    const-string v15, "email"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, email:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "rel"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, relString:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "valueString"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, value:Ljava/lang/String;
    new-instance v13, Lcom/google/wireless/gdata2/calendar/data/Who;

    invoke-direct {v13}, Lcom/google/wireless/gdata2/calendar/data/Who;-><init>()V

    .line 230
    .local v13, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-virtual {v13, v2}, Lcom/google/wireless/gdata2/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v13, v12}, Lcom/google/wireless/gdata2/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, rel:B
    const-string v14, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 234
    const/4 v6, 0x1

    .line 246
    :goto_0
    invoke-virtual {v13, v6}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    .line 248
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V

    .line 250
    :goto_1
    const/4 v14, 0x1

    if-eq v3, v14, :cond_11

    .line 251
    packed-switch v3, :pswitch_data_0

    .line 301
    :cond_2
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 235
    :cond_3
    const-string v14, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 236
    const/4 v6, 0x2

    goto :goto_0

    .line 237
    :cond_4
    const-string v14, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 238
    const/4 v6, 0x3

    goto :goto_0

    .line 239
    :cond_5
    const-string v14, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 240
    const/4 v6, 0x4

    goto :goto_0

    .line 241
    :cond_6
    invoke-static {v7}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 242
    const/4 v6, 0x1

    goto :goto_0

    .line 244
    :cond_7
    new-instance v14, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected rel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 253
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 254
    const-string v14, "attendeeStatus"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 255
    const/4 v14, 0x0

    const-string v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, statusString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 258
    .local v8, status:B
    const-string v14, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 260
    const/4 v8, 0x1

    .line 275
    :goto_3
    invoke-virtual {v13, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_2

    .line 261
    :cond_8
    const-string v14, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 263
    const/4 v8, 0x2

    goto :goto_3

    .line 264
    :cond_9
    const-string v14, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 266
    const/4 v8, 0x3

    goto :goto_3

    .line 267
    :cond_a
    const-string v14, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 269
    const/4 v8, 0x4

    goto :goto_3

    .line 270
    :cond_b
    invoke-static {v9}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 271
    const/4 v8, 0x4

    goto :goto_3

    .line 273
    :cond_c
    new-instance v14, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 276
    .end local v8           #status:B
    .end local v9           #statusString:Ljava/lang/String;
    :cond_d
    const-string v14, "attendeeType"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 277
    invoke-static {v5}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, typeString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 279
    .local v10, type:B
    const-string v14, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 280
    const/4 v10, 0x1

    .line 289
    :goto_4
    invoke-virtual {v13, v10}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto/16 :goto_2

    .line 281
    :cond_e
    const-string v14, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 283
    const/4 v10, 0x2

    goto :goto_4

    .line 284
    :cond_f
    invoke-static {v11}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 285
    const/4 v10, 0x2

    goto :goto_4

    .line 287
    :cond_10
    new-instance v14, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 293
    .end local v10           #type:B
    .end local v11           #typeString:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 294
    const-string v14, "who"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 303
    :cond_11
    return-void

    .line 251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 73
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 74
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 21
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 101
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 102
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Expected EventEntry!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 105
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-object v4, v0

    .line 106
    .local v4, eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, name:Ljava/lang/String;
    sget-object v19, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GD_NAMESPACE:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 109
    const-string v19, "eventStatus"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 110
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, eventStatusStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 112
    .local v5, eventStatus:B
    const-string v19, "http://schemas.google.com/g/2005#event.canceled"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 114
    const/4 v5, 0x2

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 203
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 115
    .restart local v5       #eventStatus:B
    .restart local v6       #eventStatusStr:Ljava/lang/String;
    :cond_3
    const-string v19, "http://schemas.google.com/g/2005#event.confirmed"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 117
    const/4 v5, 0x1

    goto :goto_0

    .line 118
    :cond_4
    const-string v19, "http://schemas.google.com/g/2005#event.tentative"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 120
    const/4 v5, 0x0

    goto :goto_0

    .line 123
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_5
    const-string v19, "recurrence"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 124
    invoke-static {v8}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, recurrence:Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v11           #recurrence:Ljava/lang/String;
    :cond_6
    const-string v19, "transparency"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 127
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, transparencyStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 129
    .local v13, transparency:B
    const-string v19, "http://schemas.google.com/g/2005#event.opaque"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 131
    const/4 v13, 0x0

    .line 136
    :cond_7
    :goto_2
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_1

    .line 132
    :cond_8
    const-string v19, "http://schemas.google.com/g/2005#event.transparent"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 134
    const/4 v13, 0x1

    goto :goto_2

    .line 137
    .end local v13           #transparency:B
    .end local v14           #transparencyStr:Ljava/lang/String;
    :cond_9
    const-string v19, "visibility"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 138
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, visibilityStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 140
    .local v16, visibility:B
    const-string v19, "http://schemas.google.com/g/2005#event.confidential"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 142
    const/16 v16, 0x1

    .line 153
    :cond_a
    :goto_3
    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    goto/16 :goto_1

    .line 143
    :cond_b
    const-string v19, "http://schemas.google.com/g/2005#event.default"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 145
    const/16 v16, 0x0

    goto :goto_3

    .line 146
    :cond_c
    const-string v19, "http://schemas.google.com/g/2005#event.private"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 148
    const/16 v16, 0x2

    goto :goto_3

    .line 149
    :cond_d
    const-string v19, "http://schemas.google.com/g/2005#event.public"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 151
    const/16 v16, 0x3

    goto :goto_3

    .line 154
    .end local v16           #visibility:B
    .end local v17           #visibilityStr:Ljava/lang/String;
    :cond_e
    const-string v19, "who"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 155
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 156
    :cond_f
    const-string v19, "when"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 157
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 158
    :cond_10
    const-string v19, "reminder"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 162
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->clearReminders()V

    .line 163
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 165
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 166
    :cond_12
    const-string v19, "originalEvent"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 167
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 168
    :cond_13
    const-string v19, "where"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 169
    const/16 v19, 0x0

    const-string v20, "valueString"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, where:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "rel"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, rel:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    const-string v19, "http://schemas.google.com/g/2005#event"

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 173
    :cond_14
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .end local v12           #rel:Ljava/lang/String;
    .end local v18           #where:Ljava/lang/String;
    :cond_15
    const-string v19, "feedLink"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 178
    const/16 v19, 0x0

    const-string v20, "href"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, commentsUri:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    .end local v3           #commentsUri:Ljava/lang/String;
    :cond_16
    const-string v19, "extendedProperty"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 181
    const/16 v19, 0x0

    const-string v20, "name"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, propertyName:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, propertyValue:Ljava/lang/String;
    invoke-virtual {v4, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    .end local v9           #propertyName:Ljava/lang/String;
    .end local v10           #propertyValue:Ljava/lang/String;
    :cond_17
    sget-object v19, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 186
    const-string v19, "sendEventNotifications"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 187
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    goto/16 :goto_1

    .line 189
    .end local v15           #value:Ljava/lang/String;
    :cond_18
    const-string v19, "guestsCanModify"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 190
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    goto/16 :goto_1

    .line 192
    .end local v15           #value:Ljava/lang/String;
    :cond_19
    const-string v19, "guestsCanInviteOthers"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 193
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 194
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    goto/16 :goto_1

    .line 195
    .end local v15           #value:Ljava/lang/String;
    :cond_1a
    const-string v19, "guestsCanSeeGuests"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 196
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 197
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    goto/16 :goto_1

    .line 198
    .end local v15           #value:Ljava/lang/String;
    :cond_1b
    const-string v19, "uid"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 199
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 200
    .restart local v15       #value:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setUid(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V
    .locals 7
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 79
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v5, p1, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    if-nez v5, :cond_0

    .line 80
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Expected EventsFeed!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;

    move-object v1, v0

    .line 83
    .local v1, eventsFeed:Lcom/google/wireless/gdata2/calendar/data/EventsFeed;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, name:Ljava/lang/String;
    const-string v5, "timezone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, timezone:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 90
    .end local v4           #timezone:Ljava/lang/String;
    :cond_1
    return-void
.end method
