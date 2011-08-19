.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 49
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 6
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 405
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 406
    .local v0, eventType:I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v3, "originalEvent"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
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

    .line 417
    :cond_1
    const-string v3, "href"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 420
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 421
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 422
    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string v3, "when"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const-string v3, "startTime"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 432
    const-string v3, "originalEvent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    :cond_3
    return-void

    .line 422
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 9
    .parameter "eventEntry"

    .prologue
    const/4 v8, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 363
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Lcom/google/wireless/gdata/calendar/data/Reminder;

    invoke-direct {v6}, Lcom/google/wireless/gdata/calendar/data/Reminder;-><init>()V

    .line 364
    .local v6, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {p1, v6}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    .line 366
    const-string v7, "method"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, methodStr:Ljava/lang/String;
    const-string v7, "minutes"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, minutesStr:Ljava/lang/String;
    const-string v7, "hours"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, hoursStr:Ljava/lang/String;
    const-string v7, "days"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, daysStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 376
    const-string v7, "alert"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 377
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    .line 385
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 386
    .local v3, minutes:I
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    invoke-static {v4, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 394
    :cond_1
    :goto_1
    if-gez v3, :cond_2

    .line 395
    const/4 v3, -0x1

    .line 397
    :cond_2
    invoke-virtual {v6, v3}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMinutes(I)V

    .line 398
    return-void

    .line 378
    .end local v3           #minutes:I
    :cond_3
    const-string v7, "email"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 379
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 380
    :cond_4
    const-string v7, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 381
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 388
    .restart local v3       #minutes:I
    :cond_5
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 389
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v3, v7, 0x3c

    goto :goto_1

    .line 390
    :cond_6
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 391
    invoke-static {v0, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit16 v3, v7, 0x5a0

    goto :goto_1
.end method

.method private handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 13
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 309
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 310
    .local v1, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    const-string v8, "when"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 315
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

    .line 321
    :cond_1
    const-string v8, "startTime"

    invoke-interface {v5, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, startTime:Ljava/lang/String;
    const-string v8, "endTime"

    invoke-interface {v5, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, endTime:Ljava/lang/String;
    new-instance v7, Lcom/google/wireless/gdata/calendar/data/When;

    invoke-direct {v7, v6, v0}, Lcom/google/wireless/gdata/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v7, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V

    .line 328
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v8, v10, :cond_3

    move v2, v10

    .line 332
    .local v2, firstWhen:Z
    :goto_0
    if-eqz v2, :cond_4

    iget-boolean v8, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v8, :cond_4

    move v3, v10

    .line 334
    .local v3, handleReminders:Z
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 335
    :goto_2
    if-eq v1, v10, :cond_5

    .line 336
    packed-switch v1, :pswitch_data_0

    .line 356
    :cond_2
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2

    .end local v2           #firstWhen:Z
    .end local v3           #handleReminders:Z
    :cond_3
    move v2, v11

    .line 328
    goto :goto_0

    .restart local v2       #firstWhen:Z
    :cond_4
    move v3, v11

    .line 332
    goto :goto_1

    .line 338
    .restart local v3       #handleReminders:Z
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 339
    const-string v8, "reminder"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 342
    if-eqz v3, :cond_2

    .line 343
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto :goto_3

    .line 348
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 349
    const-string v8, "when"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 358
    :cond_5
    return-void

    .line 336
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 17
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 209
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 210
    .local v3, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, name:Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_0

    const-string v14, "who"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 215
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

    .line 221
    :cond_1
    const/4 v14, 0x0

    const-string v15, "email"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, email:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "rel"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, relString:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "valueString"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, value:Ljava/lang/String;
    new-instance v13, Lcom/google/wireless/gdata/calendar/data/Who;

    invoke-direct {v13}, Lcom/google/wireless/gdata/calendar/data/Who;-><init>()V

    .line 229
    .local v13, who:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v13, v2}, Lcom/google/wireless/gdata/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v13, v12}, Lcom/google/wireless/gdata/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, rel:B
    const-string v14, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 233
    const/4 v6, 0x1

    .line 245
    :goto_0
    invoke-virtual {v13, v6}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    .line 247
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V

    .line 249
    :goto_1
    const/4 v14, 0x1

    if-eq v3, v14, :cond_11

    .line 250
    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_2
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 234
    :cond_3
    const-string v14, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 235
    const/4 v6, 0x2

    goto :goto_0

    .line 236
    :cond_4
    const-string v14, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 237
    const/4 v6, 0x3

    goto :goto_0

    .line 238
    :cond_5
    const-string v14, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 239
    const/4 v6, 0x4

    goto :goto_0

    .line 240
    :cond_6
    invoke-static {v7}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 241
    const/4 v6, 0x1

    goto :goto_0

    .line 243
    :cond_7
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected rel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 252
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 253
    const-string v14, "attendeeStatus"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 254
    const/4 v14, 0x0

    const-string v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, statusString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 257
    .local v8, status:B
    const-string v14, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 259
    const/4 v8, 0x1

    .line 274
    :goto_3
    invoke-virtual {v13, v8}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_2

    .line 260
    :cond_8
    const-string v14, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 262
    const/4 v8, 0x2

    goto :goto_3

    .line 263
    :cond_9
    const-string v14, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 265
    const/4 v8, 0x3

    goto :goto_3

    .line 266
    :cond_a
    const-string v14, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 268
    const/4 v8, 0x4

    goto :goto_3

    .line 269
    :cond_b
    invoke-static {v9}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 270
    const/4 v8, 0x4

    goto :goto_3

    .line 272
    :cond_c
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 275
    .end local v8           #status:B
    .end local v9           #statusString:Ljava/lang/String;
    :cond_d
    const-string v14, "attendeeType"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 276
    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, typeString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 278
    .local v10, type:B
    const-string v14, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 279
    const/4 v10, 0x1

    .line 288
    :goto_4
    invoke-virtual {v13, v10}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto/16 :goto_2

    .line 280
    :cond_e
    const-string v14, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 282
    const/4 v10, 0x2

    goto :goto_4

    .line 283
    :cond_f
    invoke-static {v11}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 284
    const/4 v10, 0x2

    goto :goto_4

    .line 286
    :cond_10
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 292
    .end local v10           #type:B
    .end local v11           #typeString:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 293
    const-string v14, "who"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 302
    :cond_11
    return-void

    .line 250
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 71
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 72
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 21
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 99
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 100
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Expected EventEntry!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 102
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-object v4, v0

    .line 107
    .local v4, eventEntry:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, name:Ljava/lang/String;
    const-string v19, "eventStatus"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 109
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, eventStatusStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, eventStatus:B
    const-string v19, "http://schemas.google.com/g/2005#event.canceled"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 113
    const/4 v5, 0x2

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 202
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 114
    .restart local v5       #eventStatus:B
    .restart local v6       #eventStatusStr:Ljava/lang/String;
    :cond_3
    const-string v19, "http://schemas.google.com/g/2005#event.confirmed"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 116
    const/4 v5, 0x1

    goto :goto_0

    .line 117
    :cond_4
    const-string v19, "http://schemas.google.com/g/2005#event.tentative"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 119
    const/4 v5, 0x0

    goto :goto_0

    .line 122
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_5
    const-string v19, "recurrence"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 123
    invoke-static {v8}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, recurrence:Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    .end local v11           #recurrence:Ljava/lang/String;
    :cond_6
    const-string v19, "transparency"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 126
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, transparencyStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 128
    .local v13, transparency:B
    const-string v19, "http://schemas.google.com/g/2005#event.opaque"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 130
    const/4 v13, 0x0

    .line 135
    :cond_7
    :goto_2
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_1

    .line 131
    :cond_8
    const-string v19, "http://schemas.google.com/g/2005#event.transparent"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 133
    const/4 v13, 0x1

    goto :goto_2

    .line 136
    .end local v13           #transparency:B
    .end local v14           #transparencyStr:Ljava/lang/String;
    :cond_9
    const-string v19, "visibility"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 137
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 138
    .local v17, visibilityStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 139
    .local v16, visibility:B
    const-string v19, "http://schemas.google.com/g/2005#event.confidential"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 141
    const/16 v16, 0x1

    .line 152
    :cond_a
    :goto_3
    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setVisibility(B)V

    goto/16 :goto_1

    .line 142
    :cond_b
    const-string v19, "http://schemas.google.com/g/2005#event.default"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 144
    const/16 v16, 0x0

    goto :goto_3

    .line 145
    :cond_c
    const-string v19, "http://schemas.google.com/g/2005#event.private"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 147
    const/16 v16, 0x2

    goto :goto_3

    .line 148
    :cond_d
    const-string v19, "http://schemas.google.com/g/2005#event.public"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 150
    const/16 v16, 0x3

    goto :goto_3

    .line 153
    .end local v16           #visibility:B
    .end local v17           #visibilityStr:Ljava/lang/String;
    :cond_e
    const-string v19, "who"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 154
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 155
    :cond_f
    const-string v19, "sendEventNotifications"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 157
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    goto/16 :goto_1

    .line 159
    .end local v15           #value:Ljava/lang/String;
    :cond_10
    const-string v19, "guestsCanModify"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 161
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 162
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    goto/16 :goto_1

    .line 163
    .end local v15           #value:Ljava/lang/String;
    :cond_11
    const-string v19, "guestsCanInviteOthers"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 165
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 166
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    goto/16 :goto_1

    .line 167
    .end local v15           #value:Ljava/lang/String;
    :cond_12
    const-string v19, "guestsCanSeeGuests"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 169
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .restart local v15       #value:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    goto/16 :goto_1

    .line 171
    .end local v15           #value:Ljava/lang/String;
    :cond_13
    const-string v19, "when"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 172
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 173
    :cond_14
    const-string v19, "reminder"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 177
    invoke-virtual {v4}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->clearReminders()V

    .line 178
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 180
    :cond_15
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 181
    :cond_16
    const-string v19, "originalEvent"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 182
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 183
    :cond_17
    const-string v19, "where"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 184
    const/16 v19, 0x0

    const-string v20, "valueString"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 186
    .local v18, where:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "rel"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, rel:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_18

    const-string v19, "http://schemas.google.com/g/2005#event"

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 190
    :cond_18
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .end local v12           #rel:Ljava/lang/String;
    .end local v18           #where:Ljava/lang/String;
    :cond_19
    const-string v19, "feedLink"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 195
    const/16 v19, 0x0

    const-string v20, "href"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, commentsUri:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    .end local v3           #commentsUri:Ljava/lang/String;
    :cond_1a
    const-string v19, "extendedProperty"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 198
    const/16 v19, 0x0

    const-string v20, "name"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, propertyName:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "value"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, propertyValue:Ljava/lang/String;
    invoke-virtual {v4, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .locals 7
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 77
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v5, p1, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    if-nez v5, :cond_0

    .line 78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Expected EventsFeed!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    move-object v1, v0

    .line 81
    .local v1, eventsFeed:Lcom/google/wireless/gdata/calendar/data/EventsFeed;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, name:Ljava/lang/String;
    const-string v5, "timezone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, timezone:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 88
    .end local v4           #timezone:Ljava/lang/String;
    :cond_1
    return-void
.end method
