.class public Lcom/android/exchange/adapter/CalendarSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;,
        Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    }
.end annotation


# static fields
.field private static final ATTENDEES_URI:Landroid/net/Uri;

.field private static final ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final EVENTS_URI:Landroid/net/Uri;

.field private static final EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

.field private static final REMINDERS_URI:Landroid/net/Uri;

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mCalendarId:J

.field private mCalendarIdArgument:[Ljava/lang/String;

.field private mCalendarIdString:Ljava/lang/String;

.field private mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mEmailAddress:Ljava/lang/String;

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCancelIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "originalEvent"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 127
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    .line 128
    sget-object v0, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    .line 129
    sget-object v0, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    .line 131
    sget-object v0, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    .line 135
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 9
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 136
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 167
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 183
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 178
    :goto_1
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private decodeVisibility(I)Ljava/lang/String;
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, easVisibility:I
    packed-switch p1, :pswitch_data_0

    .line 1411
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1399
    :pswitch_0
    const/4 v0, 0x0

    .line 1400
    goto :goto_0

    .line 1402
    :pswitch_1
    const/4 v0, 0x1

    .line 1403
    goto :goto_0

    .line 1405
    :pswitch_2
    const/4 v0, 0x2

    .line 1406
    goto :goto_0

    .line 1408
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .parameter "cv"
    .parameter "column"

    .prologue
    .line 1415
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1416
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1417
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "clientId"

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1706
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 1707
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing declined response to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1708
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_0
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 59
    .parameter "entity"
    .parameter "clientId"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v26

    .line 1428
    .local v26, entityValues:Landroid/content/ContentValues;
    if-nez p2, :cond_e

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 1429
    .local v36, isException:Z
    :goto_0
    const/16 v31, 0x0

    .line 1430
    .local v31, hasAttendees:Z
    const-string v5, "_sync_id"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v34

    .line 1431
    .local v34, isChange:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v57, v0

    .line 1432
    .local v57, version:Ljava/lang/Double;
    const-string v5, "allDay"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v11

    .line 1438
    .local v11, allDay:Z
    if-eqz v36, :cond_3

    .line 1440
    const-string v5, "deleted"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1441
    .local v18, deleted:Ljava/lang/Integer;
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    move/from16 v35, v5

    .line 1442
    .local v35, isDeleted:Z
    :goto_1
    const-string v5, "eventStatus"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .line 1443
    .local v29, eventStatus:Ljava/lang/Integer;
    if-eqz v29, :cond_10

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move/from16 v33, v5

    .line 1444
    .local v33, isCanceled:Z
    :goto_2
    if-nez v35, :cond_0

    if-eqz v33, :cond_11

    .line 1445
    :cond_0
    const/16 v5, 0x115

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1448
    if-eqz v35, :cond_1

    if-nez v33, :cond_1

    .line 1449
    const-string v5, "_id"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 1450
    .local v27, eventId:J
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1451
    .local v17, cv:Landroid/content/ContentValues;
    const-string v5, "eventStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1460
    .end local v17           #cv:Landroid/content/ContentValues;
    .end local v27           #eventId:J
    :cond_1
    :goto_3
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v45

    .line 1461
    .local v45, originalTime:Ljava/lang/Long;
    if-eqz v45, :cond_3

    .line 1462
    const-string v5, "originalAllDay"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v44

    .line 1465
    .local v44, originalAllDay:Z
    if-eqz v44, :cond_2

    .line 1467
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 1470
    :cond_2
    const/16 v5, 0x116

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1478
    .end local v18           #deleted:Ljava/lang/Integer;
    .end local v29           #eventStatus:Ljava/lang/Integer;
    .end local v33           #isCanceled:Z
    .end local v35           #isDeleted:Z
    .end local v44           #originalAllDay:Z
    .end local v45           #originalTime:Ljava/lang/Long;
    :cond_3
    if-eqz v11, :cond_12

    const-string v5, "eventTimezone2"

    :goto_4
    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1480
    .local v55, timeZoneName:Ljava/lang/String;
    if-nez v55, :cond_4

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v55

    .line 1483
    :cond_4
    invoke-static/range {v55 .. v55}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 1485
    .local v30, eventTimeZone:Ljava/util/TimeZone;
    if-nez v36, :cond_5

    .line 1488
    invoke-static/range {v30 .. v30}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v54

    .line 1489
    .local v54, timeZone:Ljava/lang/String;
    const/16 v5, 0x105

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1492
    .end local v54           #timeZone:Ljava/lang/String;
    :cond_5
    const/16 v5, 0x106

    if-eqz v11, :cond_13

    const-string v6, "1"

    :goto_5
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1495
    const-string v5, "dtstart"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v51

    .line 1499
    .local v51, startTime:J
    const-string v5, "dtend"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1500
    const-string v5, "dtend"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1514
    .local v24, endTime:J
    :goto_6
    if-eqz v11, :cond_6

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v56, v0

    .line 1516
    .local v56, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, v51

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v51

    .line 1517
    move-wide/from16 v0, v24

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v24

    .line 1519
    .end local v56           #tz:Ljava/util/TimeZone;
    :cond_6
    const/16 v5, 0x127

    invoke-static/range {v51 .. v52}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1520
    const/16 v5, 0x112

    invoke-static/range {v24 .. v25}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1522
    const/16 v5, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1525
    const-string v5, "eventLocation"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1526
    .local v37, loc:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1527
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpg-double v5, v5, v7

    if-gez v5, :cond_7

    .line 1529
    invoke-static/range {v37 .. v37}, Lcom/android/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1531
    :cond_7
    const/16 v5, 0x117

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1533
    :cond_8
    const-string v5, "title"

    const/16 v6, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1535
    const-string v5, "description"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1536
    .local v19, desc:Ljava/lang/String;
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 1537
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_16

    .line 1538
    const/16 v5, 0x44a

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1539
    const/16 v5, 0x446

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1540
    const/16 v5, 0x44b

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1541
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1548
    :cond_9
    :goto_7
    if-nez v36, :cond_28

    .line 1550
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_a

    if-nez v34, :cond_b

    .line 1551
    :cond_a
    const-string v5, "organizer"

    const/16 v6, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1554
    :cond_b
    const-string v5, "rrule"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1555
    .local v49, rrule:Ljava/lang/String;
    if-eqz v49, :cond_c

    .line 1556
    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V

    .line 1560
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v53

    .line 1562
    .local v53, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/16 v23, -0x1

    .line 1563
    .local v23, earliestReminder:I
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :cond_d
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1564
    .local v39, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v40, v0

    .line 1565
    .local v40, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v41, v0

    .line 1566
    .local v41, ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1567
    const-string v5, "name"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1569
    .local v46, propertyName:Ljava/lang/String;
    const-string v5, "value"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1571
    .local v47, propertyValue:Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1574
    const-string v5, "categories"

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1577
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v5, "\\"

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    .local v50, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_d

    .line 1580
    const/16 v5, 0x10e

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1581
    :goto_9
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1582
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 1583
    .local v16, category:Ljava/lang/String;
    const/16 v5, 0x10f

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1428
    .end local v11           #allDay:Z
    .end local v16           #category:Ljava/lang/String;
    .end local v19           #desc:Ljava/lang/String;
    .end local v23           #earliestReminder:I
    .end local v24           #endTime:J
    .end local v30           #eventTimeZone:Ljava/util/TimeZone;
    .end local v31           #hasAttendees:Z
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #isChange:Z
    .end local v36           #isException:Z
    .end local v37           #loc:Ljava/lang/String;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvUri:Landroid/net/Uri;
    .end local v41           #ncvValues:Landroid/content/ContentValues;
    .end local v46           #propertyName:Ljava/lang/String;
    .end local v47           #propertyValue:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v50           #st:Ljava/util/StringTokenizer;
    .end local v51           #startTime:J
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v55           #timeZoneName:Ljava/lang/String;
    .end local v57           #version:Ljava/lang/Double;
    :cond_e
    const/4 v5, 0x0

    move/from16 v36, v5

    goto/16 :goto_0

    .line 1441
    .restart local v11       #allDay:Z
    .restart local v18       #deleted:Ljava/lang/Integer;
    .restart local v31       #hasAttendees:Z
    .restart local v34       #isChange:Z
    .restart local v36       #isException:Z
    .restart local v57       #version:Ljava/lang/Double;
    :cond_f
    const/4 v5, 0x0

    move/from16 v35, v5

    goto/16 :goto_1

    .line 1443
    .restart local v29       #eventStatus:Ljava/lang/Integer;
    .restart local v35       #isDeleted:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v33, v5

    goto/16 :goto_2

    .line 1456
    .restart local v33       #isCanceled:Z
    :cond_11
    const/16 v5, 0x115

    const-string v6, "0"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 1478
    .end local v18           #deleted:Ljava/lang/Integer;
    .end local v29           #eventStatus:Ljava/lang/Integer;
    .end local v33           #isCanceled:Z
    .end local v35           #isDeleted:Z
    :cond_12
    const-string v5, "eventTimezone"

    goto/16 :goto_4

    .line 1492
    .restart local v30       #eventTimeZone:Ljava/util/TimeZone;
    .restart local v55       #timeZoneName:Ljava/lang/String;
    :cond_13
    const-string v6, "0"

    goto/16 :goto_5

    .line 1502
    .restart local v51       #startTime:J
    :cond_14
    const-wide/32 v21, 0x36ee80

    .line 1503
    .local v21, durationMillis:J
    const-string v5, "duration"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1504
    new-instance v20, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {v20 .. v20}, Lcom/android/exchange/utility/Duration;-><init>()V

    .line 1506
    .local v20, duration:Lcom/android/exchange/utility/Duration;
    :try_start_0
    const-string v5, "duration"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v21

    .line 1512
    .end local v20           #duration:Lcom/android/exchange/utility/Duration;
    :cond_15
    :goto_a
    add-long v24, v51, v21

    .restart local v24       #endTime:J
    goto/16 :goto_6

    .line 1544
    .end local v21           #durationMillis:J
    .restart local v19       #desc:Ljava/lang/String;
    .restart local v37       #loc:Ljava/lang/String;
    :cond_16
    const/16 v5, 0x10b

    invoke-static/range {v19 .. v19}, Lcom/android/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_7

    .line 1585
    .restart local v23       #earliestReminder:I
    .restart local v32       #i$:Ljava/util/Iterator;
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v40       #ncvUri:Landroid/net/Uri;
    .restart local v41       #ncvValues:Landroid/content/ContentValues;
    .restart local v46       #propertyName:Ljava/lang/String;
    .restart local v47       #propertyValue:Ljava/lang/String;
    .restart local v49       #rrule:Ljava/lang/String;
    .restart local v50       #st:Ljava/util/StringTokenizer;
    .restart local v53       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_17
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_8

    .line 1588
    .end local v46           #propertyName:Ljava/lang/String;
    .end local v47           #propertyValue:Ljava/lang/String;
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_18
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1589
    const-string v5, "minutes"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v38

    .line 1590
    .local v38, mins:Ljava/lang/Integer;
    if-eqz v38, :cond_d

    .line 1592
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_19

    .line 1593
    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 1596
    :cond_19
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    .line 1597
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto/16 :goto_8

    .line 1604
    .end local v38           #mins:Ljava/lang/Integer;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvUri:Landroid/net/Uri;
    .end local v41           #ncvValues:Landroid/content/ContentValues;
    :cond_1a
    if-ltz v23, :cond_1b

    .line 1605
    const/16 v5, 0x124

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1610
    :cond_1b
    if-eqz p2, :cond_1c

    .line 1611
    const/16 v5, 0x128

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1615
    :cond_1c
    const/16 v43, 0x0

    .line 1616
    .local v43, organizerName:Ljava/lang/String;
    const/16 v42, 0x0

    .line 1617
    .local v42, organizerEmail:Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1d
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1618
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v40, v0

    .line 1619
    .restart local v40       #ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v41, v0

    .line 1620
    .restart local v41       #ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1621
    const-string v5, "attendeeRelationship"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    .line 1624
    .local v48, relationship:Ljava/lang/Integer;
    if-eqz v48, :cond_1d

    const-string v5, "attendeeEmail"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1626
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    .line 1627
    const-string v5, "attendeeName"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1628
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1629
    goto :goto_b

    .line 1631
    :cond_1e
    if-nez v31, :cond_1f

    .line 1632
    const/16 v5, 0x107

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1633
    const/16 v31, 0x1

    .line 1635
    :cond_1f
    const/16 v5, 0x108

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1636
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1637
    .local v12, attendeeEmail:Ljava/lang/String;
    const-string v5, "attendeeName"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1638
    .local v13, attendeeName:Ljava/lang/String;
    if-nez v13, :cond_20

    .line 1639
    move-object v13, v12

    .line 1641
    :cond_20
    const/16 v5, 0x10a

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1642
    const/16 v5, 0x109

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1643
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_21

    .line 1644
    const/16 v5, 0x12a

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1646
    :cond_21
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_b

    .line 1650
    .end local v12           #attendeeEmail:Ljava/lang/String;
    .end local v13           #attendeeName:Ljava/lang/String;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvUri:Landroid/net/Uri;
    .end local v41           #ncvValues:Landroid/content/ContentValues;
    .end local v48           #relationship:Ljava/lang/Integer;
    :cond_22
    if-eqz v31, :cond_23

    .line 1651
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1655
    :cond_23
    const-string v5, "_id"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 1656
    .restart local v27       #eventId:J
    const/4 v14, 0x1

    .line 1657
    .local v14, busyStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v8, "event_id=? AND attendeeEmail LIKE ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .end local v11           #allDay:Z
    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1660
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_25

    .line 1662
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1663
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAttendeeStatus(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 1667
    :cond_24
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1670
    :cond_25
    const/16 v5, 0x10d

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1674
    const/16 v5, 0x118

    if-eqz v31, :cond_29

    const-string v6, "1"

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1680
    :goto_d
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_26

    if-nez v34, :cond_27

    :cond_26
    if-eqz v43, :cond_27

    .line 1682
    const/16 v5, 0x11a

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1687
    :cond_27
    const-string v5, "visibility"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v58

    .line 1688
    .local v58, visibility:Ljava/lang/Integer;
    if-eqz v58, :cond_2b

    .line 1689
    const/16 v5, 0x125

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1695
    .end local v14           #busyStatus:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v23           #earliestReminder:I
    .end local v27           #eventId:J
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v42           #organizerEmail:Ljava/lang/String;
    .end local v43           #organizerName:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v58           #visibility:Ljava/lang/Integer;
    :cond_28
    :goto_e
    return-void

    .line 1667
    .restart local v14       #busyStatus:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v23       #earliestReminder:I
    .restart local v27       #eventId:J
    .restart local v32       #i$:Ljava/util/Iterator;
    .restart local v42       #organizerEmail:Ljava/lang/String;
    .restart local v43       #organizerName:Ljava/lang/String;
    .restart local v49       #rrule:Ljava/lang/String;
    .restart local v53       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1674
    :cond_29
    const-string v6, "0"

    goto :goto_c

    .line 1676
    :cond_2a
    const/16 v5, 0x118

    const-string v6, "3"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_d

    .line 1692
    .restart local v58       #visibility:Ljava/lang/Integer;
    :cond_2b
    const/16 v5, 0x125

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_e

    .line 1508
    .end local v14           #busyStatus:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v19           #desc:Ljava/lang/String;
    .end local v23           #earliestReminder:I
    .end local v24           #endTime:J
    .end local v27           #eventId:J
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v37           #loc:Ljava/lang/String;
    .end local v42           #organizerEmail:Ljava/lang/String;
    .end local v43           #organizerName:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v58           #visibility:Ljava/lang/Integer;
    .restart local v11       #allDay:Z
    .restart local v20       #duration:Lcom/android/exchange/utility/Duration;
    .restart local v21       #durationMillis:J
    :catch_0
    move-exception v5

    goto/16 :goto_a
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "Calendar"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 244
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 247
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v5, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v1

    .line 249
    .local v1, data:[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_1

    .line 251
    :cond_0
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 252
    const-string v5, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 256
    :goto_0
    return-object v4

    .line 254
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 255
    .local v3, syncKey:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SyncKey retrieved as "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    const-string v7, " from CalendarProvider"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    :try_start_4
    monitor-exit v4

    move-object v4, v3

    goto :goto_0

    .line 258
    .end local v1           #data:[B
    .end local v3           #syncKey:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 259
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from CalendarProvider"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 261
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    .line 219
    .local v0, p:Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 56
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    iget-object v5, v6, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1716
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1717
    const/4 v6, 0x0

    .line 2092
    :goto_0
    return v6

    .line 1723
    :cond_0
    :try_start_0
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    .local v46, orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "_sync_dirty=1 AND originalEvent NOTNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1727
    .local v17, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1730
    .local v22, cv:Landroid/content/ContentValues;
    const-string v6, "_sync_mark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1733
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1734
    .local v49, serverId:Ljava/lang/String;
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const-string v7, "_sync_id=? AND originalEvent ISNULL AND calendar_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v49, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1737
    .local v20, cnt:I
    if-nez v20, :cond_1

    .line 1738
    const/4 v6, 0x1

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1742
    .end local v20           #cnt:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v49           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2088
    .end local v17           #c:Landroid/database/Cursor;
    .end local v46           #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    move-object/from16 v23, v6

    .line 2089
    .local v23, e:Landroid/os/RemoteException;
    const-string v6, "EasCalendarSyncAdapter"

    const-string v7, "Could not read dirty events."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    .end local v23           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1742
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v46       #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1746
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 1747
    .local v44, orphan:J
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "EasCalendarSyncAdapter"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted orphaned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1748
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1750
    .end local v44           #orphan:J
    :cond_3
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 1753
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "(_sync_dirty=1 OR _sync_mark= 1) AND originalEvent ISNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v28

    .line 1756
    .local v28, eventIterator:Landroid/content/EntityIterator;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1759
    .local v18, cidValues:Landroid/content/ContentValues;
    const/16 v35, 0x1

    .line 1760
    .local v35, first:Z
    :cond_4
    :goto_4
    :try_start_4
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1761
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 1764
    .local v24, entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 1765
    .local v25, entityValues:Landroid/content/ContentValues;
    const-string v6, "_sync_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1770
    .restart local v49       #serverId:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_5
    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1771
    .local v39, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1772
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 1773
    .local v40, ncvValues:Landroid/content/ContentValues;
    const-string v6, "name"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "upsyncProhibited"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1775
    const-string v6, "1"

    const-string v7, "value"

    move-object/from16 v0, v40

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    const-string v7, "_id"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 2086
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v24           #entity:Landroid/content/Entity;
    .end local v25           #entityValues:Landroid/content/ContentValues;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvValues:Landroid/content/ContentValues;
    .end local v49           #serverId:Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->close()V

    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1785
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v24       #entity:Landroid/content/Entity;
    .restart local v25       #entityValues:Landroid/content/ContentValues;
    .restart local v49       #serverId:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v6, "_sync_local_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1786
    .local v19, clientId:Ljava/lang/String;
    if-nez v19, :cond_7

    .line 1787
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1792
    :cond_7
    const-string v6, "organizer"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1793
    .local v42, organizerEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v42

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    .line 1795
    .local v48, selfOrganizer:Z
    const-string v6, "dtstart"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "duration"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "dtend"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_8
    if-eqz v42, :cond_4

    .line 1802
    if-eqz v35, :cond_9

    .line 1803
    const/16 v6, 0x16

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1804
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Sending Calendar changes to the server"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1805
    const/16 v35, 0x0

    .line 1807
    :cond_9
    const-string v6, "_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 1808
    .local v26, eventId:J
    if-nez v49, :cond_b

    .line 1810
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Creating new event with clientId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v19, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1811
    const/4 v6, 0x7

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1813
    const-string v6, "_sync_local_id"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string v6, "_sync_version"

    const-string v7, "0"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1853
    :goto_6
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1855
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1858
    if-eqz v49, :cond_16

    .line 1859
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "originalEvent=? AND calendar_id=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v49, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v33

    .line 1862
    .local v33, exIterator:Landroid/content/EntityIterator;
    const/16 v32, 0x1

    .line 1867
    .local v32, exFirst:Z
    :goto_7
    :try_start_7
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1868
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Entity;

    .line 1869
    .local v29, exEntity:Landroid/content/Entity;
    if-eqz v32, :cond_a

    .line 1870
    const/16 v6, 0x114

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1871
    const/16 v32, 0x0

    .line 1873
    :cond_a
    const/16 v6, 0x113

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1874
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object v2, v6

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1875
    invoke-virtual/range {v29 .. v29}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v34

    .line 1876
    .local v34, exValues:Landroid/content/ContentValues;
    const-string v6, "_sync_dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 1880
    const-string v6, "_id"

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 1886
    .local v30, exEventId:J
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1887
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, v29

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    .line 1936
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    throw v6

    .line 1818
    .end local v32           #exFirst:Z
    .end local v33           #exIterator:Landroid/content/EntityIterator;
    :cond_b
    const-string v6, "deleted"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 1819
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Deleting event with serverId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v49, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1820
    const/16 v6, 0x9

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    if-eqz v48, :cond_c

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1825
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1829
    :cond_d
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upsync change to event with serverId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1831
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1834
    .local v55, version:Ljava/lang/String;
    if-nez v55, :cond_e

    .line 1835
    const-string v55, "0"

    .line 1846
    :goto_9
    const-string v6, "_sync_version"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1851
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6

    .line 1839
    :cond_e
    :try_start_9
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v55

    goto :goto_9

    .line 1840
    :catch_1
    move-exception v6

    move-object/from16 v23, v6

    .line 1843
    .local v23, e:Ljava/lang/Exception;
    :try_start_a
    const-string v55, "0"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    .line 1890
    .end local v23           #e:Ljava/lang/Exception;
    .end local v55           #version:Ljava/lang/String;
    .restart local v29       #exEntity:Landroid/content/Entity;
    .restart local v30       #exEventId:J
    .restart local v32       #exFirst:Z
    .restart local v33       #exIterator:Landroid/content/EntityIterator;
    .restart local v34       #exValues:Landroid/content/ContentValues;
    :cond_f
    :try_start_b
    const-string v6, "deleted"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const-string v6, "eventStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14

    .line 1892
    :cond_10
    const/16 v36, 0x20

    .line 1893
    .local v36, flag:I
    if-nez v48, :cond_11

    .line 1901
    const-string v6, "organizer"

    const-string v7, "organizer"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 1911
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    const-string v6, "_sync_version"

    const-string v7, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    const-string v6, "eventLocation"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1920
    const-string v6, "eventLocation"

    const-string v7, "eventLocation"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :cond_12
    if-eqz v48, :cond_13

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v29

    move/from16 v2, v36

    move-object/from16 v3, v19

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v38

    .line 1927
    .local v38, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v38, :cond_13

    .line 1928
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing exception update to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    .end local v30           #exEventId:J
    .end local v36           #flag:I
    .end local v38           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_7

    .line 1906
    .restart local v30       #exEventId:J
    :cond_14
    const/16 v36, 0x10

    .restart local v36       #flag:I
    goto/16 :goto_a

    .line 1936
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v36           #flag:I
    :cond_15
    :try_start_c
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    .line 1938
    if-nez v32, :cond_16

    .line 1939
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1943
    .end local v32           #exFirst:Z
    .end local v33           #exIterator:Landroid/content/EntityIterator;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    const/4 v14, 0x0

    .line 1949
    .local v14, attendeeString:Ljava/lang/String;
    const-wide/16 v15, -0x1

    .line 1950
    .local v15, attendeeStringId:J
    const/16 v52, 0x0

    .line 1951
    .local v52, userAttendeeStatus:Ljava/lang/String;
    const-wide/16 v53, -0x1

    .line 1952
    .local v53, userAttendeeStatusId:J
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_17
    :goto_b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1953
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1954
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 1955
    .restart local v40       #ncvValues:Landroid/content/ContentValues;
    const-string v6, "name"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1957
    .local v47, propertyName:Ljava/lang/String;
    const-string v6, "attendees"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1958
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1960
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_b

    .line 1962
    :cond_18
    const-string v6, "userAttendeeStatus"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1964
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1966
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v53

    goto :goto_b

    .line 1975
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvValues:Landroid/content/ContentValues;
    .end local v47           #propertyName:Ljava/lang/String;
    :cond_19
    if-eqz v48, :cond_20

    const-string v6, "_sync_dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/16 v9, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v38

    .line 1981
    .restart local v38       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v38, :cond_1a

    .line 1982
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Queueing invitation to "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    :cond_1a
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 1987
    .local v43, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1b

    .line 1988
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v6, "\\"

    move-object/from16 v0, v50

    move-object v1, v14

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    .local v50, st:Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1991
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1994
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_1b
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    .local v41, newTokenizedAttendees:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1c
    :goto_d
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 1998
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1999
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "attendeeEmail"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2002
    .local v13, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v43

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2003
    move-object/from16 v0, v41

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    const-string v6, "\\"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2010
    .end local v13           #attendeeEmail:Ljava/lang/String;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_1d
    new-instance v22, Landroid/content/ContentValues;

    .end local v22           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2011
    .restart local v22       #cv:Landroid/content/ContentValues;
    const-string v6, "value"

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    if-eqz v14, :cond_1f

    .line 2013
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2023
    :goto_e
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1e
    :goto_f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2025
    .local v12, removedAttendee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/16 v9, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v12}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v38

    .line 2028
    if-eqz v38, :cond_1e

    .line 2030
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing cancellation to removed attendee "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2017
    .end local v12           #removedAttendee:Ljava/lang/String;
    :cond_1f
    const-string v6, "name"

    const-string v7, "attendees"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const-string v6, "event_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2019
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_e

    .line 2034
    .end local v38           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v41           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v43           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    if-nez v48, :cond_4

    .line 2038
    const-string v6, "selfAttendeeStatus"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v21

    .line 2039
    .local v21, currentStatus:I
    const/16 v51, 0x0

    .line 2040
    .local v51, syncStatus:I
    if-eqz v52, :cond_21

    .line 2042
    :try_start_d
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2

    move-result v51

    .line 2047
    :cond_21
    :goto_10
    move/from16 v0, v21

    move/from16 v1, v51

    if-eq v0, v1, :cond_4

    if-eqz v21, :cond_4

    .line 2050
    const/4 v9, 0x0

    .line 2051
    .local v9, messageFlag:I
    packed-switch v21, :pswitch_data_0

    .line 2063
    :goto_11
    :pswitch_0
    if-eqz v9, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v53, v6

    if-ltz v6, :cond_4

    .line 2065
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 2066
    const-string v6, "value"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v53

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v38

    .line 2074
    .restart local v38       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v38, :cond_4

    .line 2075
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing invitation reply to "

    .end local v9           #messageFlag:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2053
    .end local v38           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v9       #messageFlag:I
    :pswitch_1
    const/16 v9, 0x40

    .line 2054
    goto :goto_11

    .line 2056
    :pswitch_2
    const/16 v9, 0x80

    .line 2057
    goto :goto_11

    .line 2059
    :pswitch_3
    const/16 v9, 0x100

    goto :goto_11

    .line 2082
    .end local v9           #messageFlag:I
    .end local v14           #attendeeString:Ljava/lang/String;
    .end local v15           #attendeeStringId:J
    .end local v19           #clientId:Ljava/lang/String;
    .end local v21           #currentStatus:I
    .end local v24           #entity:Landroid/content/Entity;
    .end local v25           #entityValues:Landroid/content/ContentValues;
    .end local v26           #eventId:J
    .end local v42           #organizerEmail:Ljava/lang/String;
    .end local v48           #selfOrganizer:Z
    .end local v49           #serverId:Ljava/lang/String;
    .end local v51           #syncStatus:I
    .end local v52           #userAttendeeStatus:Ljava/lang/String;
    .end local v53           #userAttendeeStatusId:J
    :cond_22
    if-nez v35, :cond_23

    .line 2083
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2086
    :cond_23
    :try_start_f
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->close()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_2

    .line 2043
    .restart local v14       #attendeeString:Ljava/lang/String;
    .restart local v15       #attendeeStringId:J
    .restart local v19       #clientId:Ljava/lang/String;
    .restart local v21       #currentStatus:I
    .restart local v24       #entity:Landroid/content/Entity;
    .restart local v25       #entityValues:Landroid/content/ContentValues;
    .restart local v26       #eventId:J
    .restart local v42       #organizerEmail:Ljava/lang/String;
    .restart local v48       #selfOrganizer:Z
    .restart local v49       #serverId:Ljava/lang/String;
    .restart local v51       #syncStatus:I
    .restart local v52       #userAttendeeStatus:Ljava/lang/String;
    .restart local v53       #userAttendeeStatusId:J
    :catch_2
    move-exception v6

    goto/16 :goto_10

    .line 2051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .locals 1
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "4"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 209
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 6
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    sget-object v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 275
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 278
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, " in CalendarProvider"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 284
    monitor-exit v2

    .line 285
    return-void

    .line 279
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 280
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in CalendarProvider"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public wipe()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sync_account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 204
    return-void
.end method
