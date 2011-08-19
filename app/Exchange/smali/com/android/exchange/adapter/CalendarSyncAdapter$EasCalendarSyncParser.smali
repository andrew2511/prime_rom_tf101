.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasCalendarSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 295
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 289
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 291
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 296
    const-string v0, "CalendarParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setLoggingTag(Ljava/lang/String;)V

    .line 297
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 298
    return-void
.end method

.method private addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ops"
    .parameter "eventId"
    .parameter "organizerName"
    .parameter "organizerEmail"

    .prologue
    const/4 v3, 0x1

    .line 303
    if-nez p4, :cond_0

    if-eqz p5, :cond_3

    .line 304
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v0, attendeeCv:Landroid/content/ContentValues;
    if-eqz p4, :cond_1

    .line 306
    const-string v1, "attendeeName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    if-eqz p5, :cond_2

    .line 309
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_4

    .line 315
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 320
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 317
    .restart local v0       #attendeeCv:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method private attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;
    .locals 4
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 984
    .local v0, cv:Landroid/content/ContentValues;
    :goto_0
    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 985
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 1020
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 987
    :sswitch_0
    const-string v2, "attendeeEmail"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :sswitch_1
    const-string v2, "attendeeName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :sswitch_2
    const/4 v1, 0x0

    .line 1009
    .local v1, type:I
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1017
    :goto_1
    const-string v2, "attendeeType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1011
    :pswitch_0
    const/4 v1, 0x1

    .line 1012
    goto :goto_1

    .line 1014
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 1023
    .end local v1           #type:I
    :cond_0
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    return-object v0

    .line 985
    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_0
        0x10a -> :sswitch_1
        0x12a -> :sswitch_2
    .end sparse-switch

    .line 1009
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;
    .locals 5
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, attendeeCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 961
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 975
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 963
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 967
    .local v2, cv:Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 970
    const/16 v3, 0x33

    if-gt v0, v3, :cond_0

    .line 971
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1030
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1032
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1033
    goto :goto_0

    .line 1040
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    .line 1042
    :goto_1
    return-object v1

    :cond_1
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1030
    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_0
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 942
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 950
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 946
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
    .end packed-switch
.end method

.method private encodeVisibility(I)I
    .locals 1
    .parameter "easVisibility"

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, visibility:I
    packed-switch p1, :pswitch_data_0

    .line 921
    :goto_0
    return v0

    .line 909
    :pswitch_0
    const/4 v0, 0x0

    .line 910
    goto :goto_0

    .line 912
    :pswitch_1
    const/4 v0, 0x3

    .line 913
    goto :goto_0

    .line 915
    :pswitch_2
    const/4 v0, 0x2

    .line 916
    goto :goto_0

    .line 918
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 907
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 17
    .parameter "ops"
    .parameter "parentCv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 778
    .local v4, cv:Landroid/content/ContentValues;
    const-string v3, "calendar_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    const-string v3, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v3, "_sync_account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v3, "organizer"

    const-string v5, "organizer"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v3, "title"

    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v3, "description"

    const-string v5, "description"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v3, "originalAllDay"

    const-string v5, "allDay"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const-string v3, "eventLocation"

    const-string v5, "eventLocation"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v3, "visibility"

    const-string v5, "visibility"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v3, "eventTimezone"

    const-string v5, "eventTimezone"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v3, "hasAttendeeData"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    const/4 v9, 0x0

    .line 800
    .local v9, allDayEvent:I
    const-string v3, "originalEvent"

    const-string v5, "_sync_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v14, "_noStartTime"

    .line 803
    .local v14, exceptionStartTime:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v3, 0x1d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 806
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 807
    const-string v3, "originalInstanceTime"

    invoke-static {v14}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 811
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 812
    const-string v3, "eventStatus"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 816
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v9

    .line 817
    const-string v3, "allDay"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 820
    :sswitch_3
    const-string v3, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :sswitch_4
    const-string v3, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 827
    goto :goto_0

    .line 829
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 830
    goto :goto_0

    .line 832
    :sswitch_7
    const-string v3, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v16

    .line 836
    .local v16, rrule:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 837
    const-string v3, "rrule"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .end local v16           #rrule:Ljava/lang/String;
    :sswitch_9
    const-string v3, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 844
    :sswitch_a
    const-string v3, "visibility"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 847
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result p5

    .line 850
    goto/16 :goto_0

    .line 864
    :cond_1
    const-string v3, "_sync_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_sync_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 868
    invoke-virtual/range {v3 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 871
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 903
    .end local v4           #cv:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 874
    .restart local v4       #cv:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    move v13, v0

    .line 875
    .local v13, exceptionStart:I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 877
    const/4 v12, 0x0

    .line 878
    .local v12, attendeesRedacted:Z
    if-eqz p3, :cond_6

    .line 879
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v4           #cv:Landroid/content/ContentValues;
    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 881
    .local v10, attValues:Landroid/content/ContentValues;
    const-string v3, "attendeeEmail"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 885
    .local v11, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 886
    const-string v3, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 889
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_5

    .line 890
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 892
    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    .line 897
    .end local v10           #attValues:Landroid/content/ContentValues;
    .end local v11           #attendeeEmail:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_6
    if-lez p4, :cond_7

    .line 898
    move-object/from16 v0, p1

    move/from16 v1, p4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 900
    :cond_7
    if-eqz v12, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Attendees redacted in this exception"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x106 -> :sswitch_2
        0x10b -> :sswitch_4
        0x10d -> :sswitch_b
        0x112 -> :sswitch_6
        0x115 -> :sswitch_1
        0x116 -> :sswitch_0
        0x117 -> :sswitch_7
        0x11b -> :sswitch_8
        0x125 -> :sswitch_a
        0x126 -> :sswitch_9
        0x127 -> :sswitch_5
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 2
    .parameter "ops"
    .parameter "cv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 928
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 934
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 930
    :pswitch_0
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 937
    :cond_0
    return-void

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x113
        :pswitch_0
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1068
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_local_id=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "serverId"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id=? AND originalEvent ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .parameter "cv"
    .parameter "reason"

    .prologue
    .line 684
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event invalid, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 688
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 691
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EasCalendarSyncAdapter"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 693
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V
    .locals 49
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v13, cv:Landroid/content/ContentValues;
    const-string v5, "calendar_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v5, "_sync_account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v5, "_sync_id"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v5, "hasAttendeeData"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v5, "_sync_local_id"

    const-string v6, "0"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/16 v27, 0x0

    .line 399
    .local v27, allDayEvent:I
    const/4 v9, 0x0

    .line 400
    .local v9, organizerName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 401
    .local v10, organizerEmail:Ljava/lang/String;
    const/16 v37, -0x1

    .line 402
    .local v37, eventOffset:I
    const/16 v35, -0x1

    .line 403
    .local v35, deleteOffset:I
    const/16 v16, 0x1

    .line 405
    .local v16, busyStatus:I
    const/16 v38, 0x1

    .line 406
    .local v38, firstTag:Z
    const-wide/16 v7, -0x1

    .line 407
    .local v7, eventId:J
    const-wide/16 v17, -0x1

    .line 408
    .local v17, startTime:J
    const-wide/16 v19, -0x1

    .line 409
    .local v19, endTime:J
    const/16 v48, 0x0

    .line 412
    .local v48, timeZone:Ljava/util/TimeZone;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v14, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v15, -0x1

    .line 414
    .local v15, reminderMins:I
    const/16 v36, 0x0

    .line 415
    .local v36, dtStamp:Ljava/lang/String;
    const/16 v44, 0x0

    .line 417
    .local v44, organizerAdded:Z
    :cond_0
    :goto_0
    const/16 v5, 0x1d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    .line 418
    if-eqz p3, :cond_8

    if-eqz v38, :cond_8

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 421
    .local v31, c:Landroid/database/Cursor;
    const-wide/16 v41, -0x1

    .line 423
    .local v41, id:J
    if-eqz v31, :cond_1

    :try_start_0
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v41

    .line 427
    :cond_1
    if-eqz v31, :cond_2

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v41, v5

    if-lez v5, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    const/16 v6, 0x111

    if-ne v5, v6, :cond_4

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v36

    .line 433
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v5

    if-eqz v31, :cond_3

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 434
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    const/16 v6, 0x107

    if-ne v5, v6, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #eventId:J
    aput-object v7, v5, v6

    .line 437
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 440
    move-wide/from16 v7, v41

    .line 459
    .end local v31           #c:Landroid/database/Cursor;
    .end local v41           #id:J
    .restart local v7       #eventId:J
    :cond_5
    :goto_1
    const/16 v38, 0x0

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 443
    .restart local v31       #c:Landroid/database/Cursor;
    .restart local v41       #id:J
    :cond_6
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v11, "Changing (delete/add) event "

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p1

    move-wide/from16 v1, v41

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v35

    .line 447
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v37

    goto :goto_1

    .line 451
    :cond_7
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v37

    .line 452
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v11, "EasCalendarSyncAdapter"

    aput-object v11, v5, v6

    const/4 v6, 0x1

    const-string v11, "Changed item not found; treating as new."

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 454
    .end local v31           #c:Landroid/database/Cursor;
    .end local v41           #id:J
    :cond_8
    if-eqz v38, :cond_5

    .line 457
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v37

    goto :goto_1

    .line 462
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v27

    .line 463
    if-eqz v27, :cond_a

    if-eqz v48, :cond_a

    .line 466
    new-instance v32, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 467
    .local v32, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v32

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 468
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "All-day event arrived in: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 469
    const/16 v5, 0xb

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0xc

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_a

    .line 471
    :cond_9
    const/16 v27, 0x0

    .line 472
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not an all-day event locally: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 475
    .end local v32           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    const-string v5, "allDay"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 479
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object v14

    .line 480
    goto/16 :goto_0

    .line 482
    :sswitch_2
    const-string v5, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :sswitch_3
    const-string v5, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v48

    .line 489
    if-nez v48, :cond_b

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v48

    .line 492
    :cond_b
    const-string v5, "eventTimezone"

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v17

    .line 496
    goto/16 :goto_0

    .line 498
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v19

    .line 499
    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 503
    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 504
    const/16 v44, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 505
    invoke-direct/range {v11 .. v20}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    .line 509
    :sswitch_8
    const-string v5, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v45

    .line 513
    .local v45, rrule:Ljava/lang/String;
    if-eqz v45, :cond_0

    .line 514
    const-string v5, "rrule"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    .end local v45           #rrule:Ljava/lang/String;
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 519
    const-string v5, "organizer"

    invoke-virtual {v13, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :sswitch_b
    const-string v5, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :sswitch_c
    const-string v5, "visibility"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 528
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 529
    goto/16 :goto_0

    .line 531
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v15

    .line 532
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(I)V

    .line 533
    const-string v5, "hasAlarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 538
    :sswitch_f
    const-string v5, "_sync_local_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v36

    .line 542
    goto/16 :goto_0

    .line 544
    :sswitch_11
    const-string v5, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v16

    .line 551
    goto/16 :goto_0

    .line 553
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v33

    .line 554
    .local v33, categories:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 555
    const-string v5, "categories"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v33           #categories:Ljava/lang/String;
    :cond_c
    move-object/from16 v21, p0

    move-object/from16 v22, v13

    move-wide/from16 v23, v17

    move-wide/from16 v25, v19

    .line 564
    invoke-virtual/range {v21 .. v27}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 567
    if-nez v44, :cond_d

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 568
    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    .line 578
    .local v47, selfOrganizer:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 579
    .local v43, numAttendees:I
    const/16 v5, 0x32

    move/from16 v0, v43

    move v1, v5

    if-le v0, v1, :cond_14

    .line 585
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_13

    .line 586
    const-string v5, "attendeesRedacted"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-eqz v47, :cond_e

    .line 588
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_e
    :goto_2
    if-eqz v47, :cond_f

    .line 598
    const-string v10, "upload_disallowed@uploadisdisallowed.aaa"

    .line 599
    const-string v5, "organizer"

    invoke-virtual {v13, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_f
    const-string v5, "hasAttendeeData"

    const-string v6, "0"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Maximum number of attendees exceeded; redacting"

    .end local v7           #eventId:J
    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 651
    :cond_10
    :goto_3
    if-ltz v37, :cond_12

    .line 653
    if-eqz v36, :cond_11

    .line 654
    const-string v5, "dtstamp"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 658
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_12
    :goto_4
    return-void

    .line 591
    .restart local v7       #eventId:J
    :cond_13
    const-string v5, "attendeesRedacted"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 592
    if-eqz v47, :cond_e

    .line 593
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 604
    :cond_14
    if-lez v43, :cond_10

    .line 605
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v46, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/ContentValues;

    .line 607
    .local v28, attendee:Landroid/content/ContentValues;
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 608
    .local v29, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v5, "\\"

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 611
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v30

    .line 613
    .local v30, attendeeStatus:I
    const-string v5, "attendeeStatus"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    if-eqz v10, :cond_15

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 622
    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_17

    .line 623
    const-string v5, "userAttendeeStatus"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v30           #attendeeStatus:I
    :cond_16
    :goto_6
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_18

    .line 633
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_5

    .line 626
    .restart local v30       #attendeeStatus:I
    :cond_17
    const-string v5, "userAttendeeStatus"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6

    .line 635
    .end local v30           #attendeeStatus:I
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_5

    .line 638
    .end local v28           #attendee:Landroid/content/ContentValues;
    .end local v29           #attendeeEmail:Ljava/lang/String;
    :cond_19
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_1a

    .line 639
    const-string v5, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 643
    :cond_1a
    const-string v5, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 645
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 646
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 663
    .end local v7           #eventId:J
    .end local v40           #i$:Ljava/util/Iterator;
    .end local v46           #sb:Ljava/lang/StringBuilder;
    :cond_1b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    move v5, v0

    sub-int v34, v5, v37

    .line 664
    .local v34, cnt:I
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inserts from mOps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 665
    const/16 v39, 0x0

    .local v39, i:I
    :goto_7
    move/from16 v0, v39

    move/from16 v1, v34

    if-ge v0, v1, :cond_1c

    .line 666
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 665
    add-int/lit8 v39, v39, 0x1

    goto :goto_7

    .line 668
    :cond_1c
    move/from16 v0, v37

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 671
    if-ltz v35, :cond_12

    .line 673
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 675
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 676
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Removing deletion ops from mOps"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 677
    move/from16 v0, v35

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    goto/16 :goto_4

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_4
        0x106 -> :sswitch_0
        0x107 -> :sswitch_1
        0x10b -> :sswitch_3
        0x10d -> :sswitch_12
        0x10e -> :sswitch_13
        0x111 -> :sswitch_10
        0x112 -> :sswitch_6
        0x114 -> :sswitch_7
        0x117 -> :sswitch_8
        0x118 -> :sswitch_11
        0x119 -> :sswitch_a
        0x11a -> :sswitch_d
        0x11b -> :sswitch_9
        0x124 -> :sswitch_e
        0x125 -> :sswitch_c
        0x126 -> :sswitch_b
        0x127 -> :sswitch_5
        0x128 -> :sswitch_f
        0x44a -> :sswitch_2
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1048
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1050
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1051
    goto :goto_0

    .line 1053
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1059
    :cond_0
    return-void

    .line 1048
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1187
    const/4 v5, 0x0

    .line 1188
    .local v5, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1189
    .local v1, clientId:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1190
    .local v6, status:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    .local v2, cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 1192
    iget v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1194
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1195
    goto :goto_0

    .line 1197
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1198
    goto :goto_0

    .line 1200
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1201
    if-eq v6, v11, :cond_0

    .line 1202
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to add event failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :cond_1
    if-nez v1, :cond_2

    .line 1232
    :goto_1
    return-void

    .line 1211
    :cond_2
    if-nez v5, :cond_3

    .line 1213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1216
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1218
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1219
    const-string v7, "_sync_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v7, "_sync_local_id"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1223
    .local v3, id:J
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1227
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    .end local v3           #id:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 6
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1104
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1113
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1106
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1107
    goto :goto_0

    .line 1109
    :sswitch_1
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1116
    :cond_0
    return-void

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1237
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1238
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1246
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1240
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1241
    goto :goto_0

    .line 1243
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1244
    goto :goto_0

    .line 1249
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1250
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1252
    :cond_1
    return-void

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1121
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1123
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1124
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1126
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1127
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1129
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1131
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1133
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Calendar SyncKey saved as: "

    aput-object v3, v0, v11

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1143
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1146
    .local v1, eventId:J
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1153
    .local v9, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v9, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 1149
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1151
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1159
    .end local v1           #eventId:J
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->execute()V

    .line 1161
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1163
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1164
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v6, cv:Landroid/content/ContentValues;
    const-string v0, "_sync_dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    const-string v0, "_sync_mark"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1168
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1173
    .end local v1           #eventId:J
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1175
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1180
    .end local v1           #eventId:J
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1181
    .restart local v9       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_3

    .line 1184
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1074
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1076
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1080
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1082
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1092
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 1074
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "cv"

    .prologue
    const/4 v4, 0x0

    .line 696
    const-string v3, "originalInstanceTime"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 698
    .local v2, isException:Z
    const-string v3, "dtstart"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    const-string v3, "DTSTART missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 725
    :goto_0
    return v3

    .line 702
    :cond_0
    if-nez v2, :cond_1

    const-string v3, "_sync_local_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    const-string v3, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 704
    goto :goto_0

    .line 706
    :cond_1
    if-nez v2, :cond_2

    const-string v3, "dtend"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 708
    const-string v3, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 709
    goto :goto_0

    .line 711
    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "dtend"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 712
    const-string v3, "Exception missing DTEND"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 713
    goto :goto_0

    .line 715
    :cond_3
    const-string v3, "rrule"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 716
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, duration:Ljava/lang/String;
    if-nez v1, :cond_4

    move v3, v4

    goto :goto_0

    .line 718
    :cond_4
    const-string v3, "allDay"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 719
    const-string v3, "allDay"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 720
    .local v0, ade:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 721
    goto :goto_0

    .line 725
    .end local v0           #ade:Ljava/lang/Integer;
    .end local v1           #duration:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public recurrenceParser()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, -0x1

    .line 731
    .local v0, type:I
    const/4 v1, -0x1

    .line 732
    .local v1, occurrences:I
    const/4 v2, -0x1

    .line 733
    .local v2, interval:I
    const/4 v3, -0x1

    .line 734
    .local v3, dow:I
    const/4 v4, -0x1

    .line 735
    .local v4, dom:I
    const/4 v5, -0x1

    .line 736
    .local v5, wom:I
    const/4 v6, -0x1

    .line 737
    .local v6, moy:I
    const/4 v7, 0x0

    .line 739
    .local v7, until:Ljava/lang/String;
    :goto_0
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 740
    iget v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 766
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 742
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 743
    goto :goto_0

    .line 745
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    .line 746
    goto :goto_0

    .line 748
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 749
    goto :goto_0

    .line 751
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    .line 752
    goto :goto_0

    .line 754
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    .line 755
    goto :goto_0

    .line 757
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    .line 758
    goto :goto_0

    .line 760
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 761
    goto :goto_0

    .line 763
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 764
    goto :goto_0

    .line 770
    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x11c
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1259
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1261
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1262
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1264
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1266
    :cond_2
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .locals 14
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 341
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gez v8, :cond_0

    .line 386
    :goto_0
    return-void

    .line 344
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-gez v8, :cond_1

    const-wide/32 v8, 0x1b7740

    add-long p4, p2, v8

    .line 347
    :cond_1
    if-eqz p6, :cond_2

    .line 348
    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v8

    move-wide/from16 v0, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 349
    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v8

    move-wide/from16 v0, p4

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 350
    const-string v8, "eventTimezone"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, originalTimeZone:Ljava/lang/String;
    const-string v8, "eventTimezone2"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v8, "eventTimezone"

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v7           #originalTimeZone:Ljava/lang/String;
    :cond_2
    const-string v8, "originalInstanceTime"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "originalAllDay"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 359
    const-string v8, "originalAllDay"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 360
    .local v3, ade:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    .line 361
    const-string v8, "originalInstanceTime"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 362
    .local v5, exceptionTime:J
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 363
    .local v4, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 364
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 365
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 366
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 367
    const-string v8, "originalInstanceTime"

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    .end local v3           #ade:Ljava/lang/Integer;
    .end local v4           #cal:Ljava/util/GregorianCalendar;
    .end local v5           #exceptionTime:J
    :cond_3
    const-string v8, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 375
    if-eqz p6, :cond_4

    .line 376
    const-string v8, "duration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, p4, p2

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_4
    const-string v8, "duration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, p4, p2

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_5
    const-string v8, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v8, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
