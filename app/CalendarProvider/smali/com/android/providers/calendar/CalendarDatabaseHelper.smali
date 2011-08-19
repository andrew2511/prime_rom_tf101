.class Lcom/android/providers/calendar/CalendarDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;


# instance fields
.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mContext:Landroid/content/Context;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 199
    const-string v1, "calendar.db"

    const/4 v2, 0x0

    const/16 v3, 0xcc

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 203
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    .line 204
    new-instance v1, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 205
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 270
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 277
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,visibility INTEGER NOT NULL DEFAULT 0,transparency INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,originalEvent TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,dtstart2 INTEGER,dtend2 INTEGER,eventTimezone2 TEXT,syncAdapterData TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 337
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account= (SELECT _sync_account FROM Calendars   WHERE Calendars._id=new.calendar_id),_sync_account_type= (SELECT _sync_account_type FROM Calendars   WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 385
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 448
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    const-string v0, "com.android.contacts"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 455
    return-void
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 1655
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1656
    array-length v1, v0

    if-le v1, v2, :cond_0

    const-string v1, "feeds"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    const/4 v1, 0x5

    :try_start_0
    aget-object v0, v0, v1

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1666
    :goto_0
    return-object v0

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    const-string v0, "CalendarDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to url decode the email address in calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1661
    goto :goto_0

    .line 1665
    :cond_0
    const-string v0, "CalendarDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find the email address in calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1666
    goto :goto_0
.end method

.method private createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 505
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 508
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 516
    return-void
.end method

.method private createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 494
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 458
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,name TEXT,displayName TEXT,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,deleted INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private static createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1578
    const-string v0, "DROP VIEW IF EXISTS view_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1579
    const-string v0, "SELECT Events._id AS _id,htmlUri,title,description,eventLocation,eventStatus,selfAttendeeStatus,commentsUri,dtstart,dtend,duration,eventTimezone,allDay,visibility,timezone,selected,access_level,transparency,color,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,originalEvent,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,calendar_id,guestsCanInviteOthers,guestsCanModify,guestsCanSeeGuests,organizer,Events.deleted AS deleted,Events._sync_id AS _sync_id,Events._sync_version AS _sync_version,Events._sync_dirty AS _sync_dirty,Events._sync_account AS _sync_account,Events._sync_account_type AS _sync_account_type,Events._sync_time AS _sync_time,Events._sync_local_id AS _sync_local_id,Events._sync_mark AS _sync_mark,sync1,ownerAccount,sync_events,syncAdapterData FROM Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_events AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1534
    const-string v0, "DROP TABLE IF EXISTS Calendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1535
    const-string v0, "DROP TABLE IF EXISTS Events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1536
    const-string v0, "DROP TABLE IF EXISTS EventsRawTimes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1537
    const-string v0, "DROP TABLE IF EXISTS Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1538
    const-string v0, "DROP TABLE IF EXISTS CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1540
    const-string v0, "DROP TABLE IF EXISTS Attendees;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1541
    const-string v0, "DROP TABLE IF EXISTS Reminders;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1542
    const-string v0, "DROP TABLE IF EXISTS CalendarAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1543
    const-string v0, "DROP TABLE IF EXISTS ExtendedProperties;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1544
    return-void
.end method

.method private static fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3
    .parameter "time"
    .parameter "timezone"
    .parameter "timeInMillis"

    .prologue
    const/4 v2, 0x0

    .line 732
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 733
    iget v0, p0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->second:I

    if-eqz v0, :cond_1

    .line 734
    :cond_0
    iput v2, p0, Landroid/text/format/Time;->hour:I

    .line 735
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 736
    iput v2, p0, Landroid/text/format/Time;->second:I

    .line 737
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 1686
    if-nez p0, :cond_1

    .line 1687
    const-string v0, "CalendarDatabaseHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Cannot get AllCalendars url from a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v3

    .line 1704
    :goto_0
    return-object v0

    .line 1692
    :cond_1
    const-string v0, "/private/full"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    const-string v0, "/private/full"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1696
    :cond_2
    const-string v0, "/private/free-busy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1697
    const-string v0, "/private/free-busy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1701
    :cond_3
    const-string v0, "CalendarDatabaseHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1702
    const-string v0, "CalendarDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get AllCalendars url from the following url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v3

    .line 1704
    goto :goto_0
.end method

.method private static getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 1722
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 188
    const-class v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 191
    :cond_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 1713
    invoke-static {p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 519
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 523
    .local v0, timezoneDbVersion:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    return-void

    .line 519
    .end local v0           #timezoneDbVersion:Ljava/lang/String;
    :cond_0
    const-string v1, "2009s"

    move-object v0, v1

    goto :goto_0
.end method

.method private recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 724
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 728
    const-string v0, "DELETE FROM Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method private static rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1731
    if-nez p0, :cond_1

    .line 1732
    const-string v0, "CalendarDatabaseHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Cannot rewrite a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_0
    const/4 v0, 0x0

    .line 1743
    :goto_0
    return-object v0

    .line 1737
    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 1738
    goto :goto_0

    .line 1740
    :cond_2
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url parameter, unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, defaultTimezone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 1385
    const-string v5, "DELETE FROM _sync_state;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    const-string v5, "SELECT _sync_account,_sync_account_type,url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1391
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 1393
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1394
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1396
    .local v2, accountType:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1398
    .local v3, calendarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1401
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #calendarUrl:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1404
    :cond_1
    return-void
.end method

.method private upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 236
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 240
    .local v0, version:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, "Upgrading calendar sync state table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "CREATE TEMPORARY TABLE state_backup(_sync_account TEXT, _sync_account_type TEXT, data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v2, "INSERT INTO state_backup SELECT _sync_account, _sync_account_type, data FROM _sync_state WHERE _sync_account is not NULL and _sync_account_type is not NULL;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v2, "DROP TABLE _sync_state;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 250
    const-string v2, "INSERT INTO _sync_state(account_name,account_type,data) SELECT _sync_account, _sync_account_type, data from state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v2, "DROP TABLE state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeSyncState: current version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping upgrade."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 1512
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading DeletedEvents table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1523
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1530
    const-string v0, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1531
    return-void
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter

    .prologue
    .line 1452
    const-string v0, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1471
    const-string v0, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1476
    if-eqz v0, :cond_3

    .line 1478
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1479
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1480
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1483
    const-string v4, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1487
    if-eqz v3, :cond_0

    .line 1495
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1496
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE Events SET originalAllDay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1502
    :cond_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1506
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1502
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1506
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_3
    return-void
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1436
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading CalendarAlerts table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1430
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "adding eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1407
    const-string v0, "ALTER TABLE Calendars ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1409
    const-string v0, "ALTER TABLE Events ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v0, "UPDATE Calendars SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v0, "UPDATE Events SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    const-string v0, "UPDATE DeletedEvents SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1421
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "re-creating eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string v0, "DROP INDEX eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 1338
    const-string v5, "ALTER TABLE Calendars ADD COLUMN ownerAccount TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1340
    const-string v5, "ALTER TABLE Events ADD COLUMN hasAttendeeData INTEGER;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1347
    const-string v5, "UPDATE Events SET _sync_dirty=0, _sync_version=NULL, _sync_id=REPLACE(_sync_id, \'/private/full-selfattendance\', \'/private/full\'),commentsUri=REPLACE(commentsUri, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1357
    const-string v5, "UPDATE Calendars SET url=REPLACE(url, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1362
    const-string v5, "SELECT _id, url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1366
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1368
    :try_start_0
    const-string v3, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    .line 1371
    .local v3, updateSql:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1372
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1373
    .local v1, id:Ljava/lang/Long;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1374
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, owner:Ljava/lang/String;
    const-string v5, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1378
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #owner:Ljava/lang/String;
    .end local v3           #updateSql:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v3       #updateSql:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1381
    .end local v3           #updateSql:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1315
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanModify INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1321
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1324
    const-string v0, "ALTER TABLE Events ADD COLUMN organizer STRING;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1327
    const-string v0, "UPDATE Events SET organizer=(SELECT attendeeEmail FROM Attendees WHERE Attendees.event_id=Events._id AND Attendees.attendeeRelationship=2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1288
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1289
    const-string v0, "CREATE TEMPORARY TABLE CalendarMetaData_Backup(_id,localTimezone,minInstance,maxInstance);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    const-string v0, "INSERT INTO CalendarMetaData_Backup SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1304
    const-string v0, "INSERT INTO CalendarMetaData SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v0, "DROP TABLE CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1254
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1259
    const-string v0, "ALTER TABLE Events ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account= (SELECT _sync_account FROM Calendars   WHERE Calendars._id=new.calendar_id),_sync_account_type= (SELECT _sync_account_type FROM Calendars   WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1267
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1268
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1270
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id=old._id;DELETE FROM EventsRawTimes WHERE event_id=old._id;DELETE FROM Attendees WHERE event_id=old._id;DELETE FROM Reminders WHERE event_id=old._id;DELETE FROM CalendarAlerts WHERE event_id=old._id;DELETE FROM ExtendedProperties WHERE event_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    const-string v0, "DROP TRIGGER IF EXISTS attendees_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string v0, "DROP TRIGGER IF EXISTS attendees_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1276
    const-string v0, "DROP TRIGGER IF EXISTS attendees_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1277
    const-string v0, "DROP TRIGGER IF EXISTS reminders_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1278
    const-string v0, "DROP TRIGGER IF EXISTS reminders_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const-string v0, "DROP TRIGGER IF EXISTS reminders_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1280
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1282
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1285
    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1234
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    const-string v0, "INSERT INTO CalendarCache (key, value) VALUES (\'timezoneDatabaseVersion\',\'2009s\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 1152
    const-string v17, "ALTER TABLE Events ADD COLUMN dtstart2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    const-string v17, "ALTER TABLE Events ADD COLUMN dtend2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1156
    const-string v17, "ALTER TABLE Events ADD COLUMN eventTimezone2 TEXT;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1159
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v17, 0x0

    const-string v18, "0"

    aput-object v18, v4, v17

    .line 1161
    .local v4, allDayBit:[Ljava/lang/String;
    const-string v17, "UPDATE Events SET dtstart2=dtstart,dtend2=dtend,eventTimezone2=eventTimezone WHERE allDay=?;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    const/16 v17, 0x0

    const-string v18, "1"

    aput-object v18, v4, v17

    .line 1170
    const-string v17, "SELECT Events._id,dtstart,dtend,eventTimezone,timezone FROM Events INNER JOIN Calendars WHERE Events.calendar_id=Calendars._id AND allDay=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1182
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1183
    .local v15, oldTime:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1185
    .local v14, newTime:Landroid/text/format/Time;
    if-eqz v5, :cond_2

    .line 1187
    const/16 v17, 0x4

    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1188
    .local v13, newData:[Ljava/lang/String;
    const/16 v17, -0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1189
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1190
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1191
    .local v11, id:J
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1192
    .local v8, dtstart:J
    const/16 v17, 0x2

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1193
    .local v6, dtend:J
    const/16 v17, 0x3

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1194
    .local v10, eTz:Ljava/lang/String;
    const/16 v17, 0x4

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1196
    .local v16, tz:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1197
    const-string v10, "UTC"

    .line 1201
    :cond_0
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v15, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1203
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1204
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 1205
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1206
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 1209
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v15, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1211
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1212
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 1213
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1214
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1216
    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1217
    const/16 v17, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1218
    const/16 v17, 0x2

    aput-object v16, v13, v17

    .line 1219
    const/16 v17, 0x3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1220
    const-string v17, "UPDATE Events SET dtstart2=?, dtend2=?, eventTimezone2=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1228
    .end local v6           #dtend:J
    .end local v8           #dtstart:J
    .end local v10           #eTz:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #newData:[Ljava/lang/String;
    .end local v16           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v17

    .restart local v13       #newData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1231
    .end local v13           #newData:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1147
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1148
    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1141
    const-string v0, "ALTER TABLE Events ADD COLUMN syncAdapterData TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method private upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1136
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1137
    return-void
.end method

.method private upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1129
    const-string v0, "ALTER TABLE Calendars ADD COLUMN organizerCanRespond INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method static upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "db"

    .prologue
    .line 957
    const-string v0, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    .line 968
    .local v0, sql:Ljava/lang/String;
    const-string v0, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    .end local v0           #sql:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 969
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 978
    :try_start_0
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 981
    .local v7, time:Landroid/text/format/Time;
    const-string v1, "UTC"

    .line 982
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 983
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, rrule:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 985
    .local v6, id:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 986
    .local v3, dtstart:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 987
    .local v4, dtstart2:Ljava/lang/Long;
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 988
    .local v8, timezone:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 989
    .local v9, timezone2:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 991
    .local v5, duration:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #rrule:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 994
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 995
    .local v1, dtend:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 998
    .local v2, dtend2:Ljava/lang/Long;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 999
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .end local v2           #dtend2:Ljava/lang/Long;
    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1000
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1003
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_0
    const/4 v10, 0x0

    .line 1004
    .local v10, update:Z
    const-string v11, "UTC"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1005
    const/4 v10, 0x1

    .line 1006
    const-string v8, "UTC"

    .line 1009
    :cond_1
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1010
    invoke-static {v7, v8, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v10, v3

    .line 1011
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1013
    .restart local v3       #dtstart:Ljava/lang/Long;
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1014
    invoke-static {v7, v8, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtend:Ljava/lang/Long;
    or-int/2addr v10, v1

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1017
    .restart local v1       #dtend:Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 1018
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1019
    invoke-static {v7, v9, v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    or-int/2addr v10, v4

    .line 1020
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1023
    .restart local v4       #dtstart2:Ljava/lang/Long;
    :cond_2
    if-eqz v2, :cond_3

    .line 1024
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1025
    invoke-static {v7, v9, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v2

    .end local v2           #dtend2:Ljava/lang/Long;
    or-int/2addr v10, v2

    .line 1026
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1029
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1030
    const/4 v10, 0x1

    .line 1033
    :cond_4
    if-eqz v10, :cond_5

    .line 1035
    const-string v11, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?, eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v1, 0x2

    aput-object v4, v12, v1

    .end local v1           #dtend:Ljava/lang/Long;
    const/4 v1, 0x3

    aput-object v2, v12, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v12, v1

    .end local v2           #dtend2:Ljava/lang/Long;
    const/4 v1, 0x5

    aput-object v8, v12, v1

    const/4 v1, 0x6

    aput-object v9, v12, v1

    const/4 v1, 0x7

    aput-object v6, v12, v1

    invoke-virtual {p0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v2, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    move-object v1, v3

    .end local v3           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v3, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v5, v10

    .line 1056
    .end local v10           #update:Z
    .local v5, update:Z
    goto/16 :goto_0

    .line 1060
    .end local v1           #dtstart:Ljava/lang/Long;
    .end local v2           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart:Ljava/lang/Long;
    .local v4, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1061
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1064
    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v1, dtstart2:Ljava/lang/Long;
    :goto_1
    const/4 v2, 0x0

    .line 1065
    .local v2, update:Z
    const-string v4, "UTC"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1066
    const/4 v4, 0x1

    .line 1067
    .end local v2           #update:Z
    .local v4, update:Z
    const-string v2, "UTC"

    .end local v8           #timezone:Ljava/lang/String;
    .local v2, timezone:Ljava/lang/String;
    move v14, v4

    .end local v4           #update:Z
    .local v14, update:Z
    move-object v4, v2

    .end local v2           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v2, v14

    .line 1070
    .end local v14           #update:Z
    .local v2, update:Z
    :goto_2
    invoke-virtual {v7, v4}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1071
    invoke-static {v7, v4, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v3, v2

    .line 1072
    .end local v2           #update:Z
    .local v3, update:Z
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1074
    .local v2, dtstart:Ljava/lang/Long;
    if-eqz v1, :cond_c

    .line 1075
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1076
    invoke-static {v7, v9, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    or-int/2addr v3, v1

    .line 1077
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1       #dtstart2:Ljava/lang/Long;
    move v8, v3

    .end local v3           #update:Z
    .local v8, update:Z
    move-object v3, v1

    .line 1080
    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1082
    const-string v1, "P1D"

    .line 1083
    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .line 1096
    .end local v8           #update:Z
    .local v5, update:Z
    :goto_4
    if-eqz v5, :cond_7

    .line 1098
    const-string v8, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?,eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v1, v10, v11

    const/4 v11, 0x5

    aput-object v4, v10, v11

    const/4 v11, 0x6

    aput-object v9, v10, v11

    const/4 v9, 0x7

    aput-object v6, v10, v9

    .end local v9           #timezone2:Ljava/lang/String;
    invoke-virtual {p0, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v14, v3

    .end local v3           #dtstart2:Ljava/lang/Long;
    .local v14, dtstart2:Ljava/lang/Long;
    move-object v3, v1

    .end local v1           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v2, v14

    .end local v14           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    goto/16 :goto_0

    .line 1085
    .end local v1           #dtstart:Ljava/lang/Long;
    .local v2, dtstart:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1087
    .local v1, len:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x50

    if-ne v10, v11, :cond_b

    const/4 v10, 0x1

    sub-int v10, v1, v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_b

    .line 1089
    const/4 v8, 0x1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #len:I
    .end local v8           #update:Z
    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1090
    .local v1, seconds:I
    const v5, 0x15180

    add-int/2addr v1, v5

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    const v5, 0x15180

    div-int/2addr v1, v5

    .line 1091
    .end local v5           #duration:Ljava/lang/String;
    .local v1, days:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #days:I
    const-string v5, "D"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1092
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, update:Z
    goto :goto_4

    .line 1121
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #dtstart:Ljava/lang/Long;
    .end local v3           #dtstart2:Ljava/lang/Long;
    .end local v4           #timezone:Ljava/lang/String;
    .end local v5           #update:Z
    .end local v6           #id:Ljava/lang/Long;
    .end local v9           #timezone2:Ljava/lang/String;
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1124
    .end local v7           #time:Landroid/text/format/Time;
    :cond_a
    return-void

    .line 1121
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .local v1, len:I
    .restart local v2       #dtstart:Ljava/lang/Long;
    .restart local v3       #dtstart2:Ljava/lang/Long;
    .restart local v4       #timezone:Ljava/lang/String;
    .local v5, duration:Ljava/lang/String;
    .restart local v6       #id:Ljava/lang/Long;
    .restart local v7       #time:Landroid/text/format/Time;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    .restart local p0
    :cond_b
    move-object v1, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    move v5, v8

    .end local v8           #update:Z
    .local v5, update:Z
    goto :goto_4

    .local v1, dtstart2:Ljava/lang/Long;
    .local v3, update:Z
    .local v5, duration:Ljava/lang/String;
    :cond_c
    move v8, v3

    .end local v3           #update:Z
    .restart local v8       #update:Z
    move-object v3, v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    goto/16 :goto_3

    .end local v4           #timezone:Ljava/lang/String;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    .local v2, update:Z
    .local v3, dtstart:Ljava/lang/Long;
    .local v8, timezone:Ljava/lang/String;
    :cond_d
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .restart local v4       #timezone:Ljava/lang/String;
    goto/16 :goto_2

    .end local v1           #dtstart2:Ljava/lang/Long;
    .end local v2           #update:Z
    .local v4, dtstart2:Ljava/lang/Long;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_e
    move-object v1, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    goto/16 :goto_1
.end method


# virtual methods
.method public attendeesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public extendedPropertiesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1548
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1549
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 1548
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public instancesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public instancesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 267
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 212
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 213
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 214
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 215
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 216
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 217
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 218
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 220
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v10, 0x42

    const/16 v9, 0x3b

    const/16 v8, 0x38

    const/16 v7, 0x37

    const/16 v6, 0x33

    .line 569
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading DB from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v3, 0x31

    if-ge p2, v3, :cond_1

    .line 572
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 573
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    if-lt p2, v9, :cond_20

    if-gt p2, v10, :cond_20

    const/4 v3, 0x1

    move v2, v3

    .line 586
    .local v2, recreateMetaDataAndInstances:Z
    :goto_1
    if-ge p2, v6, :cond_2

    .line 587
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 588
    const/16 p2, 0x33

    .line 590
    :cond_2
    if-ne p2, v6, :cond_3

    .line 591
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 592
    add-int/lit8 p2, p2, 0x1

    .line 594
    :cond_3
    const/16 v3, 0x34

    if-ne p2, v3, :cond_4

    .line 595
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    add-int/lit8 p2, p2, 0x1

    .line 598
    :cond_4
    const/16 v3, 0x35

    if-ne p2, v3, :cond_5

    .line 599
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 600
    add-int/lit8 p2, p2, 0x1

    .line 602
    :cond_5
    const/16 v3, 0x36

    if-ne p2, v3, :cond_6

    .line 603
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 604
    add-int/lit8 p2, p2, 0x1

    .line 606
    :cond_6
    if-eq p2, v7, :cond_7

    if-ne p2, v8, :cond_8

    .line 608
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 610
    :cond_8
    if-ne p2, v7, :cond_9

    .line 611
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 612
    add-int/lit8 p2, p2, 0x1

    .line 614
    :cond_9
    if-ne p2, v8, :cond_a

    .line 615
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 616
    add-int/lit8 p2, p2, 0x1

    .line 618
    :cond_a
    const/16 v3, 0x39

    if-ne p2, v3, :cond_b

    .line 620
    add-int/lit8 p2, p2, 0x1

    .line 622
    :cond_b
    const/16 v3, 0x3a

    if-ne p2, v3, :cond_c

    .line 623
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 624
    add-int/lit8 p2, p2, 0x1

    .line 626
    :cond_c
    if-ne p2, v9, :cond_d

    .line 627
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 628
    add-int/lit8 p2, p2, 0x1

    .line 630
    :cond_d
    const/16 v3, 0x3c

    if-ne p2, v3, :cond_e

    .line 631
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 632
    add-int/lit8 p2, p2, 0x1

    .line 634
    :cond_e
    const/16 v3, 0x3d

    if-ne p2, v3, :cond_f

    .line 635
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 636
    add-int/lit8 p2, p2, 0x1

    .line 638
    :cond_f
    const/16 v3, 0x3e

    if-ne p2, v3, :cond_10

    .line 639
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 640
    add-int/lit8 p2, p2, 0x1

    .line 642
    :cond_10
    const/16 v3, 0x3f

    if-ne p2, v3, :cond_11

    .line 643
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 644
    add-int/lit8 p2, p2, 0x1

    .line 646
    :cond_11
    const/16 v3, 0x40

    if-ne p2, v3, :cond_12

    .line 647
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 648
    add-int/lit8 p2, p2, 0x1

    .line 650
    :cond_12
    const/16 v3, 0x41

    if-ne p2, v3, :cond_13

    .line 651
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 652
    add-int/lit8 p2, p2, 0x1

    .line 654
    :cond_13
    if-ne p2, v10, :cond_14

    .line 656
    add-int/lit8 p2, p2, 0x1

    .line 658
    :cond_14
    if-eqz v2, :cond_15

    .line 659
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 661
    :cond_15
    const/16 v3, 0x43

    if-eq p2, v3, :cond_16

    const/16 v3, 0x44

    if-ne p2, v3, :cond_17

    .line 662
    :cond_16
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 663
    const/16 p2, 0x45

    .line 669
    :cond_17
    const/16 v3, 0x45

    if-ne p2, v3, :cond_18

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 671
    const/16 p2, 0xc8

    .line 673
    :cond_18
    const/16 v3, 0x46

    if-ne p2, v3, :cond_19

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 675
    const/16 p2, 0xc8

    .line 677
    :cond_19
    const/16 v3, 0x64

    if-ne p2, v3, :cond_1a

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 679
    const/16 p2, 0xc8

    .line 681
    :cond_1a
    const/4 v1, 0x1

    .line 682
    .local v1, need203Update:Z
    const/16 v3, 0x65

    if-ne p2, v3, :cond_1b

    .line 683
    const/16 p2, 0xc8

    .line 685
    const/4 v1, 0x0

    .line 687
    :cond_1b
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_1c

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 689
    add-int/lit8 p2, p2, 0x1

    .line 691
    :cond_1c
    const/16 v3, 0xc9

    if-ne p2, v3, :cond_1d

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 693
    add-int/lit8 p2, p2, 0x1

    .line 695
    :cond_1d
    const/16 v3, 0xca

    if-ne p2, v3, :cond_1e

    if-eqz v1, :cond_1e

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 697
    add-int/lit8 p2, p2, 0x1

    .line 699
    :cond_1e
    const/16 v3, 0xcb

    if-ne p2, v3, :cond_1f

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion204(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 701
    add-int/lit8 p2, p2, 0x1

    .line 703
    :cond_1f
    const/16 v3, 0xcc

    if-eq p2, v3, :cond_0

    .line 704
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to recreate Calendar schema because of unknown Calendar database version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    const/16 p2, 0xcc

    goto/16 :goto_0

    .line 583
    .end local v1           #need203Update:Z
    .end local v2           #recreateMetaDataAndInstances:Z
    :cond_20
    const/4 v3, 0x0

    move v2, v3

    goto/16 :goto_1

    .line 710
    .restart local v2       #recreateMetaDataAndInstances:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 711
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CalendarDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 713
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public remindersInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1566
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1567
    if-eqz p2, :cond_0

    .line 1568
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1570
    :cond_0
    if-eqz p3, :cond_1

    .line 1571
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1574
    :cond_1
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1575
    return-void
.end method

.method upgradeToVersion200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 853
    const-string v8, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 856
    const-string v8, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 860
    const-string v8, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, 0, url FROM Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    const-string v4, "SELECT _id, url FROM Calendars_Backup WHERE _sync_account_type=\'com.google\' AND url IS NOT NULL;"

    .line 914
    .local v4, selectSql:Ljava/lang/String;
    const-string v6, "UPDATE Calendars SET sync2=?, sync3=? WHERE _id=?;"

    .line 919
    .local v6, updateSql:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 920
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 922
    const/4 v8, 0x3

    :try_start_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 924
    .local v0, bindArgs:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 925
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 926
    .local v3, id:Ljava/lang/Long;
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, url:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 928
    .local v5, selfUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, editUrl:Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v2, v0, v8

    .line 931
    const/4 v8, 0x1

    aput-object v5, v0, v8

    .line 932
    const/4 v8, 0x2

    aput-object v3, v0, v8

    .line 934
    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v2           #editUrl:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/Long;
    .end local v5           #selfUrl:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v0       #bindArgs:[Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 942
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :cond_1
    const-string v8, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 946
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 947
    return-void
.end method

.method upgradeToVersion201(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 845
    const-string v0, "ALTER TABLE Calendars ADD COLUMN sync4 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 773
    const-string v0, "ALTER TABLE Calendars RENAME TO Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 776
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 781
    const-string v0, "INSERT INTO Calendars (_id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4, sync5) SELECT _id, _sync_account, _sync_account_type, _sync_id, _sync_version, _sync_time, _sync_local_id, _sync_dirty, _sync_mark, name, displayName, color, access_level, selected, sync_events, location, timezone, ownerAccount, organizerCanRespond, deleted, sync1, sync2, sync3, sync4 hidden FROM Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 837
    const-string v0, "DROP TABLE Calendars_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 841
    return-void
.end method

.method upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 751
    const-string v2, "SELECT value FROM CalendarCache WHERE key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "timezoneDatabaseVersion"

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 754
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 755
    .local v1, oldTimezoneDbVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 759
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 762
    const-string v2, "DELETE FROM CalendarCache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 767
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 768
    return-void

    .line 759
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method upgradeToVersion204(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 745
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    return-void
.end method
