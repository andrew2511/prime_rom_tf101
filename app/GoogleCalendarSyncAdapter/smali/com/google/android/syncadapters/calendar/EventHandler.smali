.class Lcom/google/android/syncadapters/calendar/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# static fields
.field private static final ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1167
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;

    .line 1173
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Ljava/util/HashMap;

    .line 1174
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private addAttendeesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 11
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 391
    .local v1, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 392
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 393
    .local v6, values:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 394
    new-instance v7, Lcom/google/wireless/gdata2/calendar/data/Who;

    invoke-direct {v7}, Lcom/google/wireless/gdata2/calendar/data/Who;-><init>()V

    .line 395
    .local v7, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    const-string v8, "attendeeName"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 396
    const-string v8, "attendeeEmail"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 397
    const-string v8, "attendeeStatus"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 398
    .local v3, status:I
    packed-switch v3, :pswitch_data_0

    .line 415
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    .line 419
    :goto_1
    const-string v8, "attendeeType"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 420
    .local v4, type:I
    packed-switch v4, :pswitch_data_1

    .line 431
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    .line 435
    :goto_2
    const-string v8, "attendeeRelationship"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 436
    .local v2, rel:I
    packed-switch v2, :pswitch_data_2

    .line 453
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee relationship: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    .line 457
    :goto_3
    invoke-virtual {p2, v7}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V

    goto/16 :goto_0

    .line 400
    .end local v2           #rel:I
    .end local v4           #type:I
    :pswitch_0
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 403
    :pswitch_1
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 406
    :pswitch_2
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 409
    :pswitch_3
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 412
    :pswitch_4
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 422
    .restart local v4       #type:I
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 425
    :pswitch_6
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 428
    :pswitch_7
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 438
    .restart local v2       #rel:I
    :pswitch_8
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 441
    :pswitch_9
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 444
    :pswitch_a
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 447
    :pswitch_b
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 450
    :pswitch_c
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 460
    .end local v1           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v2           #rel:I
    .end local v3           #status:I
    .end local v4           #type:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_1
    return-void

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 420
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 436
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private addExtendedPropertiesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 7
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 497
    .local v2, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 498
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 499
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, name:Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p2, v1, v4}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private addRecurrenceToEntry(Landroid/pim/ICalendar$Component;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 9
    .parameter "component"
    .parameter "event"

    .prologue
    .line 512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 516
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/pim/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 518
    .local v6, propertyName:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/pim/ICalendar$Property;

    .line 519
    .local v5, property:Landroid/pim/ICalendar$Property;
    if-eqz v2, :cond_1

    .line 520
    const/4 v2, 0x0

    .line 524
    :goto_1
    invoke-virtual {v5, v7}, Landroid/pim/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 522
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 529
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #property:Landroid/pim/ICalendar$Property;
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/pim/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 530
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Component;>;"
    if-eqz v1, :cond_4

    .line 531
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/ICalendar$Component;

    .line 532
    .local v0, child:Landroid/pim/ICalendar$Component;
    if-eqz v2, :cond_3

    .line 533
    const/4 v2, 0x0

    .line 537
    :goto_3
    invoke-virtual {v0, v7}, Landroid/pim/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 535
    :cond_3
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 540
    .end local v0           #child:Landroid/pim/ICalendar$Component;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private addRemindersToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 9
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 466
    .local v2, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 467
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 468
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    new-instance v3, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/calendar/data/Reminder;-><init>()V

    .line 470
    .local v3, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    const-string v6, "minutes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMinutes(I)V

    .line 471
    const-string v6, "method"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    .local v1, method:I
    packed-switch v1, :pswitch_data_0

    .line 486
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal method, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 474
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    .line 488
    :goto_1
    invoke-virtual {p2, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_0

    .line 477
    :pswitch_1
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 480
    :pswitch_2
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 483
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 491
    .end local v1           #method:I
    .end local v2           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v3           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 384
    const-string v0, "/private/full"

    const-string v1, "/private/full-selfattendance"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 875
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 880
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    :goto_0
    const-string v2, "_sync_version"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v1, "_sync_id"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v1, "syncAdapterData"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v2

    .line 897
    const/4 v3, 0x0

    .line 898
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 899
    const/4 v3, 0x1

    .line 900
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 901
    const-string v2, "originalEvent"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v1, "originalInstanceTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    const-string v1, "originalAllDay"

    iget-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    move v1, v3

    .line 907
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v2

    .line 908
    packed-switch v2, :pswitch_data_0

    .line 923
    const/4 p0, 0x2

    .line 1160
    :goto_2
    return p0

    .line 887
    :cond_1
    const-string v1, "readonly-version"

    goto :goto_0

    .line 903
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 910
    :pswitch_0
    if-nez v1, :cond_3

    .line 911
    const/4 p0, 0x1

    goto :goto_2

    .line 913
    :cond_3
    const-string v1, "eventStatus"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    :goto_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v1

    .line 930
    const-string v2, "_sync_time"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v1, "_sync_dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 949
    const-string p0, "EventHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected visibility "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 p0, 0x2

    goto :goto_2

    .line 916
    :pswitch_1
    const-string v1, "eventStatus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 919
    :pswitch_2
    const-string v1, "eventStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 936
    :pswitch_3
    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    :goto_4
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 963
    const-string p0, "EventHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected transparency "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 939
    :pswitch_4
    const-string v1, "visibility"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 942
    :pswitch_5
    const-string v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 945
    :pswitch_6
    const-string v1, "visibility"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 956
    :pswitch_7
    const-string v1, "transparency"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    :goto_5
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getHtmlUri()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 972
    const-string v2, "htmlUri"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_4
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 979
    if-nez v1, :cond_5

    .line 980
    const-string v1, ""

    .line 982
    :cond_5
    const-string v2, "title"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 986
    if-nez v2, :cond_6

    .line 987
    const-string v2, ""

    .line 989
    :cond_6
    const-string v3, "description"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v2

    .line 993
    if-nez v2, :cond_7

    .line 994
    const-string v2, ""

    .line 996
    :cond_7
    const-string v3, "eventLocation"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    if-eqz p3, :cond_8

    .line 1001
    const-string v2, "calendar_id"

    iget-wide v3, p3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1005
    :cond_8
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v2

    .line 1006
    if-eqz v2, :cond_9

    .line 1007
    const-string v3, "commentsUri"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_9
    const/4 v2, 0x0

    .line 1013
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1016
    const-string v3, "hasAlarm"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    :cond_a
    const/4 v3, 0x1

    .line 1020
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v4

    .line 1022
    if-eqz v4, :cond_c

    .line 1024
    const-string v5, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "hidden"

    const-string v6, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1026
    const-string v3, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const/4 v3, 0x0

    .line 1031
    :cond_b
    const-string v5, "hasExtendedProperties"

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-lez v6, :cond_e

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    :cond_c
    const-string v5, "hasAttendeeData"

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;

    move-result-object v3

    .line 1038
    if-eqz v3, :cond_21

    .line 1039
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v5

    .line 1040
    invoke-static {v5}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1041
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 1051
    iget-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_10

    .line 1052
    const-string p3, "allDay"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    const-string p3, "eventTimezone"

    const-string v1, "UTC"

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_d
    :goto_8
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1077
    const-wide/16 v6, 0x0

    cmp-long p3, v1, v6

    if-gez p3, :cond_14

    .line 1079
    const-string p0, "EventHandler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dtstart out of range: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const-string p0, "dtstart"

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 959
    :pswitch_8
    const-string v1, "transparency"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 1031
    :cond_e
    const/4 v6, 0x0

    goto :goto_6

    .line 1034
    :cond_f
    const/4 v3, 0x0

    goto :goto_7

    .line 1055
    :cond_10
    const-string v2, "allDay"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    if-eqz v4, :cond_12

    const-string v2, "CalendarSyncAdapter#originalTimezone"

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1057
    const-string p3, "CalendarSyncAdapter#originalTimezone"

    invoke-virtual {v4, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1058
    const-string v2, "EventHandler"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1059
    const-string v2, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using original timezone: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for Event: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_11
    const-string v1, "eventTimezone"

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1064
    :cond_12
    if-eqz p3, :cond_13

    .line 1065
    const-string v1, "eventTimezone"

    iget-object p3, p3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1069
    :cond_13
    const-string p3, "EventHandler"

    const/4 v2, 0x5

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 1070
    const-string p3, "EventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot define Timezone for Event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1084
    :cond_14
    const-string p3, "dtstart"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1086
    const/4 p3, 0x1

    .line 1089
    :goto_9
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1091
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 1092
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1093
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_15

    .line 1095
    const-string p0, "EventHandler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dtend out of range: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string p0, "dtstart"

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 1100
    :cond_15
    const-string v0, "dtend"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_16
    move v0, p3

    .line 1105
    :goto_a
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object p3

    .line 1106
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1107
    new-instance v0, Landroid/pim/ICalendar$Component;

    const-string v1, "DUMMY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/pim/ICalendar$Component;-><init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V

    .line 1111
    :try_start_0
    invoke-static {v0, p3}, Landroid/pim/ICalendar;->parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    :try_end_0
    .catch Landroid/pim/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    invoke-static {v0, p2}, Landroid/pim/RecurrenceSet;->populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z

    move-result p3

    if-nez p3, :cond_17

    .line 1120
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 1112
    :catch_0
    move-exception p0

    .line 1114
    const-string p0, "EventHandler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to parse recurrence: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 1123
    :cond_17
    const/4 p3, 0x1

    .line 1134
    :goto_b
    if-nez p3, :cond_19

    .line 1135
    const/4 p0, 0x2

    goto/16 :goto_2

    .line 1127
    :cond_18
    const-string v1, "rrule"

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v1, "rdate"

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v1, "exrule"

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v1, "exdate"

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v1, "duration"

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v0

    goto :goto_b

    .line 1138
    :cond_19
    const-string p3, "_sync_account"

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string p3, "_sync_account_type"

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string p0, "guestsCanInviteOthers"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanInviteOthers()Z

    move-result p3

    if-eqz p3, :cond_1c

    const/4 p3, 0x1

    :goto_c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1142
    const-string p0, "guestsCanModify"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanModify()Z

    move-result p3

    if-eqz p3, :cond_1d

    const/4 p3, 0x1

    :goto_d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    const-string p0, "guestsCanSeeGuests"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanSeeGuests()Z

    move-result p3

    if-eqz p3, :cond_1e

    const/4 p3, 0x1

    :goto_e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    const/4 p3, 0x0

    .line 1147
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object p0

    .line 1148
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 1149
    :cond_1a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 1150
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 1151
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 1152
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object p0

    .line 1156
    :goto_f
    if-eqz p0, :cond_1b

    .line 1157
    const-string p1, "organizer"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_1b
    const/4 p0, 0x0

    goto/16 :goto_2

    .line 1141
    :cond_1c
    const/4 p3, 0x0

    goto :goto_c

    .line 1142
    :cond_1d
    const/4 p3, 0x0

    goto :goto_d

    .line 1143
    :cond_1e
    const/4 p3, 0x0

    goto :goto_e

    :cond_1f
    move-object p0, p3

    goto :goto_f

    :cond_20
    move p3, v2

    goto/16 :goto_9

    :cond_21
    move v0, v2

    goto/16 :goto_a

    .line 908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 934
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 954
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private generateNewUidForEvent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 373
    .local v3, time:J
    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 375
    .local v0, random:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, "android@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 46
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "junk2"
    .parameter "junk3"
    .parameter "junk4"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, junk1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "EventHandler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    const-string v4, "EventHandler"

    const-string v5, "============= applyEntryToEntity ============="

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventEntry is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entity is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    move-object/from16 v0, p5

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-object/from16 v27, v0

    .line 579
    .local v27, eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    move-object/from16 v0, p12

    check-cast v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;

    move-object/from16 v43, v0

    .line 581
    .local v43, syncInfo:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;
    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move/from16 v32, v4

    .line 582
    .local v32, isDelete:Z
    :goto_0
    if-nez v32, :cond_6

    if-nez p6, :cond_6

    const/4 v4, 0x1

    move/from16 v33, v4

    .line 584
    .local v33, isInsert:Z
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v6, eventValuesServer:Landroid/content/ContentValues;
    const/16 v26, 0x0

    .line 596
    .local v26, entryState:I
    if-nez v32, :cond_2

    .line 597
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object v2, v6

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)I

    move-result v26

    .line 598
    if-eqz p7, :cond_2

    .line 599
    const-string v4, "_sync_dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    :cond_2
    if-nez v32, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 603
    :cond_3
    if-eqz p6, :cond_4

    .line 604
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 606
    .local v28, eventId:Ljava/lang/Long;
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 612
    .end local v6           #eventValuesServer:Landroid/content/ContentValues;
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    .line 829
    .end local v28           #eventId:Ljava/lang/Long;
    :cond_4
    :goto_2
    return-void

    .line 581
    .end local v26           #entryState:I
    .end local v32           #isDelete:Z
    .end local v33           #isInsert:Z
    :cond_5
    const/4 v4, 0x0

    move/from16 v32, v4

    goto :goto_0

    .line 582
    .restart local v32       #isDelete:Z
    :cond_6
    const/4 v4, 0x0

    move/from16 v33, v4

    goto :goto_1

    .line 614
    .restart local v6       #eventValuesServer:Landroid/content/ContentValues;
    .restart local v26       #entryState:I
    .restart local v33       #isInsert:Z
    :cond_7
    if-nez v26, :cond_e

    .line 620
    if-eqz v33, :cond_8

    .line 621
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 622
    .local v12, eventBackRefIfInsert:Ljava/lang/Integer;
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 626
    const/4 v7, 0x0

    .line 627
    .local v7, eventIdIfUpdate:Ljava/lang/Long;
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numInserts:J

    .line 652
    :goto_3
    const-string v4, "hasAlarm"

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 653
    .local v30, hasAlarm:Ljava/lang/Integer;
    if-eqz v30, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 655
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v22

    .line 656
    .local v22, alarms:Ljava/util/Vector;
    if-nez v22, :cond_9

    .line 657
    const-string v4, "EventHandler"

    const-string v5, "Have an alarm but do not have any reminders -- should not happen."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Have an alarm but do not have any reminders"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 629
    .end local v7           #eventIdIfUpdate:Ljava/lang/Long;
    .end local v12           #eventBackRefIfInsert:Ljava/lang/Integer;
    .end local v22           #alarms:Ljava/util/Vector;
    .end local v30           #hasAlarm:Ljava/lang/Integer;
    :cond_8
    const/4 v12, 0x0

    .line 630
    .restart local v12       #eventBackRefIfInsert:Ljava/lang/Integer;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 631
    .restart local v7       #eventIdIfUpdate:Ljava/lang/Long;
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 638
    sget-object v4, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v7

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 641
    sget-object v4, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v7

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 644
    sget-object v4, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v7

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 648
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_3

    .line 662
    .restart local v22       #alarms:Ljava/util/Vector;
    .restart local v30       #hasAlarm:Ljava/lang/Integer;
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v41

    .line 663
    .local v41, reminders:Ljava/util/Enumeration;
    :goto_4
    invoke-interface/range {v41 .. v41}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 664
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v10, reminderValues:Landroid/content/ContentValues;
    invoke-interface/range {v41 .. v41}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 667
    .local v40, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-virtual/range {v40 .. v40}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMethod()B

    move-result v34

    .line 668
    .local v34, method:B
    packed-switch v34, :pswitch_data_0

    .line 688
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown reminder method: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " should not happen!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_5
    invoke-virtual/range {v40 .. v40}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMinutes()I

    move-result v35

    .line 693
    .local v35, minutes:I
    const-string v4, "minutes"

    const/4 v5, -0x1

    move/from16 v0, v35

    move v1, v5

    if-ne v0, v1, :cond_a

    const/4 v5, -0x1

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    sget-object v4, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v9

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_4

    .line 670
    .end local v35           #minutes:I
    :pswitch_0
    const-string v4, "method"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 674
    :pswitch_1
    const-string v4, "method"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 678
    :pswitch_2
    const-string v4, "method"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 682
    :pswitch_3
    const-string v4, "method"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .restart local v35       #minutes:I
    :cond_a
    move/from16 v5, v35

    .line 693
    goto :goto_6

    .line 708
    .end local v10           #reminderValues:Landroid/content/ContentValues;
    .end local v22           #alarms:Ljava/util/Vector;
    .end local v34           #method:B
    .end local v35           #minutes:I
    .end local v40           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v41           #reminders:Ljava/util/Enumeration;
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v23

    .line 709
    .local v23, attendees:Ljava/util/Vector;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v24

    .line 710
    .local v24, attendeesEnum:Ljava/util/Enumeration;
    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 711
    invoke-interface/range {v24 .. v24}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 712
    .local v45, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v15, attendeesValues:Landroid/content/ContentValues;
    const-string v4, "attendeeName"

    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v4, "attendeeEmail"

    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 734
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown attendee status "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v42, 0x0

    .line 737
    .local v42, status:B
    :goto_8
    const-string v4, "attendeeStatus"

    invoke-static/range {v42 .. v42}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 739
    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 756
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown attendee relationship "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/16 v39, 0x0

    .line 760
    .local v39, rel:B
    :goto_9
    const-string v4, "attendeeRelationship"

    invoke-static/range {v39 .. v39}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 763
    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 774
    const-string v4, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown attendee type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v44, 0x0

    .line 777
    .local v44, type:B
    :goto_a
    const-string v4, "attendeeType"

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 778
    sget-object v4, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v14

    const/16 v18, 0x0

    move-object/from16 v13, p1

    move-object/from16 v16, v7

    move-object/from16 v17, v12

    invoke-static/range {v13 .. v18}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_7

    .line 719
    .end local v39           #rel:B
    .end local v42           #status:B
    .end local v44           #type:B
    :pswitch_4
    const/16 v42, 0x0

    .line 720
    .restart local v42       #status:B
    goto :goto_8

    .line 722
    .end local v42           #status:B
    :pswitch_5
    const/16 v42, 0x3

    .line 723
    .restart local v42       #status:B
    goto :goto_8

    .line 725
    .end local v42           #status:B
    :pswitch_6
    const/16 v42, 0x1

    .line 726
    .restart local v42       #status:B
    goto/16 :goto_8

    .line 728
    .end local v42           #status:B
    :pswitch_7
    const/16 v42, 0x4

    .line 729
    .restart local v42       #status:B
    goto/16 :goto_8

    .line 731
    .end local v42           #status:B
    :pswitch_8
    const/16 v42, 0x2

    .line 732
    .restart local v42       #status:B
    goto/16 :goto_8

    .line 741
    :pswitch_9
    const/16 v39, 0x0

    .line 742
    .restart local v39       #rel:B
    goto :goto_9

    .line 744
    .end local v39           #rel:B
    :pswitch_a
    const/16 v39, 0x2

    .line 745
    .restart local v39       #rel:B
    goto :goto_9

    .line 747
    .end local v39           #rel:B
    :pswitch_b
    const/16 v39, 0x1

    .line 748
    .restart local v39       #rel:B
    goto :goto_9

    .line 750
    .end local v39           #rel:B
    :pswitch_c
    const/16 v39, 0x3

    .line 751
    .restart local v39       #rel:B
    goto :goto_9

    .line 753
    .end local v39           #rel:B
    :pswitch_d
    const/16 v39, 0x4

    .line 754
    .restart local v39       #rel:B
    goto :goto_9

    .line 765
    :pswitch_e
    const/16 v44, 0x0

    .line 766
    .restart local v44       #type:B
    goto :goto_a

    .line 768
    .end local v44           #type:B
    :pswitch_f
    const/16 v44, 0x1

    .line 769
    .restart local v44       #type:B
    goto :goto_a

    .line 771
    .end local v44           #type:B
    :pswitch_10
    const/16 v44, 0x2

    .line 772
    .restart local v44       #type:B
    goto :goto_a

    .line 785
    .end local v15           #attendeesValues:Landroid/content/ContentValues;
    .end local v39           #rel:B
    .end local v42           #status:B
    .end local v44           #type:B
    .end local v45           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_c
    const-string v4, "hasExtendedProperties"

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    .line 787
    .local v31, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 790
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v29

    .line 791
    .local v29, extendedProperties:Ljava/util/Hashtable;
    if-nez v29, :cond_d

    .line 792
    const-string v4, "EventHandler"

    const-string v5, "Have extendedProperties but do not have any properties-- should not happen."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Have extendedProperties but do not have any properties"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_d
    invoke-virtual/range {v29 .. v29}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v37

    .line 798
    .local v37, propertyNames:Ljava/util/Enumeration;
    :goto_b
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 799
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 800
    .local v36, propertyName:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 801
    .local v38, propertyValue:Ljava/lang/String;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v18, extendedPropertyValues:Landroid/content/ContentValues;
    const-string v4, "name"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v4, "value"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v4, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v17

    const/16 v21, 0x0

    move-object/from16 v16, p1

    move-object/from16 v19, v7

    move-object/from16 v20, v12

    invoke-static/range {v16 .. v21}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_b

    .line 819
    .end local v7           #eventIdIfUpdate:Ljava/lang/Long;
    .end local v12           #eventBackRefIfInsert:Ljava/lang/Integer;
    .end local v18           #extendedPropertyValues:Landroid/content/ContentValues;
    .end local v23           #attendees:Ljava/util/Vector;
    .end local v24           #attendeesEnum:Ljava/util/Enumeration;
    .end local v29           #extendedProperties:Ljava/util/Hashtable;
    .end local v30           #hasAlarm:Ljava/lang/Integer;
    .end local v31           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v36           #propertyName:Ljava/lang/String;
    .end local v37           #propertyNames:Ljava/util/Enumeration;
    .end local v38           #propertyValue:Ljava/lang/String;
    :cond_e
    const-string v4, "dtstart"

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 820
    .local v25, dtstart:Ljava/lang/Long;
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    goto/16 :goto_2

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 717
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 739
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 763
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 39
    .parameter "entity"
    .parameter "account"
    .parameter "client"
    .parameter "validate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v12, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v12}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    .line 132
    .local v12, entry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v32

    .line 137
    .local v32, values:Landroid/content/ContentValues;
    const-string v35, "hasAttendeeData"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 138
    .local v14, hasAttendeesInt:Ljava/lang/Integer;
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_f

    const/16 v35, 0x1

    move/from16 v13, v35

    .line 141
    .local v13, hasAttendees:Z
    :goto_0
    const-string v35, "_sync_id"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 142
    .local v17, id:Ljava/lang/String;
    const-string v35, "_sync_version"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, editUri:Ljava/lang/String;
    const-string v35, "local android etag magic value"

    move-object/from16 v0, v35

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 146
    const/4 v10, 0x0

    .line 150
    :cond_0
    if-nez v13, :cond_2

    .line 151
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 152
    :cond_1
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 154
    :cond_2
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setId(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v12, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setEditUri(Ljava/lang/String;)V

    .line 156
    const-string v35, "deleted"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_10

    const/16 v35, 0x1

    :goto_1
    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setDeleted(Z)V

    .line 160
    const-string v35, "eventStatus"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 161
    .local v18, localStatus:Ljava/lang/Integer;
    if-nez v18, :cond_3

    .line 162
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 164
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v35

    packed-switch v35, :pswitch_data_0

    .line 176
    const-string v35, "EventHandler"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unexpected value for status: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "; using tentative."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v28, 0x0

    .line 181
    .local v28, status:B
    :goto_2
    move-object v0, v12

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 185
    const-string v35, "visibility"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 186
    .local v20, localVisibility:Ljava/lang/Integer;
    if-nez v20, :cond_4

    .line 187
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 189
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v35

    packed-switch v35, :pswitch_data_1

    .line 204
    const-string v35, "EventHandler"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unexpected value for visibility: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "; using default visibility."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v33, 0x0

    .line 209
    .local v33, visibility:B
    :goto_3
    move-object v0, v12

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    .line 212
    const-string v35, "transparency"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 213
    .local v19, localTransparency:Ljava/lang/Integer;
    if-nez v19, :cond_5

    .line 214
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 216
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v35

    packed-switch v35, :pswitch_data_2

    .line 225
    const-string v35, "EventHandler"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unexpected value for transparency: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "; using opaque transparency."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v30, 0x0

    .line 230
    .local v30, transparency:B
    :goto_4
    move-object v0, v12

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    .line 235
    const-string v35, "title"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTitle(Ljava/lang/String;)V

    .line 238
    const-string v35, "description"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setContent(Ljava/lang/String;)V

    .line 241
    const-string v35, "eventLocation"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttendeesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 247
    const-string v35, "commentsUri"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    .line 250
    const-string v35, "sync1"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCalendarUrl(Ljava/lang/String;)V

    .line 253
    const-string v35, "syncAdapterData"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setUid(Ljava/lang/String;)V

    .line 255
    new-instance v31, Landroid/text/format/Time;

    const-string v35, "UTC"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 257
    .local v31, utc:Landroid/text/format/Time;
    const-string v35, "allDay"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_11

    const/16 v35, 0x1

    move/from16 v4, v35

    .line 259
    .local v4, allDay:Z
    :goto_5
    const/16 v27, 0x0

    .line 260
    .local v27, startTime:Ljava/lang/String;
    const/4 v11, 0x0

    .line 262
    .local v11, endTime:Ljava/lang/String;
    const-string v35, "dtstart"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 263
    const-string v35, "dtstart"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 264
    .local v8, dtstart:J
    move-object/from16 v0, v31

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 265
    move-object/from16 v0, v31

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v27

    .line 269
    .end local v8           #dtstart:J
    :cond_6
    const-string v35, "dtend"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 270
    const-string v35, "dtend"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 271
    .local v6, dtend:J
    move-object/from16 v0, v31

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 272
    move-object/from16 v0, v31

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v11

    .line 275
    .end local v6           #dtend:J
    :cond_7
    new-instance v34, Lcom/google/wireless/gdata2/calendar/data/When;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v34, when:Lcom/google/wireless/gdata2/calendar/data/When;
    move-object v0, v12

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V

    .line 279
    const-string v35, "hasAlarm"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 280
    .local v16, hasReminder:Ljava/lang/Integer;
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_8

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRemindersToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 285
    :cond_8
    const-string v35, "hasExtendedProperties"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 287
    .local v15, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_9

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 291
    :cond_9
    const-wide/16 v24, -0x1

    .line 292
    .local v24, originalStartTime:J
    const-string v35, "originalEvent"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 293
    .local v23, originalId:Ljava/lang/String;
    const-string v35, "originalInstanceTime"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 294
    const-string v35, "originalInstanceTime"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 296
    :cond_a
    const-wide/16 v35, -0x1

    cmp-long v35, v24, v35

    if-eqz v35, :cond_c

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 299
    const-string v35, "originalAllDay"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 300
    .local v22, originalAllDayValue:Ljava/lang/Integer;
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_12

    const/16 v35, 0x1

    move/from16 v21, v35

    .line 302
    .local v21, originalAllDay:Z
    :goto_6
    const-string v35, "eventTimezone"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 303
    .local v29, timezone:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 304
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    .line 306
    :cond_b
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 307
    .local v26, originalTime:Landroid/text/format/Time;
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 309
    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 310
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    .line 311
    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 315
    .end local v21           #originalAllDay:Z
    .end local v22           #originalAllDayValue:Ljava/lang/Integer;
    .end local v26           #originalTime:Landroid/text/format/Time;
    .end local v29           #timezone:Ljava/lang/String;
    :cond_c
    new-instance v5, Landroid/pim/ICalendar$Component;

    const-string v35, "DUMMY"

    const/16 v36, 0x0

    move-object v0, v5

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/pim/ICalendar$Component;-><init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V

    .line 317
    .local v5, component:Landroid/pim/ICalendar$Component;
    move-object/from16 v0, v32

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/pim/RecurrenceSet;->populateComponent(Landroid/content/ContentValues;Landroid/pim/ICalendar$Component;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 318
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRecurrenceToEntry(Landroid/pim/ICalendar$Component;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 322
    :cond_d
    const/16 v35, 0x1

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    .line 324
    const-string v35, "guestsCanInviteOthers"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_13

    const/16 v35, 0x1

    :goto_7
    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    .line 326
    const-string v35, "guestsCanModify"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_14

    const/16 v35, 0x1

    :goto_8
    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    .line 327
    const-string v35, "guestsCanSeeGuests"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    if-eqz v35, :cond_15

    const/16 v35, 0x1

    :goto_9
    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    .line 329
    const-string v35, "organizer"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOrganizer(Ljava/lang/String;)V

    .line 330
    const-string v35, "deleted"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    cmp-long v35, v35, v37

    if-eqz v35, :cond_16

    const/16 v35, 0x1

    :goto_a
    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setDeleted(Z)V

    .line 332
    invoke-virtual {v12}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 333
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->setEntryUid(Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/Entity;Landroid/content/ContentProviderClient;)V

    .line 336
    :cond_e
    return-object v12

    .line 138
    .end local v4           #allDay:Z
    .end local v5           #component:Landroid/pim/ICalendar$Component;
    .end local v10           #editUri:Ljava/lang/String;
    .end local v11           #endTime:Ljava/lang/String;
    .end local v13           #hasAttendees:Z
    .end local v15           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v16           #hasReminder:Ljava/lang/Integer;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #localStatus:Ljava/lang/Integer;
    .end local v19           #localTransparency:Ljava/lang/Integer;
    .end local v20           #localVisibility:Ljava/lang/Integer;
    .end local v23           #originalId:Ljava/lang/String;
    .end local v24           #originalStartTime:J
    .end local v27           #startTime:Ljava/lang/String;
    .end local v28           #status:B
    .end local v30           #transparency:B
    .end local v31           #utc:Landroid/text/format/Time;
    .end local v33           #visibility:B
    .end local v34           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_f
    const/16 v35, 0x0

    move/from16 v13, v35

    goto/16 :goto_0

    .line 156
    .restart local v10       #editUri:Ljava/lang/String;
    .restart local v13       #hasAttendees:Z
    .restart local v17       #id:Ljava/lang/String;
    :cond_10
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 166
    .restart local v18       #localStatus:Ljava/lang/Integer;
    :pswitch_0
    const/16 v28, 0x2

    .line 167
    .restart local v28       #status:B
    goto/16 :goto_2

    .line 169
    .end local v28           #status:B
    :pswitch_1
    const/16 v28, 0x1

    .line 170
    .restart local v28       #status:B
    goto/16 :goto_2

    .line 172
    .end local v28           #status:B
    :pswitch_2
    const/16 v28, 0x0

    .line 173
    .restart local v28       #status:B
    goto/16 :goto_2

    .line 191
    .restart local v20       #localVisibility:Ljava/lang/Integer;
    :pswitch_3
    const/16 v33, 0x0

    .line 192
    .restart local v33       #visibility:B
    goto/16 :goto_3

    .line 194
    .end local v33           #visibility:B
    :pswitch_4
    const/16 v33, 0x1

    .line 195
    .restart local v33       #visibility:B
    goto/16 :goto_3

    .line 197
    .end local v33           #visibility:B
    :pswitch_5
    const/16 v33, 0x2

    .line 198
    .restart local v33       #visibility:B
    goto/16 :goto_3

    .line 200
    .end local v33           #visibility:B
    :pswitch_6
    const/16 v33, 0x3

    .line 201
    .restart local v33       #visibility:B
    goto/16 :goto_3

    .line 218
    .restart local v19       #localTransparency:Ljava/lang/Integer;
    :pswitch_7
    const/16 v30, 0x0

    .line 219
    .restart local v30       #transparency:B
    goto/16 :goto_4

    .line 221
    .end local v30           #transparency:B
    :pswitch_8
    const/16 v30, 0x1

    .line 222
    .restart local v30       #transparency:B
    goto/16 :goto_4

    .line 257
    .restart local v31       #utc:Landroid/text/format/Time;
    :cond_11
    const/16 v35, 0x0

    move/from16 v4, v35

    goto/16 :goto_5

    .line 300
    .restart local v4       #allDay:Z
    .restart local v11       #endTime:Ljava/lang/String;
    .restart local v15       #hasExtendedProperties:Ljava/lang/Integer;
    .restart local v16       #hasReminder:Ljava/lang/Integer;
    .restart local v22       #originalAllDayValue:Ljava/lang/Integer;
    .restart local v23       #originalId:Ljava/lang/String;
    .restart local v24       #originalStartTime:J
    .restart local v27       #startTime:Ljava/lang/String;
    .restart local v34       #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_12
    const/16 v35, 0x0

    move/from16 v21, v35

    goto/16 :goto_6

    .line 324
    .end local v22           #originalAllDayValue:Ljava/lang/Integer;
    .restart local v5       #component:Landroid/pim/ICalendar$Component;
    :cond_13
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 326
    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 327
    :cond_15
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 330
    :cond_16
    const/16 v35, 0x0

    goto :goto_a

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 216
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    const-string v0, "_sync_id IS NULL OR (_sync_id IS NOT NULL AND _sync_version != \'readonly-version\' AND (_sync_dirty != 0 OR deleted != 0))"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 118
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    const-string v0, "_sync_version"

    return-object v0
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "_sync_id"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "id"

    .prologue
    .line 105
    return-object p1
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Landroid/provider/Calendar$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method public setEntryUid(Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/Entity;Landroid/content/ContentProviderClient;)V
    .locals 10
    .parameter "entry"
    .parameter "entity"
    .parameter "client"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 344
    .local v2, eventId:J
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/EventHandler;->generateNewUidForEvent()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, newUid:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "syncAdapterData"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :try_start_0
    sget-object v7, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 351
    .local v4, eventUri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p3, v4, v6, v7, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, count:I
    if-lez v0, :cond_0

    .line 357
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setUid(Ljava/lang/String;)V

    .line 369
    return-void

    .line 359
    :cond_0
    new-instance v7, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with Uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v0           #count:I
    .end local v4           #eventUri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 364
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EventHandler"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 365
    const-string v7, "EventHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with Uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    throw v1
.end method
