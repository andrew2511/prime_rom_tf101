.class public Lcom/android/exchange/utility/CalendarUtilities;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/utility/CalendarUtilities$RRule;,
        Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    }
.end annotation


# static fields
.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field static final sCurrentYear:I

.field static final sDayTokens:[Ljava/lang/String;

.field static final sGmtTimeZone:Ljava/util/TimeZone;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field static final sTwoCharacterNumbers:[Ljava/lang/String;

.field static final sTypeToFreq:[Ljava/lang/String;

.field private static sTziStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 118
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DAILY"

    aput-object v1, v0, v4

    const-string v1, "WEEKLY"

    aput-object v1, v0, v3

    const-string v1, "MONTHLY"

    aput-object v1, v0, v5

    const-string v1, "MONTHLY"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v4

    const-string v1, "MO"

    aput-object v1, v0, v3

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .line 127
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v3

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 131
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3
    .parameter "ics"
    .parameter
    .parameter "attendeeName"
    .parameter "attendeeEmail"
    .parameter "messageFlag"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/utility/SimpleIcsWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1387
    .local p1, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    and-int/lit8 v1, p4, 0x30

    if-eqz v1, :cond_4

    .line 1388
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    .line 1389
    .local v0, icalTag:Ljava/lang/String;
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_0

    .line 1390
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    .line 1392
    :cond_0
    if-eqz p2, :cond_1

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    if-nez p2, :cond_3

    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v1, p3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    .end local v0           #icalTag:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1396
    .restart local v0       #icalTag:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v1, p3, p2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1398
    .end local v0           #icalTag:Ljava/lang/String;
    :cond_4
    iget-object v1, p5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1399
    const/4 v0, 0x0

    .line 1400
    .restart local v0       #icalTag:Ljava/lang/String;
    sparse-switch p4, :sswitch_data_0

    .line 1411
    :goto_2
    if-eqz v0, :cond_2

    .line 1412
    if-eqz p2, :cond_5

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1416
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1402
    :sswitch_0
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    .line 1403
    goto :goto_2

    .line 1405
    :sswitch_1
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    .line 1406
    goto :goto_2

    .line 1408
    :sswitch_2
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    goto :goto_2

    .line 1400
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method private static addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 4
    .parameter "byDay"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1059
    .local v1, weekOfMonth:I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1061
    const/4 v1, 0x5

    .line 1062
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, bareByDay:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1068
    const/16 v2, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1069
    return-void

    .line 1064
    .end local v0           #bareByDay:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x30

    sub-int/2addr v1, v2

    .line 1065
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bareByDay:Ljava/lang/String;
    goto :goto_0
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .locals 4
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 957
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 960
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 961
    if-eqz v0, :cond_0

    .line 962
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 964
    :cond_0
    if-lez p2, :cond_1

    .line 967
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    :cond_1
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const/4 v0, 0x1

    .line 972
    :cond_2
    shr-int/lit8 p1, p1, 0x1

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    .line 967
    goto :goto_1

    .line 974
    :cond_4
    return-void
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 978
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 979
    const/4 p1, -0x1

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    return-void
.end method

.method private static addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 5
    .parameter "rrule"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    const-string v3, "COUNT="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, count:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1043
    const/16 v3, 0x11e

    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1045
    :cond_0
    const-string v3, "INTERVAL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, interval:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1047
    const/16 v3, 0x11f

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1049
    :cond_1
    const-string v3, "UNTIL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, until:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1051
    const/16 v3, 0x11d

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1053
    :cond_2
    return-void
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .locals 1
    .parameter "busyStatus"

    .prologue
    .line 1300
    packed-switch p0, :pswitch_data_0

    .line 1310
    const/4 v0, 0x0

    .line 1312
    .local v0, attendeeStatus:I
    :goto_0
    return v0

    .line 1302
    .end local v0           #attendeeStatus:I
    :pswitch_0
    const/4 v0, 0x1

    .line 1303
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1305
    .end local v0           #attendeeStatus:I
    :pswitch_1
    const/4 v0, 0x4

    .line 1306
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "entityValues"
    .parameter "sb"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1341
    if-nez p2, :cond_0

    .line 1342
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1345
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/Date;

    const-string v5, "dtstart"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1346
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, dateTimeString:Ljava/lang/String;
    const-string v5, "originalEvent"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "rrule"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1355
    const v5, 0x7f050009

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :goto_0
    const/4 v3, 0x0

    .line 1360
    .local v3, location:Ljava/lang/String;
    const-string v5, "eventLocation"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1361
    const-string v5, "eventLocation"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1363
    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const v5, 0x7f050008

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_1
    const-string v5, "description"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, desc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1370
    const-string v5, "\n--\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1357
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #location:Ljava/lang/String;
    :cond_3
    const v5, 0x7f050007

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static busyStatusFromAttendeeStatus(I)I
    .locals 1
    .parameter "selfAttendeeStatus"

    .prologue
    .line 1322
    packed-switch p0, :pswitch_data_0

    .line 1333
    :pswitch_0
    const/4 v0, 0x2

    .line 1336
    .local v0, busyStatus:I
    :goto_0
    return v0

    .line 1326
    .end local v0           #busyStatus:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1327
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1329
    .end local v0           #busyStatus:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1330
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J
    .locals 8
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v7, 0x1

    .line 1224
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "displayName"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v4, "_sync_account"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v4, "_sync_account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v4, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1230
    const-string v4, "selected"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    const-string v4, "organizerCanRespond"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    const v0, -0xffff01

    .line 1237
    .local v0, color:I
    :try_start_0
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1241
    :goto_0
    const-string v4, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    const-string v4, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v4, "access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    const-string v4, "ownerAccount"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1248
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1249
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1250
    .local v2, stringId:Ljava/lang/String;
    iput-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1251
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1253
    .end local v2           #stringId:Ljava/lang/String;
    :goto_1
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1238
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"

    .prologue
    .line 1431
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1437
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p1

    .line 1439
    const-string v4, "originalEvent"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 1440
    const/4 v4, 0x0

    .line 1442
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1443
    move/from16 v0, p2

    move-object v1, v10

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1447
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_f

    .line 1448
    const-string v7, "REQUEST"

    move-object v11, v7

    move v12, v4

    .line 1458
    :goto_0
    :try_start_0
    new-instance v4, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1459
    const-string v7, "BEGIN"

    const-string v8, "VCALENDAR"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v7, "METHOD"

    invoke-virtual {v4, v7, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v7, "PRODID"

    const-string v8, "AndroidEmail"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v7, "VERSION"

    const-string v8, "2.0"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    sget-object v7, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1467
    const-string v8, ""

    .line 1470
    const/4 v9, 0x0

    .line 1471
    const-string v13, "allDay"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 1472
    const-string v9, "allDay"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1473
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_11

    const/4 v9, 0x1

    .line 1474
    :goto_1
    if-eqz v9, :cond_26

    .line 1476
    const-string v8, ";VALUE=DATE"

    move/from16 v18, v9

    move-object v9, v8

    move/from16 v8, v18

    .line 1484
    :goto_2
    if-nez v12, :cond_25

    if-nez v8, :cond_25

    const-string v13, "rrule"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "originalEvent"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 1487
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 1489
    invoke-static {v7, v4}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1491
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ";TZID="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v18

    .line 1494
    :goto_3
    const-string v13, "BEGIN"

    const-string v14, "VEVENT"

    invoke-virtual {v4, v13, v14}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    if-nez p3, :cond_1

    .line 1496
    const-string p3, "_sync_local_id"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1498
    :cond_1
    if-eqz p3, :cond_2

    .line 1499
    const-string v13, "UID"

    move-object v0, v4

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :cond_2
    const-string p3, "DTSTAMP"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1503
    const-string p3, "DTSTAMP"

    const-string v13, "DTSTAMP"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :goto_4
    const-string p3, "dtstart"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1509
    const-wide/16 v15, 0x0

    cmp-long p3, v13, v15

    if-eqz p3, :cond_3

    .line 1510
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DTSTART"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez v8, :cond_13

    const/4 v15, 0x1

    :goto_5
    invoke-static {v13, v14, v9, v15}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v15

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_3
    if-eqz v6, :cond_4

    .line 1517
    const-string p3, "originalInstanceTime"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1518
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RECURRENCE-ID"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez v8, :cond_14

    const/16 v17, 0x1

    :goto_6
    move-wide v0, v15

    move-object v2, v9

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v15

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_4
    const-string p3, "duration"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 1523
    const-string p3, "dtend"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1524
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DTEND"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v7, "dtend"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    if-nez v8, :cond_15

    const/4 v7, 0x1

    :goto_7
    invoke-static {v13, v14, v9, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    :cond_5
    :goto_8
    const-string p3, "eventLocation"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1546
    const-string p3, "eventLocation"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1547
    const-string v7, "LOCATION"

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :cond_6
    const-string p3, "_sync_version"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1551
    if-nez p3, :cond_7

    .line 1552
    const-string p3, "0"

    .line 1556
    :cond_7
    const/4 v7, 0x0

    .line 1557
    sparse-switch p2, :sswitch_data_0

    .line 1576
    :cond_8
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1577
    const-string v9, "title"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1578
    if-nez v9, :cond_9

    .line 1579
    const-string v9, ""

    .line 1581
    :cond_9
    const-string v13, "SUMMARY"

    invoke-virtual {v4, v13, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    if-nez v7, :cond_18

    .line 1584
    iput-object v9, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1592
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    if-eqz v6, :cond_a

    if-nez v12, :cond_a

    .line 1595
    new-instance v6, Ljava/util/Date;

    const-string v13, "originalInstanceTime"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 1596
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1597
    const v13, 0x7f050005

    if-ne v7, v13, :cond_19

    .line 1598
    const v7, 0x7f05000c

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    :goto_b
    const-string v6, "\n\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 1607
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 1608
    const-string v6, "DESCRIPTION"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1612
    if-nez v12, :cond_d

    .line 1613
    const-string p0, "allDay"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1614
    const-string p0, "allDay"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 1615
    const-string v6, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "FALSE"

    :goto_c
    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_c
    const-string p0, "rrule"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1619
    if-eqz p0, :cond_d

    .line 1620
    const-string v5, "RRULE"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_d
    const/16 p0, 0x0

    .line 1629
    const/4 v6, 0x0

    .line 1630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v13, v6

    move-object/from16 v14, p0

    :cond_e
    :goto_d
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Entity$NamedContentValues;

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    .line 1634
    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1635
    const-string v6, "attendeeRelationship"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1639
    if-eqz v6, :cond_e

    const-string v7, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1642
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1b

    .line 1643
    const-string v6, "attendeeName"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1644
    const-string v7, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move-object/from16 v13, p0

    move-object v14, v6

    .line 1645
    goto :goto_d

    .line 1449
    :cond_f
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_10

    .line 1450
    const-string v7, "CANCEL"

    move-object v11, v7

    move v12, v4

    goto/16 :goto_0

    .line 1452
    :cond_10
    const-string v4, "REPLY"

    .line 1453
    const/4 v7, 0x1

    move-object v11, v4

    move v12, v7

    goto/16 :goto_0

    .line 1473
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1505
    :cond_12
    :try_start_1
    const-string p3, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v13

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1716
    :catch_0
    move-exception p0

    .line 1717
    const-string p0, "CalendarUtility"

    const-string p1, "IOException in createMessageForEntity"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 p0, 0x0

    .line 1722
    :goto_e
    return-object p0

    .line 1510
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1518
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1524
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1532
    :cond_16
    const-wide/32 v15, 0x36ee80

    .line 1533
    :try_start_2
    new-instance p3, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {p3 .. p3}, Lcom/android/exchange/utility/Duration;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1535
    :try_start_3
    const-string v17, "duration"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1539
    :goto_f
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DTEND"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-long/2addr v13, v15

    if-nez v8, :cond_17

    const/4 v7, 0x1

    :goto_10
    invoke-static {v13, v14, v9, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    const/4 v7, 0x0

    goto :goto_10

    .line 1559
    :sswitch_0
    const-string v8, "0"

    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1560
    const v7, 0x7f050006

    goto/16 :goto_9

    .line 1564
    :sswitch_1
    const v7, 0x7f050002

    .line 1565
    goto/16 :goto_9

    .line 1567
    :sswitch_2
    const v7, 0x7f050003

    .line 1568
    goto/16 :goto_9

    .line 1570
    :sswitch_3
    const v7, 0x7f050004

    .line 1571
    goto/16 :goto_9

    .line 1573
    :sswitch_4
    const v7, 0x7f050005

    goto/16 :goto_9

    .line 1587
    :cond_18
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_a

    .line 1600
    :cond_19
    const v7, 0x7f05000d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1615
    :cond_1a
    const-string p0, "TRUE"

    goto/16 :goto_c

    .line 1647
    :cond_1b
    const-string v6, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1648
    const-string v6, "attendeeName"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1651
    if-eqz v7, :cond_e

    .line 1653
    if-eqz p5, :cond_1c

    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_1c
    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 1658
    invoke-static/range {v4 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_d

    .line 1665
    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p5, :cond_1e

    .line 1666
    const/4 v6, 0x0

    move-object/from16 v7, p5

    move/from16 v8, p2

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1670
    :cond_1e
    if-eqz v13, :cond_20

    .line 1671
    const-string p0, "ORGANIZER"

    .line 1674
    if-eqz v14, :cond_1f

    .line 1675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ";CN="

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v14}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1677
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MAILTO:"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    if-eqz v12, :cond_20

    .line 1679
    if-nez v14, :cond_21

    new-instance p0, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_11
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/16 p0, 0x0

    goto/16 :goto_e

    .line 1679
    :cond_21
    new-instance p0, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1688
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    move-object/from16 p1, v0

    .line 1689
    const/16 p0, 0x0

    .line 1690
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move/from16 p5, p0

    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-interface/range {p4 .. p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/emailcommon/mail/Address;

    .line 1691
    add-int/lit8 v5, p5, 0x1

    aput-object p0, p1, p5

    move/from16 p5, v5

    goto :goto_12

    .line 1693
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1695
    const-string p0, "CLASS"

    const-string p1, "PUBLIC"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string p0, "STATUS"

    const/16 p1, 0x20

    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_24

    const-string p1, "CANCELLED"

    :goto_13
    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string p0, "TRANSP"

    const-string p1, "OPAQUE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string p0, "PRIORITY"

    const-string p1, "5"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string p0, "SEQUENCE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string p0, "END"

    const-string p1, "VEVENT"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string p0, "END"

    const-string p1, "VCALENDAR"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    new-instance p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1706
    invoke-virtual {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "text/calendar; method="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1708
    const-string p1, "invite.ics"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p1, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 p1, v0

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1711
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1714
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1715
    move-object v0, v10

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v10

    .line 1722
    goto/16 :goto_e

    .line 1696
    :cond_24
    const-string p1, "CONFIRMED"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_13

    .line 1536
    :catch_1
    move-exception p3

    goto/16 :goto_f

    :cond_25
    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v18

    goto/16 :goto_3

    :cond_26
    move/from16 v18, v9

    move-object v9, v8

    move/from16 v8, v18

    goto/16 :goto_2

    .line 1557
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1739
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1747
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 1753
    :try_start_0
    invoke-interface {v6}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-interface {v6}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1755
    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1759
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    .line 1761
    :goto_0
    return-object v0

    .line 1759
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    move-object v0, v2

    .line 1761
    goto :goto_0
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .locals 8
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 626
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 627
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 628
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    move-wide v6, v4

    .line 632
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_1
    return-wide v6

    .line 626
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .locals 6
    .parameter "tz"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "startInDaylightTime"

    .prologue
    .line 293
    move-wide v4, p3

    .line 294
    .local v4, startingEndTime:J
    const/4 v0, 0x0

    .line 297
    .local v0, date:Ljava/util/Date;
    :goto_0
    sub-long v0, p3, p1

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 298
    .end local v0           #date:Ljava/util/Date;
    add-long v0, p1, p3

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 299
    .local v0, checkTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 300
    .local v2, date:Ljava/util/Date;
    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 301
    .local v3, inDaylightTime:Z
    if-eq v3, p5, :cond_0

    .line 302
    move-wide p3, v0

    :goto_1
    move-object v0, v2

    .line 306
    .end local v2           #date:Ljava/util/Date;
    .local v0, date:Ljava/util/Date;
    goto :goto_0

    .line 304
    .local v0, checkTime:J
    .restart local v2       #date:Ljava/util/Date;
    :cond_0
    move-wide p1, v0

    goto :goto_1

    .line 309
    .end local v0           #checkTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #inDaylightTime:Z
    :cond_1
    cmp-long p3, p3, v4

    if-nez p3, :cond_2

    .line 310
    .end local p3
    const/4 p0, 0x0

    .line 316
    .end local p0
    :goto_2
    return-object p0

    .line 314
    .restart local p0
    :cond_2
    new-instance p3, Ljava/util/GregorianCalendar;

    invoke-direct {p3, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 315
    .local p3, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    move-object p0, p3

    .line 316
    goto :goto_2
.end method

.method static formatTwo(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 830
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 831
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dow"

    .prologue
    .line 990
    const/4 v2, 0x0

    .line 991
    .local v2, bits:I
    const/4 v1, 0x1

    .line 992
    .local v1, bit:I
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 994
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 995
    or-int/2addr v2, v1

    .line 997
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 999
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .locals 17
    .parameter "tz"
    .parameter "toDaylightCalendars"
    .parameter "toStandardCalendars"

    .prologue
    .line 493
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 494
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 495
    const/16 p0, 0x0

    .line 525
    .end local p0
    :goto_0
    return p0

    .line 498
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    move v15, v2

    .end local v2           #i:I
    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 499
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 500
    .local v2, cal:Ljava/util/GregorianCalendar;
    sget v3, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 501
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 503
    .local v4, startTime:J
    const-wide v2, 0x757b12c00L

    add-long/2addr v2, v4

    const-wide/32 v6, 0x1499700

    add-long/2addr v6, v2

    .line 504
    .local v6, endOfYearTime:J
    new-instance v2, Ljava/util/Date;

    .end local v2           #cal:Ljava/util/GregorianCalendar;
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 505
    .local v2, date:Ljava/util/Date;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    .local v8, startInDaylightTime:Z
    move-object/from16 v3, p0

    .line 507
    invoke-static/range {v3 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 508
    .local v2, cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_1

    .line 509
    const/16 p0, 0x0

    goto :goto_0

    .line 510
    :cond_1
    if-eqz v8, :cond_2

    .line 511
    aput-object v2, p2, v15

    .line 516
    :goto_2
    if-nez v8, :cond_3

    const/4 v2, 0x1

    move v14, v2

    .end local v2           #cal:Ljava/util/GregorianCalendar;
    :goto_3
    move-object/from16 v9, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v9 .. v14}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 517
    .restart local v2       #cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_4

    .line 518
    const/16 p0, 0x0

    goto :goto_0

    .line 513
    :cond_2
    aput-object v2, p1, v15

    goto :goto_2

    .line 516
    :cond_3
    const/4 v2, 0x0

    move v14, v2

    goto :goto_3

    .line 519
    :cond_4
    if-eqz v8, :cond_5

    .line 520
    aput-object v2, p1, v15

    .line 498
    :goto_4
    add-int/lit8 v2, v15, 0x1

    .end local v15           #i:I
    .local v2, i:I
    move v15, v2

    .end local v2           #i:I
    .restart local v15       #i:I
    goto :goto_1

    .line 522
    .local v2, cal:Ljava/util/GregorianCalendar;
    :cond_5
    aput-object v2, p2, v15

    goto :goto_4

    .line 525
    .end local v2           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #startTime:J
    .end local v6           #endOfYearTime:J
    .end local v8           #startInDaylightTime:Z
    :cond_6
    const/16 p0, 0x1

    goto :goto_0
.end method

.method public static getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2
    .parameter "values"
    .parameter "columnName"

    .prologue
    .line 1772
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1773
    .local v0, intValue:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 940
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 156
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method static getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J
    .locals 3
    .parameter "timeZone"
    .parameter "tzd"

    .prologue
    .line 271
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 272
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 273
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 274
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 275
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 276
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 277
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 278
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 279
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 227
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 230
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 231
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 235
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 236
    if-nez v2, :cond_0

    .line 237
    const/4 v4, 0x0

    .line 261
    :goto_0
    return-object v4

    .line 239
    :cond_0
    const/4 v4, 0x1

    sub-int v4, v2, v4

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 243
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 246
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 248
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 249
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 255
    :goto_1
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 256
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 257
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 258
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 259
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    move-object v4, v3

    .line 261
    goto :goto_0

    .line 251
    .end local v0           #hour:I
    .end local v1           #minute:I
    :cond_1
    iput v2, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    goto :goto_1
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 896
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 897
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 898
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 901
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 882
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 883
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 886
    :cond_0
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "globalObjId"

    .prologue
    .line 1262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1265
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1266
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1270
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1271
    .local v6, index:I
    if-lez v6, :cond_0

    .line 1274
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1286
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    :goto_0
    return-object v9

    .line 1279
    .restart local v4       #idBytes:[B
    .restart local v5       #idString:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_0
    move-object v0, v4

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v1, v0, v3

    .line 1280
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1282
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1284
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #len$:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/RuntimeException;
    move-object v9, p0

    .line 1286
    goto :goto_0
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 931
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWord([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 170
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .locals 10
    .parameter "calendars"

    .prologue
    .line 400
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 401
    .local v0, calendar:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 450
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local p0
    :goto_0
    return-object p0

    .line 402
    .restart local v0       #calendar:Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 403
    .local v7, month:I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 404
    .local v1, date:I
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 405
    .local v3, dayOfWeek:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 406
    .local v5, week:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v6

    .line 407
    .local v6, maxWeek:I
    const/4 v0, 0x0

    .line 408
    .local v0, dateRule:Z
    const/4 v2, 0x0

    .line 409
    .local v2, dayOfWeekRule:Z
    const/4 v4, 0x1

    .local v4, i:I
    move v9, v5

    .end local v5           #week:I
    .local v9, week:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    move v4, v2

    .end local v2           #dayOfWeekRule:Z
    .local v4, dayOfWeekRule:Z
    move v2, v0

    .end local v0           #dateRule:Z
    .local v2, dateRule:Z
    :goto_1
    array-length v0, p0

    if-ge v5, v0, :cond_a

    .line 410
    aget-object v0, p0, v5

    .line 411
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 413
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 414
    const/4 p0, 0x0

    goto :goto_0

    .line 415
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v3, v8, :cond_7

    .line 417
    if-eqz v2, :cond_3

    .line 418
    const/4 p0, 0x0

    goto :goto_0

    .line 420
    :cond_3
    const/4 v4, 0x1

    .line 421
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 422
    .local v8, thisWeek:I
    if-eq v9, v8, :cond_6

    .line 423
    if-ltz v9, :cond_4

    if-ne v9, v6, :cond_5

    .line 424
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    .end local v9           #week:I
    move-result v0

    .line 425
    .local v0, thisMaxWeek:I
    if-ne v8, v0, :cond_5

    .line 427
    const/4 v0, -0x1

    .local v0, week:I
    move v8, v0

    .end local v0           #week:I
    .local v8, week:I
    move v0, v2

    .end local v2           #dateRule:Z
    .local v0, dateRule:Z
    move v2, v4

    .line 409
    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    move v9, v8

    .end local v8           #week:I
    .restart local v9       #week:I
    move v4, v2

    .end local v2           #dayOfWeekRule:Z
    .local v4, dayOfWeekRule:Z
    move v2, v0

    .end local v0           #dateRule:Z
    .local v2, dateRule:Z
    goto :goto_1

    .line 431
    .end local v9           #week:I
    .local v8, thisWeek:I
    :cond_5
    const/4 p0, 0x0

    goto :goto_0

    .local v0, cal:Ljava/util/GregorianCalendar;
    .restart local v9       #week:I
    :cond_6
    move v0, v2

    .end local v2           #dateRule:Z
    .local v0, dateRule:Z
    move v8, v9

    .end local v9           #week:I
    .local v8, week:I
    move v2, v4

    .line 433
    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    goto :goto_2

    .end local v8           #week:I
    .local v0, cal:Ljava/util/GregorianCalendar;
    .local v2, dateRule:Z
    .restart local v4       #dayOfWeekRule:Z
    .restart local v9       #week:I
    :cond_7
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    .end local v2           #dateRule:Z
    move-result v0

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    if-ne v1, v0, :cond_9

    .line 435
    if-eqz v4, :cond_8

    .line 436
    const/4 p0, 0x0

    goto :goto_0

    .line 438
    :cond_8
    const/4 v0, 0x1

    .local v0, dateRule:Z
    move v2, v4

    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    move v8, v9

    .end local v9           #week:I
    .restart local v8       #week:I
    goto :goto_2

    .line 440
    .end local v0           #dateRule:Z
    .end local v2           #dayOfWeekRule:Z
    .end local v8           #week:I
    .restart local v4       #dayOfWeekRule:Z
    .restart local v9       #week:I
    :cond_9
    const/4 p0, 0x0

    goto :goto_0

    .line 444
    .local v2, dateRule:Z
    :cond_a
    if-eqz v2, :cond_b

    .line 445
    new-instance p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    .end local p0
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_0

    .line 450
    .restart local p0
    :cond_b
    new-instance p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    .end local p0
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0, v3, v9}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(III)V

    goto/16 :goto_0
.end method

.method public static millisToEasDateTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millis"

    .prologue
    .line 840
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "withTime"

    .prologue
    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 854
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 855
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    if-eqz p3, :cond_0

    .line 859
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    if-ne p2, v2, :cond_0

    .line 864
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "rrule"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 194
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 196
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 198
    add-int/lit8 v0, p1, 0x6

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 200
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 201
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 202
    return-void

    .line 198
    :cond_0
    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    goto :goto_0
.end method

.method static putTransitionMillisIntoSystemTime([BIJ)V
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "millis"

    .prologue
    .line 206
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 208
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 211
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 213
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 216
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 218
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_0

    const/4 v3, 0x5

    :goto_0
    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 221
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 222
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 223
    return-void

    :cond_0
    move v3, v1

    .line 218
    goto :goto_0
.end method

.method public static recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V
    .locals 11
    .parameter "rrule"
    .parameter "startTime"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x11c

    const/16 v8, 0x11b

    .line 1083
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_0

    .line 1084
    const-string v5, "CalendarUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RRULE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_0
    const-string v5, "FREQ="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, freq:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1091
    const-string v5, "DAILY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1092
    invoke-virtual {p3, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1093
    const-string v5, "0"

    invoke-virtual {p3, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1094
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1095
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1096
    :cond_2
    const-string v5, "WEEKLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1097
    invoke-virtual {p3, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1098
    const-string v5, "1"

    invoke-virtual {p3, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1100
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1101
    const-string v5, "BYDAY="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, byDay:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1103
    const/16 v5, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1105
    :cond_3
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1106
    .end local v0           #byDay:Ljava/lang/String;
    :cond_4
    const-string v5, "MONTHLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1107
    const-string v5, "BYMONTHDAY="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, byMonthDay:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1110
    invoke-virtual {p3, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1111
    const-string v5, "2"

    invoke-virtual {p3, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1112
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1113
    invoke-virtual {p3, v10, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1114
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1116
    :cond_5
    const-string v5, "BYDAY="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .restart local v0       #byDay:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p3, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1119
    const-string v5, "3"

    invoke-virtual {p3, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1120
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1121
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1122
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1125
    .end local v0           #byDay:Ljava/lang/String;
    .end local v2           #byMonthDay:Ljava/lang/String;
    :cond_6
    const-string v5, "YEARLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1126
    const-string v5, "BYMONTH="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, byMonth:Ljava/lang/String;
    const-string v5, "BYMONTHDAY="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .restart local v2       #byMonthDay:Ljava/lang/String;
    const-string v5, "BYDAY="

    invoke-static {p0, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .restart local v0       #byDay:Ljava/lang/String;
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 1131
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1132
    .local v3, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v3, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1133
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1134
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1135
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1137
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    :cond_7
    if-eqz v1, :cond_1

    if-nez v2, :cond_8

    if-eqz v0, :cond_1

    .line 1138
    :cond_8
    invoke-virtual {p3, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1139
    if-nez v0, :cond_9

    const-string v5, "5"

    :goto_1
    invoke-virtual {p3, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1140
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1141
    const/16 v5, 0x123

    invoke-virtual {p3, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1143
    if-eqz v2, :cond_a

    .line 1144
    invoke-virtual {p3, v10, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1148
    :goto_2
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1139
    :cond_9
    const-string v5, "6"

    goto :goto_1

    .line 1146
    :cond_a
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_2
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "until"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const/16 v1, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v1, "T000000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "occurrences"
    .parameter "interval"
    .parameter "dow"
    .parameter "dom"
    .parameter "wom"
    .parameter "moy"
    .parameter "until"

    .prologue
    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :cond_0
    if-lez p2, :cond_1

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 1208
    :cond_2
    :goto_0
    :pswitch_0
    if-eqz p7, :cond_3

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1182
    :pswitch_1
    if-lez p3, :cond_2

    const/4 v1, -0x1

    invoke-static {v0, p3, v1}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1185
    :pswitch_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 1188
    :pswitch_3
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1191
    :pswitch_4
    if-lez p4, :cond_4

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1192
    :cond_4
    if-lez p6, :cond_2

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1197
    :pswitch_5
    if-lez p3, :cond_5

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1198
    :cond_5
    if-lez p4, :cond_6

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1199
    :cond_6
    if-lez p6, :cond_2

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static setLong([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 162
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 163
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 164
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 165
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 166
    return-void
.end method

.method static setWord([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 175
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 176
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 177
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .parameter "tz"

    .prologue
    .line 326
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 328
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 329
    const-string v2, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZI string for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 336
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 334
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 336
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_0
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 8
    .parameter "tz"

    .prologue
    .line 644
    const/16 v0, 0xac

    new-array v5, v0, [B

    .line 645
    .local v5, tziBytes:[B
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    neg-int v0, v0

    .line 646
    .local v0, standardBias:I
    const v1, 0xea60

    div-int/2addr v0, v1

    .line 647
    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 649
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    .end local v0           #standardBias:I
    if-eqz v0, :cond_1

    .line 650
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/util/GregorianCalendar;

    .line 651
    .local v4, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/util/GregorianCalendar;

    .line 654
    .local v2, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v4, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v0

    .line 657
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 658
    .local v1, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 662
    const/16 v3, 0x44

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v2, v2, v7

    .end local v2           #toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v5, v3, v1, v6, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 666
    const/16 v1, 0x98

    const/4 v2, 0x0

    aget-object v2, v4, v2

    .end local v1           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-static {v3}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {v5, v1, v0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 685
    .end local v0           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p0

    .line 686
    .local p0, dstOffset:I
    const/16 v0, 0xa8

    neg-int p0, p0

    const v1, 0xea60

    div-int/2addr p0, v1

    .end local p0           #dstOffset:I
    invoke-static {v5, v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 688
    :cond_1
    const/4 p0, 0x2

    invoke-static {v5, p0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 689
    .local p0, tziEncodedBytes:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 690
    .local v0, tziString:Ljava/lang/String;
    return-object v0

    .line 673
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v1       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v2       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    .restart local v4       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .local p0, tz:Ljava/util/TimeZone;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 674
    .end local v1           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .local v0, now:J
    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v2

    .line 675
    .local v2, standardTransition:J
    invoke-static {v0, v1, v4}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v0

    .line 677
    .local v0, daylightTransition:J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 678
    const/16 v4, 0x44

    invoke-static {v5, v4, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 680
    const/16 v2, 0x98

    invoke-static {v5, v2, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    goto :goto_0
.end method

.method static timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .locals 12
    .parameter "tz"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 555
    .local v0, rawOffsetMinutes:I
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, standardOffsetString:Ljava/lang/String;
    const-string v1, "BEGIN"

    const-string v2, "VTIMEZONE"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 618
    .end local v0           #rawOffsetMinutes:I
    .end local v4           #standardOffsetString:Ljava/lang/String;
    .end local p0
    :goto_0
    return-void

    .line 568
    .restart local v0       #rawOffsetMinutes:I
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v3, 0x3

    .line 569
    .local v3, maxYears:I
    new-array v6, v3, [Ljava/util/GregorianCalendar;

    .line 570
    .local v6, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v7, v3, [Ljava/util/GregorianCalendar;

    .line 571
    .local v7, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    invoke-static {v6}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 577
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v7}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v5

    .line 578
    .local v5, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    const v8, 0xea60

    div-int/2addr v2, v8

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    .end local v0           #rawOffsetMinutes:I
    move-result-object v0

    .line 582
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 585
    .local v2, hasRule:Z
    :goto_1
    const-string v8, "BEGIN"

    const-string v9, "DAYLIGHT"

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v8, "TZOFFSETFROM"

    invoke-virtual {p1, v8, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v8, "TZOFFSETTO"

    invoke-virtual {p1, v8, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v8, "DTSTART"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    if-eqz v2, :cond_5

    .line 592
    const-string v6, "RRULE"

    .end local v6           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p1, v6, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_2
    const-string v1, "END"

    const-string v6, "DAYLIGHT"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "BEGIN"

    const-string v6, "STANDARD"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "TZOFFSETFROM"

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "TZOFFSETTO"

    .end local v0           #daylightOffsetString:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "DTSTART"

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v1, 0x0

    invoke-static {v8, v9, p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    if-eqz v2, :cond_6

    .line 608
    const-string p0, "RRULE"

    .end local p0
    invoke-virtual {v5}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .end local v2           #hasRule:Z
    .end local v4           #standardOffsetString:Ljava/lang/String;
    :cond_3
    const-string p0, "END"

    const-string v0, "STANDARD"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string p0, "END"

    const-string v0, "VTIMEZONE"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .restart local v0       #daylightOffsetString:Ljava/lang/String;
    .restart local v1       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local v6       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 594
    .restart local v2       #hasRule:Z
    :cond_5
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 595
    const-string v8, "RDATE"

    aget-object v9, v6, v1

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 610
    .end local v0           #daylightOffsetString:Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    :cond_6
    const/4 v0, 0x1

    .end local v2           #hasRule:Z
    .end local v4           #standardOffsetString:Ljava/lang/String;
    .local v0, i:I
    :goto_3
    if-ge v0, v3, :cond_3

    .line 611
    const-string v1, "RDATE"

    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v4, v5, p0, v2}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1010
    .local v4, start:I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 1019
    :goto_0
    return-object v5

    .line 1011
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1012
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1013
    move v1, v4

    .line 1016
    .local v1, end:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1017
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    if-ne v2, v3, :cond_3

    .line 1018
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 1019
    .end local v2           #end:I
    .restart local v1       #end:I
    :goto_2
    const/4 v5, 0x1

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_2
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_2

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_3
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_1
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 914
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 915
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J
    .locals 8
    .parameter "time"
    .parameter "fromTimeZone"
    .parameter "toTimeZone"

    .prologue
    const/4 v4, 0x0

    .line 945
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 946
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 947
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 949
    .local v0, toCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 952
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 953
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4
    .parameter "timeZoneString"

    .prologue
    .line 700
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 701
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 702
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 703
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    :goto_0
    return-object v0

    .line 706
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 707
    if-nez v0, :cond_2

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 711
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 713
    :cond_2
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 15
    .parameter "timeZoneString"

    .prologue
    .line 725
    const/4 v6, 0x0

    .line 727
    .local v6, timeZone:Ljava/util/TimeZone;
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 733
    .local v0, timeZoneBytes:[B
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    .end local p0
    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const v1, 0xea60

    mul-int/2addr p0, v1

    .line 737
    .local p0, bias:I
    invoke-static {p0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v11

    .line 738
    .local v11, zoneIds:[Ljava/lang/String;
    array-length p0, v11

    .end local p0           #bias:I
    if-lez p0, :cond_a

    .line 741
    const/16 p0, 0x44

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v2

    .line 743
    .local v2, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v2, :cond_5

    .line 745
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 746
    .local p0, defaultTimeZone:Ljava/util/TimeZone;
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    .end local v0           #timeZoneBytes:[B
    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 749
    const-string v0, "CalendarUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone without DST found to be default: "

    .end local v2           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object p0, v6

    .line 819
    .end local v6           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    :goto_0
    return-object v0

    .line 757
    .restart local v2       #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .restart local v6       #timeZone:Ljava/util/TimeZone;
    .local p0, defaultTimeZone:Ljava/util/TimeZone;
    :cond_1
    move-object p0, v11

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move-object v2, v6

    .end local v6           #timeZone:Ljava/util/TimeZone;
    .local v2, timeZone:Ljava/util/TimeZone;
    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v2, p0, v0

    .line 758
    .local v2, zoneId:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 759
    .local v2, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-nez v3, :cond_3

    .line 760
    sget-boolean p0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local p0           #arr$:[Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 761
    const-string p0, "CalendarUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #i$:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZone without DST found by offset: "

    .end local v1           #len$:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object p0, v2

    .end local v2           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move-object v0, v2

    .line 764
    goto :goto_0

    .line 757
    .restart local v0       #i$:I
    .restart local v1       #len$:I
    .restart local v2       #timeZone:Ljava/util/TimeZone;
    .local p0, arr$:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 768
    :cond_4
    const/4 p0, 0x0

    move-object v0, p0

    move-object p0, v2

    .end local v2           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    goto :goto_0

    .line 770
    .end local v1           #len$:I
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .local v0, timeZoneBytes:[B
    .local v2, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .restart local v6       #timeZone:Ljava/util/TimeZone;
    :cond_5
    const/16 p0, 0x98

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v5

    .line 773
    .local v5, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 p0, 0xa8

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const v0, 0xea60

    mul-int/2addr p0, v0

    int-to-long v3, p0

    .line 778
    .local v3, dstSavings:J
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v14, p0

    .end local p0           #i$:I
    .local v14, i$:I
    move-object p0, v6

    .end local v6           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move v6, v14

    .end local v14           #i$:I
    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_8

    aget-object p0, v0, v6

    .line 780
    .local p0, zoneId:Ljava/lang/String;
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 789
    .local v10, timeZone:Ljava/util/TimeZone;
    invoke-static {v10, v5}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v8

    .line 790
    .local v8, millisAtTransition:J
    new-instance v1, Ljava/util/Date;

    const-wide/32 v12, 0xea60

    sub-long v12, v8, v12

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 791
    .local v1, before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #zoneId:Ljava/lang/String;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v8

    invoke-direct {p0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 792
    .local p0, after:Ljava/util/Date;
    invoke-virtual {v10, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 778
    :cond_6
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i$:I
    .local p0, i$:I
    move v6, p0

    .end local p0           #i$:I
    .restart local v6       #i$:I
    move-object p0, v10

    .end local v10           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    goto :goto_2

    .line 793
    .restart local v10       #timeZone:Ljava/util/TimeZone;
    .local p0, after:Ljava/util/Date;
    :cond_7
    invoke-virtual {v10, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 796
    invoke-static {v10, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v8

    .line 799
    new-instance v1, Ljava/util/Date;

    .end local v1           #before:Ljava/util/Date;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v3

    sub-long v12, v8, v12

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 800
    .restart local v1       #before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #after:Ljava/util/Date;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v8

    invoke-direct {p0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 801
    .restart local p0       #after:Ljava/util/Date;
    invoke-virtual {v10, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 802
    invoke-virtual {v10, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 805
    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v3, v12

    if-nez v12, :cond_6

    move-object p0, v10

    .end local v10           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move-object v0, v10

    .line 806
    goto/16 :goto_0

    .line 810
    .end local v1           #before:Ljava/util/Date;
    .end local v8           #millisAtTransition:J
    :cond_8
    const/4 p0, 0x0

    aget-object p0, v11, p0

    .end local p0           #timeZone:Ljava/util/TimeZone;
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 811
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local v0           #arr$:[Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 812
    const-string v0, "CalendarUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TimeZone with correct DST settings; using first: "

    .end local v2           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v0, p0

    .line 816
    goto/16 :goto_0

    .line 819
    .end local v3           #dstSavings:J
    .end local v5           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v7           #len$:I
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .local v0, timeZoneBytes:[B
    .local v6, timeZone:Ljava/util/TimeZone;
    :cond_a
    const/4 p0, 0x0

    move-object v0, p0

    move-object p0, v6

    .end local v6           #timeZone:Ljava/util/TimeZone;
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    goto/16 :goto_0
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 462
    .local v0, hours:I
    if-gez v0, :cond_2

    .line 463
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const/4 v3, 0x0

    sub-int v0, v3, v0

    .line 468
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 469
    .local v1, minutes:I
    if-ge v0, v4, :cond_0

    .line 470
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    if-ge v1, v4, :cond_1

    .line 474
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 466
    .end local v1           #minutes:I
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 3
    .parameter "writer"
    .parameter "tz"
    .parameter "offsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "END"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "END"

    const-string v1, "VTIMEZONE"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method
