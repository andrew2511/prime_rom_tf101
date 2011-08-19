.class public Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GCAL:Ljava/lang/String; = "gCal"

.field public static final NAMESPACE_GCAL_URI:Ljava/lang/String; = "http://schemas.google.com/gCal/2005"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 0
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 35
    return-void
.end method

.method private static serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4
    .parameter "serializer"
    .parameter "commentsUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v2, "feedLink"

    .line 437
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "feedLink"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const/4 v0, 0x0

    const-string v1, "href"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "feedLink"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 5
    .parameter "serializer"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v3, "eventStatus"

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 144
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 147
    .local v0, statusString:Ljava/lang/String;
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "eventStatus"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "eventStatus"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    return-void

    .line 133
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 134
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.canceled"

    .line 137
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "http://schemas.google.com/g/2005#event.confirmed"

    .line 140
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serializer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v3, "http://schemas.google.com/g/2005"

    const-string v2, "extendedProperty"

    .line 450
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "extendedProperty"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const-string v0, "name"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string v0, "value"

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "extendedProperty"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    return-void
.end method

.method private static serializeGuestsCanInviteOthers(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .parameter "serializer"
    .parameter "guestsCanInviteOthers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "http://schemas.google.com/gCal/2005"

    const-string v3, "guestsCanInviteOthers"

    .line 241
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanInviteOthers"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanInviteOthers"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    return-void

    .line 242
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeGuestsCanModify(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .parameter "serializer"
    .parameter "guestsCanModify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "http://schemas.google.com/gCal/2005"

    const-string v3, "guestsCanModify"

    .line 233
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanModify"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanModify"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    return-void

    .line 234
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeGuestsCanSeeGuests(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .parameter "serializer"
    .parameter "guestsCanSeeGuests"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "http://schemas.google.com/gCal/2005"

    const-string v3, "guestsCanSeeGuests"

    .line 249
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanSeeGuests"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "guestsCanSeeGuests"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    return-void

    .line 250
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serializer"
    .parameter "originalEventId"
    .parameter "originalEventTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v6, "when"

    const-string v5, "originalEvent"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 402
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "originalEvent"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 410
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 411
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 413
    const-string v2, "id"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    .end local v0           #id:Ljava/lang/String;
    :cond_2
    const-string v2, "href"

    invoke-interface {p0, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "when"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    const-string v2, "startTime"

    invoke-interface {p0, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "when"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "originalEvent"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .parameter "serializer"
    .parameter "quickAdd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "quickadd"

    const-string v3, "gCal"

    .line 458
    if-eqz p1, :cond_0

    .line 459
    const-string v0, "gCal"

    const-string v0, "quickadd"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const/4 v0, 0x0

    const-string v1, "value"

    const-string v2, "true"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    const-string v0, "gCal"

    const-string v0, "quickadd"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    :cond_0
    return-void
.end method

.method private static serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .parameter "serializer"
    .parameter "recurrence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "recurrence"

    const-string v1, "http://schemas.google.com/g/2005"

    .line 155
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "recurrence"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "recurrence"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 8
    .parameter "serializer"
    .parameter "reminder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "reminder"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 371
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v3, "reminder"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMethod()B

    move-result v0

    .line 373
    .local v0, method:B
    const/4 v1, 0x0

    .line 374
    .local v1, methodStr:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    if-eqz v1, :cond_0

    .line 386
    const-string v3, "method"

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMinutes()I

    move-result v2

    .line 390
    .local v2, minutes:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 391
    const-string v3, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    :cond_1
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v3, "reminder"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    return-void

    .line 376
    .end local v2           #minutes:I
    :pswitch_0
    const-string v1, "alert"

    .line 377
    goto :goto_0

    .line 379
    :pswitch_1
    const-string v1, "email"

    .line 380
    goto :goto_0

    .line 382
    :pswitch_2
    const-string v1, "sms"

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static serializeSendEventNotifications(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .parameter "serializer"
    .parameter "sendEventNotifications"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "sendEventNotifications"

    const-string v3, "http://schemas.google.com/gCal/2005"

    .line 225
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "sendEventNotifications"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "sendEventNotifications"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    return-void

    .line 226
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 5
    .parameter "serializer"
    .parameter "transparency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "transparency"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 181
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 185
    .local v0, transparencyString:Ljava/lang/String;
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "transparency"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "transparency"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    return-void

    .line 171
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.opaque"

    .line 173
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 177
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private serializeUid(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4
    .parameter "serializer"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "uid"

    const-string v2, "http://schemas.google.com/gCal/2005"

    .line 120
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "uid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v0, "uid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    return-void
.end method

.method private static serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 5
    .parameter "serializer"
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "visibility"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 214
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 217
    .local v0, visibilityString:Ljava/lang/String;
    :goto_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "visibility"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "visibility"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    return-void

    .line 199
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 200
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "http://schemas.google.com/g/2005#event.confidential"

    .line 204
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "http://schemas.google.com/g/2005#event.private"

    .line 207
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "http://schemas.google.com/g/2005#event.public"

    .line 210
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 8
    .parameter "serializer"
    .parameter "entry"
    .parameter "when"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "when"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 346
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, startTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, endTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v4, "when"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string v4, "startTime"

    invoke-interface {p0, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 355
    const-string v4, "endTime"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :cond_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 358
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 359
    .local v2, reminders:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 361
    .local v1, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-static {p0, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_1

    .line 364
    .end local v1           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v2           #reminders:Ljava/util/Enumeration;
    :cond_2
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v4, "when"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4
    .parameter "serializer"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "where"

    const-string v2, "http://schemas.google.com/g/2005"

    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string p1, ""

    .line 429
    :cond_0
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "where"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const/4 v0, 0x0

    const-string v1, "valueString"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "where"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    return-void
.end method

.method private static serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 11
    .parameter "serializer"
    .parameter "entry"
    .parameter "who"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v10, "value"

    const-string v9, "attendeeType"

    const-string v8, "attendeeStatus"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 258
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "who"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    const-string v5, "email"

    invoke-interface {p0, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    const-string v5, "valueString"

    invoke-interface {p0, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    :cond_1
    const/4 v1, 0x0

    .line 270
    .local v1, rel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 286
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected rel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :pswitch_0
    const-string v1, "http://schemas.google.com/g/2005#event.attendee"

    .line 288
    :goto_0
    :pswitch_1
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    const-string v5, "rel"

    invoke-interface {p0, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    :cond_2
    const/4 v2, 0x0

    .line 293
    .local v2, status:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 309
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .end local v2           #status:Ljava/lang/String;
    :pswitch_2
    const-string v1, "http://schemas.google.com/g/2005#event.organizer"

    .line 278
    goto :goto_0

    .line 280
    :pswitch_3
    const-string v1, "http://schemas.google.com/g/2005#event.performer"

    .line 281
    goto :goto_0

    .line 283
    :pswitch_4
    const-string v1, "http://schemas.google.com/g/2005#event.speaker"

    .line 284
    goto :goto_0

    .line 297
    .restart local v2       #status:Ljava/lang/String;
    :pswitch_5
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    .line 311
    :goto_1
    :pswitch_6
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 312
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeStatus"

    invoke-interface {p0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    const-string v5, "value"

    invoke-interface {p0, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeStatus"

    invoke-interface {p0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    :cond_3
    const/4 v3, 0x0

    .line 320
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 330
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 300
    .end local v3           #type:Ljava/lang/String;
    :pswitch_7
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    .line 301
    goto :goto_1

    .line 303
    :pswitch_8
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    .line 304
    goto :goto_1

    .line 306
    :pswitch_9
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    .line 307
    goto :goto_1

    .line 324
    .restart local v3       #type:Ljava/lang/String;
    :pswitch_a
    const-string v3, "http://schemas.google.com/g/2005#event.required"

    .line 332
    :goto_2
    :pswitch_b
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 333
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeType"

    invoke-interface {p0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string v5, "value"

    invoke-interface {p0, v7, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeType"

    invoke-interface {p0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_4
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "who"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    return-void

    .line 327
    :pswitch_c
    const-string v3, "http://schemas.google.com/g/2005#event.optional"

    .line 328
    goto :goto_2

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 320
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getEventEntry()Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 14
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEventEntry()Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-result-object v2

    .line 54
    .local v2, entry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 55
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 56
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 57
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getSendEventNotifications()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    const-string v11, "http://schemas.google.com/gCal/2005"

    const-string v12, "sendEventNotifications"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const/4 v11, 0x0

    const-string v12, "value"

    const-string v13, "true"

    invoke-interface {p1, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v11, "http://schemas.google.com/gCal/2005"

    const-string v12, "sendEventNotifications"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_0
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 72
    .local v1, attendees:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 74
    .local v0, attendee:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-static {p1, v2, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/Who;)V

    goto :goto_0

    .line 77
    .end local v0           #attendee:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_1
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 81
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 82
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 83
    .local v8, reminders:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 84
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 85
    .local v7, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-static {p1, v7}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_1

    .line 89
    .end local v7           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v8           #reminders:Ljava/util/Enumeration;
    :cond_2
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 90
    .local v10, whens:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 91
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 92
    .local v9, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-static {p1, v2, v9}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/When;)V

    goto :goto_2

    .line 95
    .end local v9           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    .end local v10           #whens:Ljava/util/Enumeration;
    :cond_3
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v11, v12}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v3

    .line 103
    .local v3, extendedProperties:Ljava/util/Hashtable;
    if-eqz v3, :cond_4

    .line 104
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 105
    .local v5, propertyNames:Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 106
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    .local v6, propertyValue:Ljava/lang/String;
    invoke-static {p1, v4, v6}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    .end local v4           #propertyName:Ljava/lang/String;
    .end local v5           #propertyNames:Ljava/util/Enumeration;
    .end local v6           #propertyValue:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isQuickAdd()Z

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 114
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 115
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeUid(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 117
    :cond_5
    return-void
.end method
