.class public Lcom/android/providers/calendar/CalendarProvider2;
.super Lcom/android/providers/calendar/SQLiteContentProvider;
.source "CalendarProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;,
        Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;,
        Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    }
.end annotation


# static fields
.field private static final ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

.field private static final EVENTS_PROJECTION:[Ljava/lang/String;

.field private static final EXPAND_COLUMNS:[Ljava/lang/String;

.field private static final ID_ONLY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri;

.field private static final SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

.field private static mInstance:Lcom/android/providers/calendar/CalendarProvider2;

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarCacheProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field private static final sCountProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEventEntitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEventsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstancesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Lcom/android/providers/calendar/CalendarAlarmManager;

.field private final mBroadcastHandler:Landroid/os/Handler;

.field mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;

.field private final mNeedRemoveAlarms:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v2

    const-string v1, "rrule"

    aput-object v1, v0, v4

    const-string v1, "rdate"

    aput-object v1, v0, v5

    const-string v1, "originalEvent"

    aput-object v1, v0, v3

    const-string v1, "_sync_account_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 124
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "event_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "dtstart"

    aput-object v1, v0, v4

    const-string v1, "dtend"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    .line 164
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 316
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 362
    const-string v0, "[^\\s\"\'.?!,]+|\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    .line 379
    const-string v0, "([%_#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    .line 396
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "description"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "group_concat(attendeeEmail)"

    aput-object v1, v0, v3

    const-string v1, "group_concat(attendeeName)"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 1368
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "eventStatus"

    aput-object v1, v0, v5

    const-string v1, "dtstart"

    aput-object v1, v0, v3

    const-string v1, "dtend"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    .line 4018
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4029
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/when/*/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4030
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/whenbyday/*/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4031
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/search/*/*/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4032
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/searchbyday/*/*/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4034
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/groupbyday/*/*"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4035
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4036
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4037
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4038
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4039
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4040
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4041
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4042
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4043
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "deleted_events"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4044
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4045
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4046
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4047
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4048
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4049
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4050
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4051
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4052
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/by_instance"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4054
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4055
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4056
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4057
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms_remove"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4058
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4059
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4060
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "properties"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    .line 4064
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 4068
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4069
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4070
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4071
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4072
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4073
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4074
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4075
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4076
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4077
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4083
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4085
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4090
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4093
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4094
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4095
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4096
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4097
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4098
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 4102
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 4105
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4106
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "access_level"

    const-string v2, "access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4107
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selected"

    const-string v2, "selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4108
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4109
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "timezone"

    const-string v2, "timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4110
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4115
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 4116
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 4118
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4119
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_time"

    const-string v2, "_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4122
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account"

    const-string v2, "_sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account_type"

    const-string v2, "_sync_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    .line 4129
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4130
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4134
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4137
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4138
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4141
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4142
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4146
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4147
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4159
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4163
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "syncAdapterData"

    const-string v2, "syncAdapterData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted as deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "Instances.event_id AS event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Instances._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4174
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4176
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Attendees._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4182
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4183
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4184
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Reminders._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4192
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4199
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4201
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    .line 4205
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4207
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;-><init>()V

    .line 262
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 263
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNeedRemoveAlarms:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    .line 431
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    .line 451
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$2;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$2;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->doSendUpdateNotification()V

    return-void
.end method

.method private acquireInstanceRange(JJZZLjava/lang/String;Z)V
    .locals 2
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1243
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1249
    return-void

    .line 1247
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1264
    .line 1267
    if-nez p7, :cond_1

    .line 1268
    const-string v2, "CalendarProvider2"

    const-string v3, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    if-eqz p5, :cond_c

    .line 1276
    sub-long v2, p3, p1

    .line 1277
    const-wide v4, 0x13f4a4800L

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    .line 1278
    const-wide v4, 0x13f4a4800L

    sub-long v2, v4, v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1279
    sub-long v4, p1, v2

    .line 1280
    add-long v2, v2, p3

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v3, v18

    move-wide/from16 v5, v16

    .line 1287
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v2

    .line 1288
    iget-wide v14, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 1289
    iget-wide v11, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 1291
    if-eqz p8, :cond_5

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v2

    .line 1293
    move-object/from16 v0, p7

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v7, p7

    .line 1304
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-eqz v8, :cond_2

    if-nez v2, :cond_2

    if-eqz p6, :cond_7

    .line 1306
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "DELETE FROM Instances;"

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1307
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1308
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v2, p0

    .line 1311
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v8, v0

    move-object v9, v7

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v8 .. v13}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v2

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3, v7}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 1322
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v2

    .line 1324
    const-string v3, "GMT"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1293
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1295
    :cond_5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 1296
    move-object/from16 v0, p7

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    .line 1298
    :goto_4
    if-eqz v7, :cond_b

    move/from16 v16, v7

    move-object v7, v2

    move/from16 v2, v16

    .line 1299
    goto/16 :goto_3

    .line 1296
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 1342
    :cond_7
    cmp-long v2, p1, v11

    if-ltz v2, :cond_8

    cmp-long v2, p3, v14

    if-gtz v2, :cond_8

    .line 1343
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canceled instance query ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") falls within previously expanded range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1352
    :cond_8
    cmp-long v2, p1, v11

    if-gez v2, :cond_a

    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v13, v7

    .line 1353
    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    move-wide v8, v3

    .line 1359
    :goto_5
    cmp-long v2, p3, v14

    if-lez v2, :cond_9

    move-object/from16 v2, p0

    move-wide v3, v14

    .line 1360
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    move-wide v10, v5

    .line 1365
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :cond_9
    move-wide v10, v14

    goto :goto_6

    :cond_a
    move-wide v8, v11

    goto :goto_5

    :cond_b
    move v2, v7

    move-object/from16 v7, p7

    goto/16 :goto_3

    :cond_c
    move-wide/from16 v5, p3

    move-wide/from16 v3, p1

    goto/16 :goto_1
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3506
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3508
    const-string v1, "account_type"

    invoke-static {p2, v1}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3510
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_sync_account_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3518
    :goto_0
    return-void

    .line 3516
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3521
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3523
    const-string v1, "account_type"

    invoke-static {p1, v1}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3526
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_sync_account_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3530
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3531
    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3535
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3537
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1839
    invoke-virtual {p5, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1840
    iget-wide v0, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1841
    iget v1, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p5, Landroid/text/format/Time;->minute:I

    add-int/2addr v1, v2

    .line 1843
    invoke-virtual {p5, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 1844
    iget-wide v2, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1845
    iget v3, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p5, Landroid/text/format/Time;->minute:I

    add-int/2addr v3, v4

    .line 1851
    if-nez v3, :cond_0

    if-le v2, v0, :cond_0

    .line 1852
    const/16 v3, 0x5a0

    .line 1853
    add-int/lit8 v2, v2, -0x1

    move v5, v3

    move v3, v2

    move v2, v5

    .line 1856
    :goto_0
    const-string v4, "startDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1857
    const-string v0, "endDay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    const-string v0, "startMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    const-string v0, "endMinute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1860
    return-void

    :cond_0
    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0
.end method

.method private createAttendeeEntry(JILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2323
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2324
    const-string v1, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2325
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2328
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2330
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    .line 2335
    return-void
.end method

.method private deleteEventInternal(JZZ)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2936
    const/4 v8, 0x0

    .line 2937
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2940
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2945
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2946
    const/4 v1, 0x1

    .line 2947
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2948
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2950
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2951
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.asus.pcsync"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    .line 2952
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "com.android.exchange"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 2957
    :goto_1
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2958
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2959
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2960
    invoke-static {v7, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2961
    iget-object v8, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v8}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V

    .line 2965
    :cond_0
    if-nez v3, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v6, :cond_1

    if-eqz v5, :cond_2

    .line 2970
    :cond_1
    const-string v5, "CalendarProvider2"

    const-string v7, "delete related exception events"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Events"

    const-string v8, "originalEvent=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2976
    :cond_2
    if-nez p3, :cond_3

    if-nez v3, :cond_3

    if-eqz v6, :cond_7

    .line 2977
    :cond_3
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v5, "_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2995
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2999
    if-nez p4, :cond_4

    .line 3000
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3001
    invoke-direct {p0, p3}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    .line 3003
    :cond_4
    return v1

    .line 2951
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 2952
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 2979
    :cond_7
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2980
    const-string v3, "deleted"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2981
    const-string v3, "_sync_dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2982
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Events"

    const-string v6, "_id=?"

    invoke-virtual {v3, v5, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2986
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Instances"

    const-string v5, "event_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2987
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "EventsRawTimes"

    const-string v5, "event_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2988
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v5, "event_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2989
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v5, "event_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2990
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v5, "event_id=?"

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2995
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2996
    throw v1

    :cond_8
    move v1, v8

    goto :goto_2
.end method

.method private deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3016
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3017
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3018
    const-string v2, "_sync_dirty"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v6

    .line 3021
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3022
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3023
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3024
    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v7, p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3025
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {v3, v4, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    add-int/lit8 v2, v2, 0x1

    .line 3028
    goto :goto_0

    .line 3030
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3032
    return v2

    .line 3030
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 3070
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3075
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 3086
    :goto_0
    return v0

    .line 3079
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3080
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3081
    .local v9, id:J
    const/4 v0, 0x0

    invoke-direct {p0, v9, v10, v0}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3084
    .end local v9           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3086
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private doSendUpdateNotification()V
    .locals 4

    .prologue
    .line 3980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    sget-object v2, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3982
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3983
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending notification intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3986
    return-void
.end method

.method private doesEventExistForSyncId(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3100
    if-nez p1, :cond_1

    .line 3101
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3102
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncID cannot be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v4

    .line 3108
    :goto_0
    return v0

    .line 3106
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 3108
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private doesStatusCancelUpdateMeanUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3122
    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v5

    .line 3124
    :goto_0
    if-eqz v0, :cond_5

    .line 3125
    const/4 v0, 0x0

    .line 3127
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rrule"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rdate"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "originalEvent"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getCursorForEventIdAndProjection(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3129
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3130
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3131
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find Event with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3147
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 3151
    :goto_1
    return v0

    :cond_1
    move v0, v4

    .line 3122
    goto :goto_0

    .line 3135
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3136
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3137
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3139
    invoke-static {v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    .line 3143
    :goto_2
    if-eqz v1, :cond_4

    .line 3144
    invoke-direct {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->doesEventExistForSyncId(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    .line 3147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 3139
    goto :goto_2

    .line 3147
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v5

    .line 3151
    goto :goto_1

    .line 3147
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method private expandInstanceRangeLocked(JJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1396
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding events between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1402
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    if-eqz v6, :cond_1

    .line 1405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_1
    return-void

    .line 1404
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1910
    const/4 v6, 0x0

    .line 1911
    const-string v0, "allDay"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "allDay"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1913
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 1914
    const-string v0, "dtend"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1915
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1916
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1917
    const/4 v0, 0x0

    .line 1922
    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 1924
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1925
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1930
    if-eqz v0, :cond_2

    .line 1931
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1936
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1937
    const/4 v0, 0x0

    .line 1946
    :cond_2
    if-nez v7, :cond_e

    .line 1947
    if-eqz v0, :cond_6

    .line 1950
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1952
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1962
    :goto_0
    const-string v2, "UTC"

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1964
    iget v1, v10, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_3

    iget v1, v10, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_3

    iget v1, v10, Landroid/text/format/Time;->second:I

    if-eqz v1, :cond_d

    .line 1965
    :cond_3
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1966
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1967
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1968
    const-string v1, "dtstart"

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1969
    const/4 v1, 0x1

    .line 1973
    :goto_1
    if-nez v8, :cond_c

    if-eqz v0, :cond_c

    .line 1976
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1978
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1983
    :goto_2
    if-eqz v2, :cond_b

    .line 1984
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1985
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1986
    iget v3, v10, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_4

    iget v3, v10, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_4

    iget v3, v10, Landroid/text/format/Time;->second:I

    if-eqz v3, :cond_b

    .line 1987
    :cond_4
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1988
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1989
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1990
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1991
    const-string v2, "dtend"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1992
    const/4 v2, 0x1

    .line 1996
    :goto_3
    if-eqz v0, :cond_a

    .line 1997
    if-nez v9, :cond_9

    .line 1998
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2000
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 2003
    :goto_5
    if-eqz v0, :cond_5

    .line 2004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2008
    if-nez v3, :cond_7

    .line 2009
    const/4 v0, 0x0

    .line 2020
    :cond_5
    :goto_6
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 2021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1953
    :catch_0
    move-exception v1

    .line 1954
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event has no DTSTART field, the db may be damaged. Set DTSTART for this event to fix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1959
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTSTART cannot be empty for new events."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1979
    :catch_1
    move-exception v2

    .line 1980
    const/4 v2, 0x0

    goto :goto_2

    .line 2010
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    sub-int v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_5

    .line 2012
    const/4 v2, 0x1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2013
    const v2, 0x15180

    add-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const v2, 0x15180

    div-int/2addr v0, v2

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2015
    const-string v2, "duration"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    move v0, v2

    .line 2025
    :goto_7
    return v0

    :cond_9
    move-object v3, v9

    goto :goto_4

    :cond_a
    move-object v0, v9

    goto :goto_5

    :cond_b
    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_3

    :cond_c
    move-object v2, v8

    goto/16 :goto_2

    :cond_d
    move v1, v6

    goto/16 :goto_1

    :cond_e
    move-object v1, v7

    goto/16 :goto_0

    :cond_f
    move v0, v6

    goto :goto_7
.end method

.method private get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "timezone"
    .parameter "dt2445"

    .prologue
    const-wide/16 v5, 0x0

    .line 695
    if-nez p2, :cond_1

    .line 696
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    const-string v2, "CalendarProvider2"

    const-string v3, "Cannot parse null RFC2445 date"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v2, v5

    .line 710
    :goto_0
    return-wide v2

    .line 701
    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 703
    .local v1, time:Landroid/text/format/Time;
    :goto_1
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 701
    .end local v1           #time:Landroid/text/format/Time;
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object v1, v2

    goto :goto_1

    .line 704
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 706
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse RFC2445 date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v2, v5

    .line 708
    goto :goto_0
.end method

.method private getCursorForEventIdAndProjection(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "eventId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 3090
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    const-string v3, "_id=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 1420
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1421
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1422
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1424
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1425
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1435
    const-string v4, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != 0)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1436
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v8

    const/4 v1, 0x3

    const-wide/32 v5, 0x240c8400

    sub-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1438
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1441
    const-string v1, "CalendarProvider2"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance expansion:  got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    return-object v0
.end method

.method protected static getInstance()Lcom/android/providers/calendar/CalendarProvider2;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    return-object v0
.end method

.method private getOwner(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2282
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2283
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Id is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v6

    .line 2309
    :goto_0
    return-object v0

    .line 2292
    :cond_1
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2297
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2298
    :cond_2
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2299
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Calendars table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2305
    :cond_3
    if-eqz v0, :cond_4

    .line 2306
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 2303
    :cond_5
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 2305
    if-eqz v0, :cond_6

    .line 2306
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v1

    .line 2309
    goto :goto_0

    .line 2305
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_7

    .line 2306
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2305
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2544
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2546
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2547
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2549
    if-nez p1, :cond_1

    .line 2550
    const-string v1, "_id=?"

    .line 2551
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2552
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move-object v4, v1

    .line 2558
    :goto_0
    const-string v1, "CalendarProvider2"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2559
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving events to expand: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2554
    :cond_1
    const-string v1, "_sync_id=? OR originalEvent=?"

    .line 2555
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2556
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p1, v1, v2

    move-object v4, v1

    goto :goto_0
.end method

.method private getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    const-string v0, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1212
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 1216
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 1218
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1220
    const-string v0, "startDay<=? AND endDay>=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1221
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1223
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "startDay"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    const-string v2, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1033
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1034
    if-eqz p9, :cond_0

    .line 1037
    new-instance v2, Landroid/text/format/Time;

    move-object v0, v2

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1038
    long-to-int v3, p2

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 1041
    long-to-int v5, p4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 1043
    const/4 v7, 0x1

    move-object v2, p0

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1045
    const-string v2, "startDay<=? AND endDay>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1052
    :goto_0
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1054
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1048
    :cond_0
    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1050
    const-string v2, "begin<=? AND end>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    const-string v2, "(Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)) LEFT OUTER JOIN Attendees ON (Attendees.event_id=Events._id)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1162
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1164
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 1165
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;

    move-result-object v11

    .line 1168
    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1170
    if-eqz p10, :cond_0

    .line 1173
    new-instance v2, Landroid/text/format/Time;

    move-object v0, v2

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1174
    long-to-int v3, p2

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 1177
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 1181
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1187
    const-string v2, "startDay<=? AND endDay>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1201
    :goto_0
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "_id"

    move-object v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v11

    move-object v8, v12

    move-object/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1192
    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1198
    const-string v2, "begin<=? AND end>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initialize()Z
    .locals 3

    .prologue
    .line 530
    sput-object p0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    .line 532
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 533
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    .line 535
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 536
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 541
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    new-instance v1, Lcom/android/providers/calendar/MetaData;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 552
    new-instance v1, Lcom/android/providers/calendar/CalendarCache;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 554
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 556
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    .line 558
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->postInitialize()V

    .line 560
    const/4 v1, 0x1

    return v1
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4280
    if-nez p1, :cond_0

    .line 4281
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 4287
    :goto_0
    return-object v2

    .line 4283
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 4284
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 4285
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 4286
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 4287
    goto :goto_0
.end method

.method private isHomeTimezone()Z
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, type:Ljava/lang/String;
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isLocalSameAsInstancesTimezone()Z
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, localTimezone:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "rrule"
    .parameter "rdate"
    .parameter "originalEvent"

    .prologue
    .line 1894
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyCalendarSubscription(JZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3544
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_sync_account"

    aput-object v0, v2, v6

    const-string v0, "_sync_account_type"

    aput-object v0, v2, v7

    const-string v0, "sync1"

    aput-object v0, v2, v4

    const-string v0, "sync_events"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3554
    if-eqz v0, :cond_6

    .line 3556
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3557
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3558
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3559
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3561
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    :goto_0
    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 3564
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    .line 3568
    :goto_2
    if-nez v2, :cond_2

    .line 3570
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3571
    const-string v0, "CalendarProvider2"

    const-string v1, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v6

    .line 3561
    goto :goto_0

    .line 3564
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3577
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 3583
    :cond_3
    if-eq v0, p3, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez p3, :cond_4

    move v3, v7

    :goto_4
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_4

    :cond_5
    move v1, v6

    move-object v2, v3

    move-object v4, v3

    goto :goto_1

    :cond_6
    move v0, v6

    move-object v1, v3

    move-object v2, v3

    goto :goto_2
.end method

.method private performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 45
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1469
    new-instance v5, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v5}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 1472
    const-string v6, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 1474
    const-string v6, "eventStatus"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1475
    const-string v6, "dtstart"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1476
    const-string v6, "dtend"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1477
    const-string v6, "eventTimezone"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1478
    const-string v6, "duration"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1479
    const-string v6, "rrule"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1480
    const-string v6, "rdate"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1481
    const-string v6, "exrule"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1482
    const-string v6, "exdate"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1483
    const-string v6, "allDay"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1484
    const-string v6, "_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1485
    const-string v6, "_sync_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1486
    const-string v6, "originalEvent"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1487
    const-string v6, "originalInstanceTime"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1488
    const-string v6, "calendar_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1489
    const-string v6, "deleted"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1492
    new-instance v30, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;

    invoke-direct/range {v30 .. v30}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;-><init>()V

    .line 1494
    new-instance v31, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v31 .. v31}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 1495
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1510
    :cond_0
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1514
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move v12, v7

    .line 1516
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1517
    if-nez v12, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1521
    :cond_1
    const-string v7, "UTC"

    move-object v10, v7

    .line 1524
    :goto_2
    move-object/from16 v0, p6

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1525
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1527
    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 1528
    if-eqz v7, :cond_1f

    .line 1530
    :try_start_1
    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v11, v7

    .line 1547
    :goto_3
    :try_start_2
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1548
    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1550
    const-wide/16 v35, -0x1

    .line 1551
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1552
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1554
    :cond_2
    move-object/from16 v0, p6

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1555
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    move/from16 v38, v7

    .line 1557
    :goto_4
    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1558
    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1559
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1560
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1561
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1562
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v44

    .line 1566
    :try_start_3
    new-instance v7, Landroid/pim/RecurrenceSet;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1574
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1577
    const/4 v13, 0x2

    move/from16 v0, v37

    move v1, v13

    if-ne v0, v1, :cond_6

    .line 1579
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1580
    const-string v7, "CalendarProvider2"

    const-string v8, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/providers/calendar/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1718
    :catch_0
    move-exception v7

    .line 1719
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1720
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1514
    :cond_3
    const/4 v7, 0x0

    move v12, v7

    goto/16 :goto_1

    .line 1532
    :catch_1
    move-exception v11

    .line 1533
    :try_start_5
    const-string v13, "CalendarProvider2"

    const/16 v33, 0x6

    move-object v0, v13

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1534
    const-string v13, "CalendarProvider2"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "error parsing duration for event "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v33, "\'"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1538
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1539
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1540
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1541
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1542
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1543
    const-string v7, "+P0S"

    move-object v11, v7

    goto/16 :goto_3

    .line 1555
    :cond_5
    const/4 v7, 0x0

    move/from16 v38, v7

    goto/16 :goto_4

    .line 1567
    :catch_2
    move-exception v7

    .line 1568
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1569
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse RRULE recurrence string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/providers/calendar/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1722
    :catch_3
    move-exception v7

    .line 1723
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1724
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1585
    :cond_6
    if-eqz v38, :cond_7

    .line 1586
    :try_start_6
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1587
    const-string v7, "CalendarProvider2"

    const-string v8, "Found deleted recurring event in Events table.  Ignoring."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1594
    :cond_7
    iput-object v10, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1595
    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1596
    iput-boolean v12, v6, Landroid/text/format/Time;->allDay:Z

    .line 1598
    if-nez v11, :cond_9

    .line 1600
    const-string v10, "CalendarProvider2"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1601
    const-string v10, "CalendarProvider2"

    const-string v11, "Repeating event has no duration -- should not happen."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_8
    if-eqz v12, :cond_a

    .line 1606
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1607
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1608
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1609
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1610
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1611
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1612
    const-string v8, "+P1D"

    :cond_9
    :goto_5
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 1633
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v33

    .line 1637
    if-eqz v12, :cond_c

    .line 1638
    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1643
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v34

    .line 1644
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/4 v7, 0x0

    move/from16 v37, v7

    :goto_7
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    aget-wide v8, v33, v37

    .line 1645
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1646
    const-string v7, "event_id"

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1648
    const-string v7, "begin"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1649
    add-long v10, v8, v34

    .line 1650
    const-string v7, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v13, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v7, p0

    move-object v12, v6

    .line 1652
    invoke-direct/range {v7 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1654
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1644
    add-int/lit8 v7, v37, 0x1

    move/from16 v37, v7

    goto :goto_7

    .line 1616
    :cond_a
    const/4 v10, 0x1

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1617
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1618
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1619
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1620
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1621
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1622
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1623
    sub-long v8, v10, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_5

    .line 1626
    :cond_b
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1627
    const-string v8, "+P0S"

    goto/16 :goto_5

    .line 1640
    :cond_c
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_6

    .line 1658
    :cond_d
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1664
    if-eqz v34, :cond_e

    const-wide/16 v39, -0x1

    cmp-long v7, v35, v39

    if-eqz v7, :cond_e

    .line 1668
    const-string v7, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v7, "originalInstanceTime"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1672
    const-string v7, "eventStatus"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    :cond_e
    if-nez v11, :cond_11

    .line 1677
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1678
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1689
    :goto_8
    cmp-long v7, v10, p1

    if-ltz v7, :cond_f

    cmp-long v7, v8, p3

    if-lez v7, :cond_10

    .line 1690
    :cond_f
    if-eqz v34, :cond_12

    const-wide/16 v39, -0x1

    cmp-long v7, v35, v39

    if-eqz v7, :cond_12

    .line 1691
    const-string v7, "eventStatus"

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1700
    :cond_10
    const-string v7, "event_id"

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    const-string v7, "begin"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1703
    const-string v7, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1706
    const-string v7, "deleted"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1708
    if-eqz v12, :cond_13

    .line 1709
    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_9
    move-object/from16 v7, p0

    move-object v12, v6

    .line 1713
    invoke-direct/range {v7 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1716
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 1681
    :cond_11
    move-object/from16 v0, v31

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v10

    goto :goto_8

    .line 1693
    :cond_12
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1694
    const-string v7, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected event outside window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1711
    :cond_13
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_6
    .catch Lcom/android/providers/calendar/DateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    .line 1751
    :cond_14
    invoke-virtual/range {v30 .. v30}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1752
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1753
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1758
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1762
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1763
    const-string v9, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1764
    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1765
    if-eqz p1, :cond_16

    .line 1775
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    :goto_a
    if-ltz v8, :cond_16

    .line 1776
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 1777
    const-string v11, "begin"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1778
    cmp-long v11, v11, v9

    if-nez v11, :cond_17

    .line 1780
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->remove(I)Ljava/lang/Object;

    .line 1775
    :cond_17
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 1802
    :cond_18
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1803
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1804
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1808
    const-string v7, "eventStatus"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1809
    const-string v8, "deleted"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "deleted"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1811
    :goto_c
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1a

    :cond_1b
    if-nez v8, :cond_1a

    .line 1816
    const-string v7, "deleted"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1819
    const-string v7, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1820
    const-string v7, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1821
    const-string v7, "eventStatus"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_b

    .line 1809
    :cond_1c
    const/4 v8, 0x0

    goto :goto_c

    .line 1826
    :cond_1d
    return-void

    :cond_1e
    move-wide v10, v8

    goto/16 :goto_8

    :cond_1f
    move-object v11, v7

    goto/16 :goto_3

    :cond_20
    move-object v10, v7

    goto/16 :goto_2
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 989
    if-eqz p3, :cond_0

    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "_count"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 994
    :cond_0
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query sql - projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sortOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupBy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1
    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1004
    if-eqz v2, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1008
    :cond_2
    return-object v2
.end method

.method private regenerateInstancesTable()V
    .locals 20

    .prologue
    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 772
    .local v17, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v14

    .line 773
    .local v14, instancesTimezone:Ljava/lang/String;
    new-instance v19, Landroid/text/format/Time;

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 774
    .local v19, time:Landroid/text/format/Time;
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 775
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 776
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 777
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 778
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 780
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 781
    .local v5, begin:J
    const-wide v3, 0x13f4a4800L

    add-long v7, v5, v3

    .line 783
    .local v7, end:J
    const/16 v16, 0x0

    .line 785
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v15

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 794
    if-eqz v16, :cond_0

    .line 795
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V

    .line 800
    return-void

    .line 794
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_1

    .line 795
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method private removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 3913
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3914
    const-string v0, "CalendarProvider2"

    const-string v1, "removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    :cond_0
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3918
    return-void
.end method

.method private rescheduleMissedAlarms()V
    .locals 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms(Landroid/content/ContentResolver;)V

    .line 804
    return-void
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 34
    .parameter

    .prologue
    .line 3686
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 3688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 3689
    const-wide/32 v4, 0x6ddd00

    sub-long v4, v22, v4

    .line 3690
    const-wide/32 v6, 0x5265c00

    add-long v7, v4, v6

    .line 3691
    const-string v6, "CalendarProvider2"

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3692
    move-object/from16 v0, v21

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3693
    const-string v6, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3694
    const-string v9, "CalendarProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runScheduleNextAlarm() start search: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/32 v10, 0x247a6100

    sub-long v10, v22, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 3707
    const-string v9, "CalendarAlerts"

    const-string v10, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.selected=0)"

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v10

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Calendar$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v9

    .line 3712
    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-eqz v6, :cond_d

    cmp-long v6, v9, v7

    if-gez v6, :cond_d

    move-wide v13, v9

    .line 3738
    :goto_0
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 3739
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 3740
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v9, v0

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 3742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " -("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3743
    const-string v9, "SELECT begin"

    .line 3744
    const-string v10, " -(minutes*60000) AS myAlarmTime,Instances.event_id AS eventId,begin,end,title,allDay,method,minutes FROM Instances INNER JOIN view_events ON (view_events._id=Instances.event_id) INNER JOIN Reminders ON (Instances.event_id=Reminders.event_id) WHERE selected=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND method=1"

    .line 3766
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " AND "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "allDay"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "=1"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3768
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "allDay"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3773
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " UNION ALL "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " WHERE 0=(SELECT count(*) FROM "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "CalendarAlerts"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " CA"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " WHERE CA."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "event_id"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "=eventId"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " AND CA."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "begin"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "begin"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " AND CA."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "alarmTime"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "=myAlarmTime)"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ORDER BY myAlarmTime,"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "begin"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "title"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3782
    const/4 v6, 0x6

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    const/4 v6, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    const/4 v6, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    const/4 v6, 0x4

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    const/4 v6, 0x5

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v6

    .line 3786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v11

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v6

    const-string v9, "home"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3790
    const-wide/32 v9, 0x5265c00

    sub-long v5, v4, v9

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 3796
    const/4 v4, 0x0

    .line 3798
    :try_start_0
    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 3800
    :try_start_1
    const-string v4, "begin"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3801
    const-string v4, "end"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3802
    const-string v4, "eventId"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3803
    const-string v4, "myAlarmTime"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3804
    const-string v4, "minutes"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3806
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3807
    move-object/from16 v0, v21

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3808
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3809
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor results: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAlarmTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v11, v13

    .line 3813
    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3821
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3822
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3823
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3824
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3825
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3827
    const-string v4, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v4, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3828
    move-object/from16 v0, v21

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3829
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3830
    move-object/from16 v0, v21

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3831
    const-string v13, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3833
    const-string v14, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  looking at id: "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " alarm: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    :cond_2
    cmp-long v4, v9, v11

    if-gez v4, :cond_3

    move-wide/from16 v31, v9

    .line 3851
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/provider/Calendar$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3852
    const-string v4, "CalendarProvider2"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3853
    const-string v4, "title"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3854
    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3855
    const-string v7, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  alarm exists for id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v11, v31

    .line 3856
    goto/16 :goto_1

    .line 3839
    :cond_3
    const-wide/32 v13, 0xea60

    add-long/2addr v13, v11

    cmp-long v4, v9, v13

    if-lez v4, :cond_c

    .line 3843
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3844
    const-string v4, "CalendarProvider2"

    const-string v5, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3874
    :cond_4
    if-eqz v25, :cond_5

    .line 3875
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 3880
    :cond_5
    if-lez v24, :cond_6

    .line 3881
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V

    .line 3889
    :cond_6
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v11, v4

    if-eqz v4, :cond_a

    .line 3890
    const-wide/32 v4, 0xea60

    add-long/2addr v4, v11

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    .line 3894
    :goto_3
    return-void

    .line 3861
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    move-object v11, v0

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v18, v9

    invoke-static/range {v11 .. v20}, Landroid/provider/Calendar$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v4

    .line 3863
    if-nez v4, :cond_8

    .line 3864
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3865
    const-string v4, "CalendarProvider2"

    const-string v5, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v11, v31

    goto/16 :goto_1

    .line 3871
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v11, v31

    .line 3872
    goto/16 :goto_1

    .line 3874
    :catchall_0
    move-exception v5

    move-object/from16 v33, v5

    move-object v5, v4

    move-object/from16 v4, v33

    :goto_4
    if-eqz v5, :cond_9

    .line 3875
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    .line 3892
    :cond_a
    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v22

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    goto :goto_3

    .line 3874
    :catchall_1
    move-exception v4

    move-object/from16 v5, v25

    goto :goto_4

    :cond_b
    move-wide/from16 v11, v31

    goto/16 :goto_1

    :cond_c
    move-wide/from16 v31, v11

    goto/16 :goto_2

    :cond_d
    move-wide v13, v7

    goto/16 :goto_0
.end method

.method private sendUpdateNotification(JZ)V
    .locals 8
    .parameter "eventId"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x1

    .line 3947
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3949
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3960
    :goto_0
    if-eqz p3, :cond_1

    const-wide/16 v3, 0x7530

    move-wide v0, v3

    .line 3968
    .local v0, delay:J
    :goto_1
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3969
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3970
    return-void

    .line 3956
    .end local v0           #delay:J
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 3960
    :cond_1
    const-wide/16 v3, 0x3e8

    move-wide v0, v3

    goto :goto_1
.end method

.method private sendUpdateNotification(Z)V
    .locals 2
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3929
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    .line 3930
    return-void
.end method

.method private setEventDirty(I)V
    .locals 5
    .parameter

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE Events SET _sync_dirty=1 WHERE _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2274
    return-void
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 2347
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2351
    const/4 v8, 0x0

    .line 2354
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2359
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2360
    :cond_0
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2361
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Events table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2367
    :cond_1
    if-eqz v0, :cond_2

    .line 2368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2428
    :cond_2
    :goto_0
    return-void

    .line 2365
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-wide v8

    .line 2367
    if-eqz v0, :cond_4

    .line 2368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2374
    :cond_4
    const/4 v10, 0x0

    .line 2376
    :try_start_3
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 2381
    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2382
    :cond_5
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2383
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Calendars table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2389
    :cond_6
    if-eqz v0, :cond_2

    .line 2390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2367
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_7

    .line 2368
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2387
    :cond_8
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 2389
    if-eqz v0, :cond_9

    .line 2390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2394
    :cond_9
    if-eqz v1, :cond_2

    .line 2399
    const/4 v0, 0x0

    .line 2400
    const-string v2, "attendeeEmail"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2401
    const-string v0, "attendeeEmail"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2407
    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2412
    const/4 v0, 0x0

    .line 2413
    const-string v1, "attendeeRelationship"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2414
    const-string v1, "attendeeRelationship"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2415
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 2416
    const/4 v0, 0x1

    .line 2420
    :cond_b
    const-string v1, "attendeeStatus"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2421
    const-string v0, "attendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2424
    :cond_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2425
    const-string v2, "selfAttendeeStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2426
    const-string v0, "Events"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2389
    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_d

    .line 2390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 2389
    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    .line 2367
    :catchall_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1
.end method

.method private updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2717
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2719
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2721
    const-string v1, "eventTimezone"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2724
    const-string v2, "allDay"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2725
    if-eqz v2, :cond_9

    .line 2726
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v7

    .line 2729
    :goto_0
    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2731
    :cond_0
    const-string v1, "UTC"

    .line 2734
    :cond_1
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2735
    iput-boolean v2, v3, Landroid/text/format/Time;->allDay:Z

    .line 2736
    const-string v1, "dtstart"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2737
    if-eqz v1, :cond_2

    .line 2738
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2739
    const-string v1, "dtstart2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    :cond_2
    const-string v1, "dtend"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2743
    if-eqz v1, :cond_3

    .line 2744
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2745
    const-string v1, "dtend2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    :cond_3
    const-string v1, "originalInstanceTime"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2749
    if-eqz v1, :cond_5

    .line 2753
    const-string v4, "originalAllDay"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2754
    if-eqz v4, :cond_4

    .line 2755
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v7

    :goto_1
    iput-boolean v4, v3, Landroid/text/format/Time;->allDay:Z

    .line 2757
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2758
    const-string v1, "originalInstanceTime2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    :cond_5
    const-string v1, "lastDate"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2763
    if-eqz v1, :cond_6

    .line 2764
    iput-boolean v2, v3, Landroid/text/format/Time;->allDay:Z

    .line 2765
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2766
    const-string v1, "lastDate2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    :cond_6
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsRawTimesReplace(Landroid/content/ContentValues;)J

    .line 2770
    return-void

    :cond_7
    move v2, v6

    .line 2726
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 2755
    goto :goto_1

    :cond_9
    move v2, v6

    goto/16 :goto_0
.end method

.method private updateEventsStartEndFromEventRawTimesLocked()V
    .locals 9

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 671
    .local v6, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 673
    .local v1, eventId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, dtStart2445:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, dtEnd2445:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, eventTimezone:Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 677
    const-string v0, "CalendarProvider2"

    const/4 v7, 0x6

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has dtStart2445 and dtEnd2445 null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "at the same time in EventsRawTimes!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 689
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 690
    const/4 v6, 0x0

    throw v0

    .restart local v1       #eventId:J
    .restart local v3       #eventTimezone:Ljava/lang/String;
    .restart local v4       #dtStart2445:Ljava/lang/String;
    .restart local v5       #dtEnd2445:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 683
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 690
    const/4 v6, 0x0

    .line 692
    return-void
.end method

.method private updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "eventId"
    .parameter "timezone"
    .parameter "dtStart2445"
    .parameter "dtEnd2445"

    .prologue
    .line 716
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-direct {p0, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    const-string v2, "dtend"

    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 720
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 722
    .local v0, result:I
    if-nez v0, :cond_0

    .line 723
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update Events table with values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    return-void
.end method

.method private updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3047
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3048
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3049
    const-string v2, "_sync_dirty"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    const/4 v2, 0x0

    .line 3052
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3053
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3054
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3055
    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v7, p1, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3056
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {v3, v4, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3058
    add-int/lit8 v2, v2, 0x1

    .line 3059
    goto :goto_0

    .line 3061
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3063
    return v2

    .line 3061
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2443
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v0

    .line 2444
    iget-wide v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2528
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    const-string v1, "dtstart"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2449
    if-nez v1, :cond_3

    .line 2450
    if-eqz p4, :cond_2

    .line 2452
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART missing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2454
    :cond_2
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    const-string v0, "CalendarProvider2"

    const-string v1, "Missing DTSTART.  No need to update instance."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2460
    :cond_3
    const-string v2, "lastDate"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2461
    const-string v3, "originalInstanceTime"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 2463
    if-nez p4, :cond_4

    .line 2468
    const-string v4, "Instances"

    const-string v5, "event_id=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p5, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2472
    :cond_4
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2473
    const-string v5, "rdate"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2474
    const-string v6, "originalEvent"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2475
    invoke-static {v4, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2478
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v4, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_7

    :cond_5
    move v1, v9

    .line 2483
    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    const-wide/32 v6, 0x240c8400

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_8

    move v0, v9

    .line 2486
    :goto_2
    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    .line 2487
    :cond_6
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_7
    move v1, v8

    .line 2478
    goto :goto_1

    :cond_8
    move v0, v8

    .line 2483
    goto :goto_2

    .line 2495
    :cond_9
    const-string v2, "dtend"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2496
    if-nez v2, :cond_d

    move-object v3, v1

    .line 2505
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 2506
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v2, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    const-string v2, "begin"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2509
    const-string v2, "end"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2512
    const-string v2, "allDay"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2513
    if-eqz v2, :cond_c

    .line 2514
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v9

    .line 2518
    :goto_4
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 2519
    if-eqz v2, :cond_b

    .line 2520
    const-string v0, "UTC"

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2525
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2526
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_a
    move v2, v8

    .line 2514
    goto :goto_4

    .line 2522
    :cond_b
    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move v2, v8

    goto :goto_4

    :cond_d
    move-object v3, v2

    goto :goto_3
.end method

.method private updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 2701
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2702
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2703
    const-string v2, "lastDate"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, p1

    .line 2712
    :goto_0
    return-object v0

    .line 2707
    :catch_0
    move-exception v0

    .line 2709
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2710
    const-string v1, "CalendarProvider2"

    const-string v2, "Could not calculate last date."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2712
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2579
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v0

    .line 2580
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v5

    .line 2581
    const-string v1, "originalEvent"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2583
    if-eqz v1, :cond_1

    .line 2594
    :goto_0
    if-nez v1, :cond_2

    .line 2597
    const-string v2, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=?)"

    .line 2598
    const-string v3, "Instances"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {p4, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2608
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 2610
    :try_start_0
    iget-wide v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v3, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2613
    if-eqz v6, :cond_0

    .line 2614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2617
    :cond_0
    return-void

    .line 2587
    :cond_1
    const-string v1, "SELECT _sync_id FROM Events WHERE _id=?"

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p4, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2603
    :cond_2
    const-string v2, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.originalEvent=?)"

    .line 2604
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v8

    aput-object v1, v4, v6

    invoke-virtual {p4, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2613
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "timeZoneDatabaseVersion"

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 733
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const-string v1, "CalendarProvider2"

    const-string v2, "Could not write timezone database version in the cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateEventData(Landroid/content/ContentValues;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2216
    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v7

    .line 2217
    :goto_0
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v7

    .line 2218
    :goto_1
    const-string v2, "rrule"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v7

    .line 2219
    :goto_2
    const-string v3, "rdate"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v7

    .line 2220
    :goto_3
    const-string v4, "originalEvent"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v7

    .line 2221
    :goto_4
    const-string v5, "originalInstanceTime"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_9

    move v5, v7

    .line 2222
    :goto_5
    if-nez v2, :cond_0

    if-eqz v3, :cond_a

    .line 2231
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    if-eqz v5, :cond_3

    .line 2232
    :cond_1
    const-string v0, "CalendarProvider2"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2233
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid values for recurrence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_2
    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2236
    const-string v0, "originalEvent"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2237
    const-string v0, "originalInstanceTime"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2270
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v0, v6

    .line 2216
    goto :goto_0

    :cond_5
    move v1, v6

    .line 2217
    goto :goto_1

    :cond_6
    move v2, v6

    .line 2218
    goto :goto_2

    :cond_7
    move v3, v6

    .line 2219
    goto :goto_3

    :cond_8
    move v4, v6

    .line 2220
    goto :goto_4

    :cond_9
    move v5, v6

    .line 2221
    goto :goto_5

    .line 2239
    :cond_a
    if-nez v4, :cond_b

    if-eqz v5, :cond_e

    .line 2248
    :cond_b
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    if-eqz v4, :cond_c

    if-nez v5, :cond_3

    .line 2249
    :cond_c
    const-string v0, "CalendarProvider2"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2250
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid values for recurrence exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_d
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 2263
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v1, :cond_3

    .line 2264
    :cond_f
    const-string v0, "CalendarProvider2"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2265
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid values for event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_10
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method acquireScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 501
    return-void
.end method

.method calculateLastDate(Landroid/content/ContentValues;)J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 2623
    const-string v0, "dtstart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2624
    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eventTimezone"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rdate"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exdate"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2630
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART field missing from event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-wide v0, v6

    .line 2691
    :cond_2
    :goto_0
    return-wide v0

    .line 2634
    :cond_3
    const-string v0, "dtstart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2642
    const-string v2, "dtend"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2643
    if-eqz v2, :cond_4

    .line 2644
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2647
    :cond_4
    new-instance v2, Lcom/android/providers/calendar/Duration;

    invoke-direct {v2}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 2648
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2649
    if-eqz v3, :cond_5

    .line 2650
    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 2655
    :cond_5
    :try_start_0
    new-instance v3, Landroid/pim/RecurrenceSet;

    invoke-direct {v3, p1}, Landroid/pim/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2668
    const-string v4, "eventTimezone"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2670
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2672
    const-string v4, "UTC"

    .line 2674
    :cond_6
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2678
    new-instance v0, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v0}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 2679
    invoke-virtual {v0, v5, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J

    move-result-wide v0

    .line 2680
    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    .line 2689
    :cond_7
    invoke-virtual {v2, v0, v1}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v0

    goto :goto_0

    .line 2656
    :catch_0
    move-exception v0

    .line 2657
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2658
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse RRULE recurrence string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rrule"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-wide v0, v6

    .line 2661
    goto/16 :goto_0
.end method

.method constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;
    .locals 8
    .parameter "tokens"
    .parameter "rangeBegin"
    .parameter "rangeEnd"

    .prologue
    .line 1142
    sget-object v6, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v6

    .line 1143
    .local v3, numCols:I
    array-length v6, p1

    mul-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x2

    .line 1145
    .local v2, numArgs:I
    new-array v4, v2, [Ljava/lang/String;

    .line 1146
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1147
    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1148
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 1149
    mul-int v6, v3, v1

    add-int/lit8 v5, v6, 0x2

    .line 1150
    .local v5, start:I
    move v0, v5

    .local v0, i:I
    :goto_1
    add-int v6, v5, v3

    if-ge v0, v6, :cond_0

    .line 1151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1154
    .end local v0           #i:I
    .end local v5           #start:I
    :cond_1
    return-object v4
.end method

.method constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    .line 1116
    array-length v3, p1

    if-nez v3, :cond_0

    .line 1117
    const-string v3, ""

    .line 1137
    :goto_0
    return-object v3

    .line 1119
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 1122
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1124
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const-string v3, " LIKE ? ESCAPE \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 1129
    const-string v3, "OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1132
    :cond_2
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 1134
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1137
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected createCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;
    .locals 2

    .prologue
    .line 564
    new-instance v0, Lcom/android/providers/calendar/CalendarAlarmManager;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2775
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2776
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2779
    packed-switch v0, :pswitch_data_0

    .line 2931
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2781
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2924
    :goto_0
    return v0

    .line 2784
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2787
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2789
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2784
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2795
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2798
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 2802
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2803
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2804
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, p4, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 2805
    goto :goto_2

    .line 2806
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2807
    invoke-direct {p0, p4}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2809
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2812
    goto :goto_0

    .line 2809
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2810
    throw v1

    .line 2816
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2817
    if-eqz p2, :cond_3

    .line 2818
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalendarProvider2 doesn\'t support selection based deletion for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2822
    :cond_3
    invoke-direct {p0, v1, v2, p4, v8}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v0

    goto/16 :goto_0

    .line 2826
    :pswitch_5
    if-eqz p4, :cond_4

    .line 2827
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Attendees"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2829
    :cond_4
    const-string v0, "Attendees"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2834
    :pswitch_6
    if-eqz p2, :cond_5

    .line 2835
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2837
    :cond_5
    if-eqz p4, :cond_6

    .line 2838
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2839
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Attendees"

    const-string v4, "_id=?"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2842
    :cond_6
    const-string v0, "Attendees"

    invoke-direct {p0, v0, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2848
    :pswitch_7
    if-eqz p4, :cond_7

    .line 2849
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Reminders"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2851
    :cond_7
    const-string v0, "Reminders"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2856
    :pswitch_8
    if-eqz p2, :cond_8

    .line 2857
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2859
    :cond_8
    if-eqz p4, :cond_9

    .line 2860
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2861
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "_id=?"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2864
    :cond_9
    const-string v0, "Reminders"

    invoke-direct {p0, v0, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2870
    :pswitch_9
    if-eqz p4, :cond_a

    .line 2871
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ExtendedProperties"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2873
    :cond_a
    const-string v0, "ExtendedProperties"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2879
    :pswitch_a
    if-eqz p2, :cond_b

    .line 2880
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2882
    :cond_b
    if-eqz p4, :cond_c

    .line 2883
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2884
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "_id=?"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2887
    :cond_c
    const-string v0, "ExtendedProperties"

    invoke-direct {p0, v0, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2893
    :pswitch_b
    if-eqz p4, :cond_d

    .line 2894
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CalendarAlerts"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2896
    :cond_d
    const-string v0, "CalendarAlerts"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2901
    :pswitch_c
    if-eqz p2, :cond_e

    .line 2902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2906
    :cond_e
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2907
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "_id=?"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2911
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2913
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2916
    const-string v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2920
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2923
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2924
    invoke-direct {p0, v0, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2929
    :pswitch_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot delete that URL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object v0, p2

    goto :goto_3

    .line 2779
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method protected doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "localTimezone"
    .parameter "timeZoneDatabaseVersion"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndFromEventRawTimesLocked()V

    .line 659
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDatabaseVersion(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 662
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 666
    return-void

    .line 664
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected doUpdateTimezoneDependentFields()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 622
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, timezoneType:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    .end local v3           #timezoneType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v3       #timezoneType:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isSameTimezoneDatabaseVersion()Z

    move-result v4

    if-nez v4, :cond_2

    .line 629
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, localTimezone:Ljava/lang/String;
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/providers/calendar/CalendarProvider2;->doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v2           #localTimezone:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isLocalSameAsInstancesTimezone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    .end local v3           #timezoneType:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 640
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 641
    const-string v4, "CalendarProvider2"

    const-string v5, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v4}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 647
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 648
    .local v1, e2:Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearInstanceRange() also failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "token"

    .prologue
    .line 1065
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1066
    .local v0, matcher:Ljava/util/regex/Matcher;
    const-string v1, "#$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 479
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;
    .locals 1

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Lcom/android/providers/calendar/CalendarAlarmManager;

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->createCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Lcom/android/providers/calendar/CalendarAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 487
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 490
    const-string v1, "ScheduleNextAlarmWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 494
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method protected getTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 753
    if-nez v0, :cond_1

    .line 754
    const-string v0, ""

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 756
    :cond_1
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezoneDatabaseVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 1864
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1865
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 1889
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1867
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/event"

    .line 1887
    :goto_0
    return-object v1

    .line 1869
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_0

    .line 1871
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_0

    .line 1873
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_0

    .line 1875
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_0

    .line 1877
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_0

    .line 1879
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_0

    .line 1883
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_0

    .line 1885
    :pswitch_9
    const-string v1, "time/epoch"

    goto :goto_0

    .line 1887
    :pswitch_a
    const-string v1, "vnd.android.cursor.dir/property"

    goto :goto_0

    .line 1865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2030
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2037
    packed-switch v0, :pswitch_data_0

    .line 2197
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2039
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2200
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 2201
    const/4 v0, 0x0

    .line 2204
    :goto_1
    return-object v0

    .line 2042
    :pswitch_2
    if-nez p3, :cond_2

    .line 2043
    const-string v0, "_sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2045
    :cond_2
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2046
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART field missing from event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2050
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 2052
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2053
    if-nez v1, :cond_4

    .line 2054
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not insert event."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2057
    :cond_4
    const/4 v0, 0x0

    .line 2058
    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "organizer"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2060
    const-string v0, "calendar_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v0

    .line 2065
    if-eqz v0, :cond_5

    .line 2066
    const-string v2, "organizer"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v6, v0

    .line 2069
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2070
    const-string v0, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2071
    const-string v0, "CalendarProvider2"

    const-string v2, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_6
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2077
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 2078
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 2079
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2083
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2084
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2085
    if-nez v6, :cond_13

    .line 2086
    const-string v4, "calendar_id"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v1

    .line 2088
    :goto_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 2092
    :cond_7
    const-string v0, "eventTimezone"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    .line 2093
    const-string v0, "eventTimezone"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2096
    const-string v4, "event_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2097
    const-string v4, "name"

    const-string v5, "CalendarSyncAdapter#originalTimezone"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v4, "value"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2103
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 2104
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2105
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add the original Timezone in the ExtendedProperties table for Event: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_8
    :goto_4
    invoke-direct {p0, v2, v3, p3}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    move-wide v0, v2

    goto/16 :goto_0

    .line 2110
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2111
    const-string v1, "hasExtendedProperties"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2114
    if-gtz v0, :cond_8

    .line 2115
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2116
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update hasExtendedProperties column for Event: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2126
    :pswitch_3
    const-string v0, "sync_events"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2127
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2128
    const-string v0, "_sync_account"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    const-string v1, "_sync_account_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2131
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v0, "sync1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2133
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 2135
    :cond_a
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2136
    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 2139
    :pswitch_4
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attendees values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2143
    :cond_b
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2144
    if-nez p3, :cond_c

    .line 2145
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    .line 2149
    :cond_c
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2152
    :pswitch_5
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reminders values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2156
    :cond_d
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->remindersInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2157
    if-nez p3, :cond_e

    .line 2158
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    .line 2162
    :cond_e
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2163
    const-string v2, "CalendarProvider2"

    const-string v3, "insertInternal() changing reminder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 2168
    :pswitch_6
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CalendarAlerts values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 2177
    :pswitch_7
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtendedProperties values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2181
    :cond_11
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2182
    if-nez p3, :cond_1

    .line 2183
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    goto/16 :goto_0

    .line 2195
    :pswitch_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2204
    :cond_12
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    move-object v1, v6

    goto/16 :goto_3

    :cond_14
    move-wide v0, v2

    goto/16 :goto_0

    :cond_15
    move-object v6, v0

    goto/16 :goto_2

    .line 2037
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected isSameTimezoneDatabaseVersion()Z
    .locals 2

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 745
    const/4 v1, 0x0

    .line 747
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method protected notifyChange(Z)V
    .locals 3
    .parameter "syncToNetwork"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 811
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 4217
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 4218
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 4220
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 4269
    :goto_0
    return-void

    .line 4224
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4225
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4226
    array-length v2, p1

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 4227
    new-instance v5, Landroid/accounts/Account;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4228
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4226
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4230
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4232
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4235
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Calendars"

    aput-object v4, v2, v3

    array-length v3, v2

    move v4, v9

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 4238
    iget-object v6, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT DISTINCT _sync_account,_sync_account_type FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4243
    :cond_3
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4244
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4245
    new-instance v6, Landroid/accounts/Account;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4246
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4247
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 4264
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4251
    :cond_4
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4235
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4254
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 4255
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4256
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing data for removed account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    :cond_6
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 4259
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM Calendars WHERE _sync_account=? AND _sync_account_type=?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 4261
    :cond_7
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 4262
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4264
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4268
    invoke-direct {p0, v9}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 518
    invoke-super {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onCreate()Z

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "CalendarProvider2"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected postInitialize()V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 576
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 577
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 822
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 823
    const/4 v3, 0x0

    .line 824
    const/4 v11, 0x0

    .line 827
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 828
    packed-switch v10, :pswitch_data_0

    .line 978
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 830
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 982
    :goto_0
    return-object v3

    .line 834
    :pswitch_2
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 835
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 836
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    .line 982
    invoke-direct/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 839
    :pswitch_3
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 840
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 841
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 842
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 843
    goto :goto_1

    .line 846
    :pswitch_4
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 847
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 849
    goto :goto_1

    .line 851
    :pswitch_5
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 852
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 854
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 855
    goto/16 :goto_1

    .line 859
    :pswitch_6
    const-string v5, "Calendars"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 861
    goto/16 :goto_1

    .line 864
    :pswitch_7
    const-string v5, "Calendars"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 866
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 867
    goto/16 :goto_1

    .line 873
    :pswitch_8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 879
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v14

    .line 885
    const/16 v3, 0x10

    if-ne v10, v3, :cond_1

    const/4 v3, 0x1

    move v12, v3

    :goto_2
    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 874
    :catch_0
    move-exception v3

    .line 875
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :catch_1
    move-exception v3

    .line 881
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 885
    :cond_1
    const/4 v3, 0x0

    move v12, v3

    goto :goto_2

    .line 892
    :pswitch_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v5

    .line 898
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v7

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v14

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 906
    const/16 v3, 0x1c

    if-ne v10, v3, :cond_2

    const/4 v3, 0x1

    move v13, v3

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 893
    :catch_2
    move-exception v3

    .line 894
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :catch_3
    move-exception v3

    .line 900
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 906
    :cond_2
    const/4 v3, 0x0

    move v13, v3

    goto :goto_3

    .line 913
    :pswitch_a
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 919
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v6

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v9

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 914
    :catch_4
    move-exception v3

    .line 915
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse start day "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 920
    :catch_5
    move-exception v3

    .line 921
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end day "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 928
    :pswitch_b
    const-string v5, "Attendees, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 929
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 930
    const-string v5, "Events._id=Attendees.event_id"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 932
    goto/16 :goto_1

    .line 934
    :pswitch_c
    const-string v5, "Attendees, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 935
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 937
    const-string v6, "Attendees._id=? AND Events._id=Attendees.event_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 938
    goto/16 :goto_1

    .line 940
    :pswitch_d
    const-string v5, "Reminders"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 941
    goto/16 :goto_1

    .line 943
    :pswitch_e
    const-string v5, "Reminders, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 944
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 946
    const-string v6, "Reminders._id=? AND Events._id=Reminders.event_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 947
    goto/16 :goto_1

    .line 949
    :pswitch_f
    const-string v5, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 950
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 951
    const-string v5, "view_events._id=CalendarAlerts.event_id"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 952
    goto/16 :goto_1

    .line 954
    :pswitch_10
    const-string v3, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 955
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 956
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 957
    const-string v3, "event_id,begin"

    move-object v10, v3

    move-object/from16 v8, p4

    .line 958
    goto/16 :goto_1

    .line 960
    :pswitch_11
    const-string v5, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 961
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 963
    const-string v6, "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 964
    goto/16 :goto_1

    .line 966
    :pswitch_12
    const-string v5, "ExtendedProperties"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 967
    goto/16 :goto_1

    .line 969
    :pswitch_13
    const-string v5, "ExtendedProperties"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 971
    const-string v6, "ExtendedProperties._id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 972
    goto/16 :goto_1

    .line 974
    :pswitch_14
    const-string v5, "CalendarCache"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 975
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 976
    goto/16 :goto_1

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method releaseScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 505
    return-void
.end method

.method runScheduleNextAlarm(Z)V
    .locals 2
    .parameter "removeAlarms"

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3647
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3649
    if-eqz p1, :cond_0

    .line 3650
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3652
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3653
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3655
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3657
    return-void

    .line 3655
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method scheduleNextAlarm(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3617
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNeedRemoveAlarms:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNeedRemoveAlarms:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3618
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3619
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3620
    const-string v0, "CalendarProvider2"

    const-string v1, "Scheduling check of next Alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3623
    const-string v1, "removeAlarms"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3624
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3626
    if-eqz v1, :cond_2

    .line 3628
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3630
    :cond_2
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    .line 3635
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3638
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 3617
    goto :goto_0
.end method

.method scheduleNextAlarmCheck(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3595
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3596
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3598
    if-eqz v1, :cond_0

    .line 3600
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3602
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3605
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3606
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3607
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 3608
    const-string v2, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3609
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleNextAlarmCheck at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v1

    invoke-virtual {v1, v5, p1, p2, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3613
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->close()V

    .line 511
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 512
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 514
    :cond_0
    return-void
.end method

.method tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v0, matchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1082
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1083
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1085
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, token:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1088
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #token:Ljava/lang/String;
    goto :goto_1

    .line 1092
    .end local v2           #token:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3158
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3159
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3166
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 3168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WHERE based updates not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3171
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 3501
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3173
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3497
    :cond_2
    :goto_0
    return v0

    .line 3177
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3181
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3183
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3178
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3190
    :pswitch_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 3191
    if-eqz p3, :cond_4

    .line 3192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3195
    :cond_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3210
    :goto_2
    if-nez p5, :cond_5

    .line 3211
    const-string v2, "_sync_dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3213
    :cond_5
    const-string v2, "sync_events"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3214
    if-eqz v2, :cond_6

    .line 3215
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V

    .line 3218
    :cond_6
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Calendars"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3221
    if-lez v0, :cond_2

    .line 3223
    const-string v1, "selected"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3228
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3231
    :cond_7
    invoke-direct {p0, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 3202
    :cond_8
    if-eqz p3, :cond_9

    const-string v0, "_id="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3205
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 3207
    :cond_9
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3215
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 3240
    :pswitch_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 3241
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v2, v0

    .line 3263
    :goto_4
    if-nez p5, :cond_b

    .line 3264
    const-string v0, "_sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3270
    :cond_b
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3242
    :cond_c
    if-eqz p5, :cond_f

    .line 3245
    if-eqz p3, :cond_d

    const-string v0, "_id="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3248
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_4

    .line 3252
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3253
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3254
    const-string v0, "CalendarProvider2"

    const-string v1, "updateInTransaction: Caller is sync adapter. allDay is true but sec, min, hour were not 0."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_e
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3261
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3277
    :cond_10
    const-string v0, "htmlUri"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p5, :cond_11

    .line 3278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating htmlUri in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3282
    :cond_11
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3285
    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->doesStatusCancelUpdateMeanUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 3286
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3288
    invoke-direct {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 3289
    if-nez v1, :cond_13

    .line 3290
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3291
    const-string v0, "CalendarProvider2"

    const-string v1, "Could not update event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3297
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 3298
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 3302
    :goto_5
    invoke-direct {p0, v5, v1}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3303
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3304
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_14
    if-eqz v4, :cond_1a

    .line 3312
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Events"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 3314
    if-lez v6, :cond_2a

    .line 3315
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 3316
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3318
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3322
    :cond_15
    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 3324
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 3325
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Instances"

    const-string v5, "event_id=?"

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3330
    :cond_16
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3331
    const-string v0, "CalendarProvider2"

    const-string v1, "updateInternal() changing event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3336
    :cond_18
    invoke-direct {p0, v2, v3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    move v0, v6

    goto/16 :goto_0

    :cond_19
    move-object v5, p1

    .line 3300
    goto/16 :goto_5

    .line 3339
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, p5, v0}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v0

    .line 3340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3341
    invoke-direct {p0, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 3347
    :pswitch_5
    if-eqz p3, :cond_1b

    .line 3348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3351
    :cond_1b
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3353
    if-eqz p5, :cond_1c

    .line 3354
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3355
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Attendees"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3358
    :cond_1c
    const-string v1, "Attendees"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3363
    :pswitch_6
    if-eqz p3, :cond_1d

    .line 3364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3368
    :cond_1d
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3369
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3375
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CalendarAlerts"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3378
    :pswitch_8
    if-eqz p3, :cond_1e

    .line 3379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3381
    :cond_1e
    if-eqz p5, :cond_20

    .line 3382
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3383
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3392
    :goto_6
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3393
    const-string v1, "CalendarProvider2"

    const-string v2, "updateInternal() changing reminder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 3386
    :cond_20
    const-string v1, "Reminders"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 3399
    :pswitch_9
    if-eqz p3, :cond_21

    .line 3400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3402
    :cond_21
    if-eqz p5, :cond_22

    .line 3403
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3404
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3407
    :cond_22
    const-string v1, "ExtendedProperties"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3414
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3415
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3418
    :pswitch_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3419
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3423
    :pswitch_c
    if-nez p3, :cond_23

    .line 3424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection cannot be null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3426
    :cond_23
    const-string v0, "key=?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection should be key=? for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3430
    :cond_24
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3432
    const-string v1, "timezoneInstancesPrevious"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid selection key: timezoneInstancesPrevious for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3438
    :cond_25
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    .line 3442
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarCache"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3450
    if-lez v2, :cond_27

    .line 3452
    const-string v3, "timezoneType"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 3453
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3454
    if-eqz v0, :cond_27

    .line 3456
    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3457
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v0

    .line 3459
    if-eqz v0, :cond_26

    .line 3460
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3464
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3465
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 3466
    invoke-direct {p0, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    :cond_27
    :goto_7
    move v0, v2

    .line 3497
    goto/16 :goto_0

    .line 3470
    :cond_28
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3471
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 3472
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3474
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 3475
    invoke-direct {p0, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto :goto_7

    .line 3481
    :cond_29
    const-string v3, "timezoneInstances"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3483
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3484
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v0

    .line 3486
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    .line 3489
    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3491
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 3492
    invoke-direct {p0, p5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto :goto_7

    :cond_2a
    move v0, v6

    goto/16 :goto_0

    .line 3171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 597
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 598
    return-void
.end method

.method protected verifyAccounts()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 473
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 474
    return-void
.end method
