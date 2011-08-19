.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "CalendarSyncAdapter.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;,
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;
    }
.end annotation


# static fields
.field private static final CALENDARS_ID_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

.field private static CALENDARS_PROJECTION_COLOR_INDEX:I

.field private static CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

.field private static CALENDARS_PROJECTION_EDIT_URL_INDEX:I

.field private static CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

.field private static CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

.field private static CALENDARS_PROJECTION_ID_INDEX:I

.field private static CALENDARS_PROJECTION_NAME_INDEX:I

.field private static CALENDARS_PROJECTION_SELECTED_INDEX:I

.field private static CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

.field private static CALENDARS_PROJECTION_SELF_URL_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_ACCOUNT_TYPE_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

.field private static CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

.field private static CALENDARS_PROJECTION_TIMEZONE_INDEX:I

.field private static final CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

.field static final sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

.field static final sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field static final sEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    .line 103
    new-instance v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-direct {v0, v1, v3, v1}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 112
    new-instance v0, Lcom/google/android/syncadapters/calendar/EventHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    .line 113
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/CalendarHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

    .line 151
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const-string v1, "_sync_account_type"

    aput-object v1, v0, v4

    const-string v1, "sync1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    .line 169
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "selected"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sync1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sync2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sync3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sync4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sync5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 189
    sput v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    .line 190
    sput v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_INDEX:I

    .line 191
    sput v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_NAME_INDEX:I

    .line 192
    sput v6, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

    .line 193
    const/4 v0, 0x4

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    .line 194
    const/4 v0, 0x5

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    .line 195
    const/4 v0, 0x6

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

    .line 196
    const/4 v0, 0x7

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_TYPE_INDEX:I

    .line 197
    const/16 v0, 0x8

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    .line 198
    const/16 v0, 0x9

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_COLOR_INDEX:I

    .line 199
    const/16 v0, 0xa

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

    .line 200
    const/16 v0, 0xb

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    .line 201
    const/16 v0, 0xc

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EDIT_URL_INDEX:I

    .line 202
    const/16 v0, 0xd

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELF_URL_INDEX:I

    .line 203
    const/16 v0, 0xe

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

    .line 204
    const/16 v0, 0xf

    sput v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

    .line 206
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 253
    new-instance v0, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    new-instance v1, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;

    const-string v2, "Android-GData-Calendar/1.6"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    .line 257
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 258
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;

    const-string v1, "CalendarSyncAdapterAccountMonitor"

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->start()V

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDefaultCalendar(Landroid/accounts/Account;)V

    return-void
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2275
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

.method private addDefaultCalendar(Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1090
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "/private/full"

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getDefaultCalendarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/client/QueryParams;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding default calendar for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    const-string v2, "_sync_account"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v2, "_sync_account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v2, "sync1"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v2, "sync2"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v2, "sync3"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v2, "ownerAccount"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v2, "displayName"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v2, "sync_events"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1106
    const-string v2, "selected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1107
    const-string v2, "sync4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    const-string v2, "sync5"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    const-string v2, "color"

    sget v3, Lcom/google/android/syncadapters/calendar/HandlerUtils;->DEFAULT_CALENDAR_INT_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v2, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v2, "access_level"

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1117
    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1118
    if-nez v1, :cond_2

    .line 1119
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add default calendar for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1123
    :cond_2
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1128
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_5

    .line 1131
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1132
    sget v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1134
    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    .line 1137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1138
    const-string v7, "sync_events"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    const-string v7, "selected"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    sget-object v7, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1148
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    if-eqz v1, :cond_4

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1148
    :cond_5
    if-eqz v0, :cond_1

    .line 1149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1148
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method static addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2234
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2235
    if-eqz p2, :cond_0

    .line 2236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2238
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    return-void
.end method

.method static addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2193
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2195
    if-eqz p3, :cond_0

    .line 2196
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2198
    :cond_0
    if-eqz p4, :cond_1

    .line 2200
    const-string v1, "event_id"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2203
    :cond_1
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 2204
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    return-void
.end method

.method static addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2210
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2212
    if-eqz p3, :cond_0

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2215
    :cond_0
    if-eqz p4, :cond_1

    .line 2216
    const-string v1, "_id=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2217
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 2219
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 2220
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 2221
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    return-void
.end method

.method private applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2173
    invoke-virtual {p2, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 2174
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2175
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch applied successfully, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " results"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2186
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2188
    return-void

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    :try_start_1
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2180
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2186
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 2181
    :catch_1
    move-exception v0

    .line 2182
    :try_start_2
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error applying batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yield points succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2184
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2304
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2305
    if-nez v0, :cond_0

    move-object v0, v3

    .line 2312
    :goto_0
    return-object v0

    .line 2309
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2310
    :catch_0
    move-exception v0

    .line 2311
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to url decode the email address in calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2312
    goto :goto_0
.end method

.method private calendarEntryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1441
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 1443
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getSelfUri()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1446
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Calendar Self Uri cannot be null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v5

    .line 1498
    :goto_0
    return-object v0

    .line 1451
    :cond_1
    const-string v1, "sync3"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1455
    const-string v1, "sync2"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_2
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEventsUri()Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1461
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1462
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Calendar Events Uri cannot be null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v5

    .line 1464
    goto :goto_0

    .line 1466
    :cond_4
    const-string v1, "sync1"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v1, "ownerAccount"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v1, "name"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getOverrideName()Ljava/lang/String;

    move-result-object v1

    .line 1472
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1473
    const-string v1, "displayName"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :goto_1
    const-string v1, "timezone"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v1

    .line 1481
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1482
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1484
    const/high16 v2, -0x100

    or-int/2addr v1, v2

    .line 1485
    const-string v2, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1488
    :cond_5
    const-string v1, "sync4"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1489
    const-string v1, "sync5"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    const-string v1, "access_level"

    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCalendarAccessLevelFromEntry(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    const-string v1, "_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1475
    :cond_6
    const-string v2, "displayName"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v2, v3

    .line 1488
    goto :goto_2

    :cond_8
    move v2, v3

    .line 1489
    goto :goto_3
.end method

.method private cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2326
    invoke-static {p2, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v6

    .line 2330
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_sync_account=? AND _sync_account_type=? AND sync_events=0"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v11

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v12

    const-string v5, "_id"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2336
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2337
    const/4 v2, 0x0

    .line 2340
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2341
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2342
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gez v5, :cond_2

    .line 2343
    const-string v5, "CalendarSyncAdapter"

    const/4 v7, 0x5

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2344
    const-string v5, "CalendarSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a non valid CalendarId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2399
    :catch_0
    move-exception v1

    .line 2400
    :try_start_1
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Cannot process cleanup Events operations"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2402
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2404
    return-void

    .line 2348
    :cond_2
    :try_start_2
    sget v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2349
    sget v7, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2352
    iget-object v8, v6, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2353
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v9

    if-nez v9, :cond_7

    :cond_3
    move v9, v11

    .line 2356
    :goto_2
    if-eq v5, v9, :cond_0

    .line 2362
    if-nez v2, :cond_4

    .line 2363
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2367
    :cond_4
    if-eqz v8, :cond_6

    .line 2368
    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2369
    const-string v5, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will clean feedSyncState for CalendarId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and Feed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_5
    invoke-virtual {v8}, Landroid/os/Bundle;->clear()V

    .line 2376
    :cond_6
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 2386
    const-string v7, "calendar_id=? AND _sync_id IS NOT NULL AND _sync_dirty=0 AND deleted=0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2389
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2402
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    move v9, v12

    .line 2353
    goto :goto_2

    .line 2393
    :cond_8
    if-eqz v2, :cond_1

    .line 2395
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    invoke-virtual {p2, v2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    .locals 7
    .parameter "operation"
    .parameter "entryClass"
    .parameter "client"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 685
    :try_start_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_5

    .line 711
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 721
    .local v0, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 727
    invoke-static {p1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    .line 780
    .end local v0           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :cond_0
    :goto_0
    return-void

    .line 687
    :pswitch_0
    :try_start_1
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting with entry =====\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    invoke-virtual {p3, v1, p4, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_1
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 728
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 729
    .local v0, e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 735
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 741
    invoke-static {p1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto :goto_0

    .line 695
    .end local v0           #e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :pswitch_1
    :try_start_2
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating with entry =====\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_3
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_2
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 746
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 747
    .local v0, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 749
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto/16 :goto_0

    .line 702
    .end local v0           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :pswitch_2
    :try_start_3
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_4
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$400(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, p4, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 756
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 757
    .local v0, e:Lcom/google/wireless/gdata2/client/BadRequestException;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 759
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto/16 :goto_0

    .line 744
    .local v0, e:Lcom/google/wireless/gdata2/client/PreconditionFailedException;
    :cond_5
    new-instance v1, Lcom/google/wireless/gdata2/ConflictDetectedException;

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v1

    .line 750
    .local v0, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :cond_6
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 752
    invoke-static {p1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 753
    :cond_7
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_0

    goto/16 :goto_0

    .line 760
    .local v0, e:Lcom/google/wireless/gdata2/client/BadRequestException;
    :cond_8
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 762
    invoke-static {p1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 763
    :cond_9
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_0

    goto/16 :goto_0

    .line 766
    .end local v0           #e:Lcom/google/wireless/gdata2/client/BadRequestException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 767
    .local v0, e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 769
    invoke-static {p1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 770
    :cond_a
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I

    move-result v1

    if-ne v1, v5, :cond_0

    goto/16 :goto_0

    .line 773
    .end local v0           #e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 774
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_b

    .line 775
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 777
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unhandled http error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 2289
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2290
    array-length v1, v0

    if-le v1, v3, :cond_0

    const-string v1, "feeds"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2291
    aget-object v0, v0, v3

    .line 2294
    :goto_0
    return-object v0

    .line 2293
    :cond_0
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find the email address in calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fetchEntry(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 4
    .parameter "operation"
    .parameter "entryClass"
    .parameter "client"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 786
    :try_start_0
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, p3, v2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 788
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 789
    .local v0, e:Lcom/google/wireless/gdata2/client/HttpException;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    .line 790
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 792
    :cond_0
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when redownloading the entry due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in response to an operation of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    .end local v0           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 796
    .local v0, e:Lcom/google/wireless/gdata2/GDataException;
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when redownloading the entry due to exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in response to an operation of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 2573
    if-nez p0, :cond_1

    .line 2574
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Cannot get AllCalendars url from a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v3

    .line 2591
    :goto_0
    return-object v0

    .line 2579
    :cond_1
    const-string v0, "/private/full"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2580
    const-string v0, "/private/full"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2583
    :cond_2
    const-string v0, "/private/free-busy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2584
    const-string v0, "/private/free-busy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/calendar/feeds"

    const-string v2, "/calendar/feeds/default/allcalendars/full"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2588
    :cond_3
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2589
    const-string v0, "CalendarSyncAdapter"

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

    .line 2591
    goto :goto_0
.end method

.method private getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "client"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 590
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 593
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 594
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getCurrentCalendars(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 9
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 976
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 977
    .local v6, calendarIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 978
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 983
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 985
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 989
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_1
    return-object v6
.end method

.method private getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->encodedCalendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    const-string v1, "%40"

    const-string v2, "#%40"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync1 LIKE \'%/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESCAPE \'#\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_account_type=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const-string v5, "access_level"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEditUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 2609
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpectedFeeds(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 10
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 493
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 494
    .local v7, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.calendar"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object v7

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 500
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    const-string v3, "_sync_account=? AND _sync_account_type=? AND sync_events=1"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 504
    .local v6, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, url:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 510
    .end local v8           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getIsSyncable(Landroid/accounts/Account;)Z
    .locals 13
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "service_cl"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    invoke-interface {v6}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 311
    .local v0, accounts:[Landroid/accounts/Account;
    move-object v1, v0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 312
    .local v2, calendarAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v12

    .line 319
    .end local v2           #calendarAccount:Landroid/accounts/Account;
    :goto_1
    return v6

    .line 311
    .restart local v2       #calendarAccount:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v2           #calendarAccount:Landroid/accounts/Account;
    :cond_1
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    const-string v6, "CalendarSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Account missing calendar service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v6, v11

    .line 319
    goto :goto_1

    .line 320
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 321
    .local v3, e:Landroid/accounts/AuthenticatorException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v3}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getOperationForCalendarEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1596
    .line 1597
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1599
    if-nez v0, :cond_1

    .line 1601
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "DELETE operation cannot be sent to the server with a null editUri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v3

    .line 1615
    :goto_0
    return-object v0

    .line 1606
    :cond_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_2
    if-eqz v0, :cond_3

    .line 1608
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_0

    .line 1610
    :cond_3
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1611
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "INSERT operation not supported for Calendar entries"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v3

    .line 1613
    goto :goto_0
.end method

.method private getOperationForEventEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1556
    .line 1557
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1559
    if-nez v2, :cond_1

    .line 1561
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "DELETE operation cannot be sent to the server with a null editUri"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v4

    .line 1592
    :goto_0
    return-object v1

    .line 1568
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-object v1, v0

    .line 1569
    invoke-virtual {v1, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 1570
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    .line 1571
    invoke-static {v2, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v1

    goto :goto_0

    .line 1572
    :cond_2
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1573
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCalendarUrl()Ljava/lang/String;

    move-result-object v1

    .line 1574
    if-nez v1, :cond_4

    .line 1576
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1577
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "INSERT operation cannot be sent to the server with a null feedUrl"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v4

    .line 1579
    goto :goto_0

    .line 1581
    :cond_4
    invoke-static {v1, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v1

    goto :goto_0

    .line 1583
    :cond_5
    if-nez v2, :cond_7

    .line 1585
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1586
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "UPDATE operation cannot be sent to the server with a null editUri"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v1, v4

    .line 1588
    goto :goto_0

    .line 1590
    :cond_7
    invoke-static {v2, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v1

    goto :goto_0
.end method

.method private getOperationFromEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 1
    .parameter "entry"

    .prologue
    .line 1546
    instance-of v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eqz v0, :cond_0

    .line 1547
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationForEventEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    .line 1552
    :goto_0
    return-object v0

    .line 1549
    :cond_0
    instance-of v0, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-eqz v0, :cond_1

    .line 1550
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationForCalendarEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v0

    goto :goto_0

    .line 1552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 4
    .parameter "account"
    .parameter "provider"
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, syncStateChanged:Z
    invoke-static {p1, p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 442
    .local v1, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v0, feedSyncState:Landroid/os/Bundle;
    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 445
    const/4 v2, 0x1

    .line 448
    .end local v0           #feedSyncState:Landroid/os/Bundle;
    :cond_0
    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v1, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 451
    :cond_1
    return-object v1
.end method

.method private static getSelfUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 2600
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getAllCalendarsUrlFromEventsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerDiffsForFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Ljava/lang/String;Z)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1782
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v11

    .line 1785
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v6, "_sync_account=? AND _sync_account_type=? AND sync1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p5, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1789
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1792
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1829
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1831
    :goto_0
    return-void

    .line 1796
    :cond_0
    :try_start_1
    new-instance v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;

    invoke-direct {v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;-><init>()V

    .line 1797
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    .line 1798
    sget v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 1799
    :goto_1
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 1802
    if-nez v3, :cond_3

    .line 1805
    const-string v3, "CalendarSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1806
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Ignoring sync request for non-syncable feed."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1829
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1798
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1811
    :cond_3
    :try_start_2
    sget-object v9, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v11

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsImpl(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;Ljava/lang/String;Z)V

    .line 1814
    invoke-virtual/range {p4 .. p4}, Landroid/content/SyncResult;->hasError()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1829
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1819
    :cond_4
    :try_start_3
    iget-object v3, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1821
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 1822
    const-string v3, "timezone"

    iget-object v4, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v10, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1829
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getServerDiffsImpl(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;Ljava/lang/String;Z)V
    .locals 37
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1924
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1928
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting getServerDiffs for account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "google_calendar_sync_entry_fetch_queue_size"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_entity_fetch_queue_size"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1941
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1944
    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v19

    move v1, v6

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1947
    const/4 v14, 0x0

    .line 1948
    const/16 v23, 0x0

    .line 1950
    const/16 v24, 0x0

    .line 1951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 1952
    const/16 v35, 0x0

    .line 1953
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 1954
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1955
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FeedSyncState is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for Url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v5

    .line 1961
    :try_start_0
    move/from16 v0, p9

    move-wide v1, v5

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->selectServerSyncMode(ZJLandroid/os/Bundle;)I

    move-result v7

    .line 1964
    packed-switch v7, :pswitch_data_0

    .line 2001
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "google_calendar_sync_num_events_per_batch"

    const/16 v7, 0xc8

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 2005
    const-string v5, "window_end"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p7

    iput-wide v0, v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->slidingWindowEnd:J

    .line 2007
    new-instance v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    move-object v6, v0

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v10, p8

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v13}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;-><init>(Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2010
    :try_start_1
    new-instance v6, Ljava/lang/Thread;

    const-string v7, "GDataFeedFetcher"

    invoke-direct {v6, v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2013
    new-instance v13, Lcom/google/android/syncadapters/EntityReader;

    const-string v14, "CalendarSyncAdapter"

    sget-object v18, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    sget-object v20, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    const-string v22, "_sync_id"

    move-object/from16 v15, p3

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v21, p6

    invoke-direct/range {v13 .. v22}, Lcom/google/android/syncadapters/EntityReader;-><init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_c

    .line 2016
    :try_start_2
    new-instance v6, Ljava/lang/Thread;

    const-string v7, "EntityReader"

    invoke-direct {v6, v13, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2019
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2020
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "starting processing of fetched entries"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 2024
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_num_applications_per_batch"

    const-wide/16 v8, 0x14

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_2 .. :try_end_2} :catch_d

    move-result-wide v6

    move/from16 v8, v24

    .line 2029
    :cond_6
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2030
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2031
    const-string v6, "CalendarSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServerDiffs: noticed a cancel during feed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", bailing out"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_3 .. :try_end_3} :catch_b

    .line 2131
    :cond_7
    if-eqz v35, :cond_8

    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CalendarSyncAdapterP"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2133
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2134
    if-eqz v35, :cond_45

    const-string v9, "SUCCESS"

    .line 2135
    :goto_3
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": processed "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " records in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v6, v6, v33

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms from feed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_9
    if-eqz v5, :cond_c

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_a
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_c
    if-eqz v13, :cond_0

    .line 2152
    :goto_4
    invoke-virtual {v13}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 1967
    :pswitch_0
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V

    .line 1969
    const-string v7, "CalendarSyncAdapter"

    const/4 v9, 0x3

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1970
    const-string v7, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Performing initial sync on calendarId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    move-wide v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": window end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_d
    const-string v7, "window_end"

    invoke-virtual {v12, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 2114
    :catch_0
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    .line 2115
    :goto_5
    :try_start_5
    const-string v9, "CalendarSyncAdapter"

    const-string v10, "getServerDiffs failed"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2116
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2131
    if-eqz v35, :cond_e

    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2133
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_40

    const-string v5, "SUCCESS"

    .line 2135
    :goto_6
    const-string v11, "CalendarSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v9, v33

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_f
    if-eqz v8, :cond_12

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_10
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_11
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_12
    if-eqz v7, :cond_0

    .line 2152
    :goto_7
    invoke-virtual {v7}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 1977
    :pswitch_1
    :try_start_6
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->upgradeToSlidingWindows(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 2117
    :catch_1
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    .line 2118
    :goto_8
    :try_start_7
    const-string v9, "CalendarSyncAdapter"

    const-string v10, "getServerDiffs failed"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2119
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2131
    if-eqz v35, :cond_13

    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2133
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_41

    const-string v5, "SUCCESS"

    .line 2135
    :goto_9
    const-string v11, "CalendarSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v9, v33

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_14
    if-eqz v8, :cond_17

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_15
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_16
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_17
    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 1980
    :pswitch_2
    :try_start_8
    const-string v7, "new_window_end"

    invoke-virtual {v12, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 2120
    :catch_2
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    .line 2121
    :goto_a
    :try_start_9
    const-string v9, "CalendarSyncAdapter"

    const-string v10, "getServerDiffs failed"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2122
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2131
    if-eqz v35, :cond_18

    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2133
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_42

    const-string v5, "SUCCESS"

    .line 2135
    :goto_b
    const-string v11, "CalendarSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v9, v33

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_19
    if-eqz v8, :cond_1c

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_1a
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_1b
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_1c
    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 1985
    :pswitch_3
    :try_start_a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1986
    const-string v6, "moveWindow"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1987
    const-string v6, "feed"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v6, "force"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1991
    const/4 v6, 0x0

    const-string v7, "com.android.calendar"

    invoke-static {v6, v7, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 2123
    :catch_3
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    .line 2124
    :goto_c
    :try_start_b
    const-string v9, "CalendarSyncAdapter"

    const-string v10, "getServerDiffs interrupted"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2131
    if-eqz v35, :cond_1d

    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2133
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_43

    const-string v5, "SUCCESS"

    .line 2135
    :goto_d
    const-string v11, "CalendarSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v9, v33

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_1e
    if-eqz v8, :cond_21

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_1f
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_20
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_21
    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 1994
    :pswitch_4
    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-gtz v5, :cond_4

    .line 1996
    :try_start_c
    const-string v5, "window_end"

    const-wide/16 v6, 0x0

    invoke-virtual {v12, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 2126
    :catch_4
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    .line 2127
    :goto_e
    :try_start_d
    const-string v9, "CalendarSyncAdapter"

    const-string v10, "getServerDiffs failed"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2128
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v9, v0

    iget-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    iput-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2129
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v9, v0

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v0, v9

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/content/SyncResult;->delayUntil:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2131
    if-eqz v35, :cond_22

    const-string v5, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2133
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_44

    const-string v5, "SUCCESS"

    .line 2135
    :goto_f
    const-string v11, "CalendarSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": processed "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v9, v9, v33

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_23
    if-eqz v8, :cond_26

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_24
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_25
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_26
    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 2039
    :cond_27
    :try_start_e
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 2040
    sget-object v9, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    move-object/from16 v0, p2

    move-object v1, v9

    if-ne v0, v1, :cond_28

    .line 2042
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 2089
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isPartialSyncUnavailable()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2090
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V

    .line 2091
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Partial sync unavailable for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2114
    :catch_5
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    goto/16 :goto_5

    .line 2045
    :cond_28
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entry:Lcom/google/wireless/gdata2/data/Entry;

    move-object/from16 v25, v0

    .line 2046
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entity:Landroid/content/Entity;

    move-object/from16 v26, v0

    .line 2047
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entryIndex:I

    move v9, v0

    .line 2048
    const-string v10, "CalendarSyncAdapter"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "CalendarSyncAdapterFine"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 2049
    :cond_29
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calling applyEntryToEntity for "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_2a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_e .. :try_end_e} :catch_b

    move-result v10

    .line 2053
    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v20, p6

    move-object/from16 v22, p1

    move-object/from16 v23, p3

    move-object/from16 v28, p4

    move-object/from16 v32, p7

    :try_start_f
    invoke-interface/range {v20 .. v32}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_f .. :try_end_f} :catch_b

    .line 2067
    :try_start_10
    const-string v10, "lastFetchedId"

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v10, "lastFetchedIndex"

    invoke-virtual {v12, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2071
    const-string v10, "CalendarSyncAdapter"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2b

    const-string v10, "CalendarSyncAdapterP"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 2072
    :cond_2b
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Index "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2076
    add-int/lit8 v8, v8, 0x1

    .line 2077
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v9, v0

    iget-wide v10, v9, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v9, Landroid/content/SyncStats;->numEntries:J

    .line 2078
    if-lez v8, :cond_6

    int-to-long v9, v8

    rem-long/2addr v9, v6

    const-wide/16 v14, 0x0

    cmp-long v9, v9, v14

    if-nez v9, :cond_6

    .line 2079
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 2080
    const-string v9, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "CalendarSyncAdapterP"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2082
    :cond_2d
    const-string v9, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Applied "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " records in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v33

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms from feed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2117
    :catch_6
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    goto/16 :goto_8

    .line 2058
    :catch_7
    move-exception v9

    .line 2061
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v10

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2120
    :catch_8
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    goto/16 :goto_a

    .line 2063
    :catch_9
    move-exception v9

    .line 2064
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v10

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2123
    :catch_a
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    goto/16 :goto_c

    .line 2093
    :cond_2e
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2094
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection failed during feed read of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2126
    :catch_b
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    goto/16 :goto_e

    .line 2096
    :cond_2f
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->resumptionFailed()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2097
    const-string v6, "lastFetchedId"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2098
    const-string v6, "lastFetchedIndex"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2099
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 2100
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resumption failed during feed read of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_10 .. :try_end_10} :catch_b

    .line 2131
    :catchall_0
    move-exception v6

    move-object v7, v13

    move/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v36

    :goto_10
    if-eqz v35, :cond_30

    const-string v9, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_30

    const-string v9, "CalendarSyncAdapterP"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 2133
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v35, :cond_3f

    const-string v11, "SUCCESS"

    .line 2135
    :goto_11
    const-string v13, "CalendarSyncAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ": processed "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " records in "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v9, v9, v33

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ms from feed "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", updated time is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "feed_updated_time"

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_31
    if-eqz v8, :cond_34

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v9, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v9, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_32
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v9, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_33
    invoke-virtual {v8}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_34
    if-eqz v7, :cond_35

    .line 2152
    invoke-virtual {v7}, Lcom/google/android/syncadapters/EntityReader;->close()V

    .line 2131
    :cond_35
    throw v5

    .line 2102
    :cond_36
    :try_start_11
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isUnparsableFeed()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2103
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unparsable feed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2105
    :cond_37
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isResourceUnavailable()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2106
    new-instance v6, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getRetryAfter()J

    move-result-wide v9

    invoke-direct {v6, v9, v10}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v6

    .line 2108
    :cond_38
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2109
    new-instance v6, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>()V

    throw v6

    .line 2111
    :cond_39
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v20, p8

    move-object/from16 v21, p7

    invoke-direct/range {v14 .. v21}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_11 .. :try_end_11} :catch_b

    .line 2113
    const/4 v6, 0x1

    .line 2131
    if-eqz v6, :cond_3a

    const-string v7, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "CalendarSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 2133
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2134
    if-eqz v6, :cond_46

    const-string v6, "SUCCESS"

    .line 2135
    :goto_12
    const-string v7, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": processed "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " records in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v9, v33

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms from feed "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", updated time is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "feed_updated_time"

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_3b
    if-eqz v5, :cond_3e

    .line 2142
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 2143
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2144
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2146
    :cond_3c
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2147
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2149
    :cond_3d
    invoke-virtual {v5}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 2151
    :cond_3e
    if-eqz v13, :cond_0

    goto/16 :goto_4

    .line 2134
    :cond_3f
    const-string v11, "FAILURE"

    goto/16 :goto_11

    :cond_40
    const-string v5, "FAILURE"

    goto/16 :goto_6

    :cond_41
    const-string v5, "FAILURE"

    goto/16 :goto_9

    :cond_42
    const-string v5, "FAILURE"

    goto/16 :goto_b

    :cond_43
    const-string v5, "FAILURE"

    goto/16 :goto_d

    :cond_44
    const-string v5, "FAILURE"

    goto/16 :goto_f

    :cond_45
    const-string v9, "FAILURE"

    goto/16 :goto_3

    :cond_46
    const-string v6, "FAILURE"

    goto/16 :goto_12

    .line 2131
    :catchall_1
    move-exception v5

    move/from16 v6, v24

    move-object/from16 v7, v23

    move-object v8, v14

    goto/16 :goto_10

    :catchall_2
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_10

    :catchall_3
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_10

    :catchall_4
    move-exception v5

    goto/16 :goto_10

    .line 2126
    :catch_c
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_e

    :catch_d
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_e

    .line 2123
    :catch_e
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_c

    :catch_f
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_c

    .line 2120
    :catch_10
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_a

    :catch_11
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_a

    .line 2117
    :catch_12
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_8

    :catch_13
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_8

    .line 2114
    :catch_14
    move-exception v6

    move-object/from16 v7, v23

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_5

    :catch_15
    move-exception v6

    move-object v7, v13

    move-object v8, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_5

    .line 1964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncWindowEnd()J
    .locals 6

    .prologue
    .line 2426
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2427
    const-string v0, "google_calendar_sync_window_days2"

    const-wide/16 v3, 0x16d

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2429
    const-string v3, "google_calendar_sync_window_update_days2"

    const-wide/16 v4, 0x1e

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    .line 2432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static getSyncWindowEnd(JJJ)J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 2446
    const-string v0, "CalendarSyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSyncWindowEnd: window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", advanceInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_0
    cmp-long v0, p0, v3

    if-lez v0, :cond_1

    cmp-long v0, p2, v3

    if-lez v0, :cond_1

    .line 2453
    const-wide/32 v0, 0x5265c00

    mul-long/2addr v0, p0

    add-long/2addr v0, p4

    .line 2460
    div-long/2addr v0, p2

    mul-long/2addr v0, p2

    .line 2462
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v3

    goto :goto_0
.end method

.method private innerPerformSync(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 17
    .parameter "authInfo"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 333
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 335
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PerformSync for account: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", with extras: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 340
    .local v14, isSyncable:I
    if-gez v14, :cond_1

    .line 341
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getIsSyncable(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move v14, v5

    .line 342
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 345
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    const-string v6, "com.android.calendar"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 350
    :cond_1
    const-string v5, "initialize"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    :cond_2
    :goto_1
    return-void

    .line 341
    :cond_3
    const/4 v5, 0x0

    move v14, v5

    goto :goto_0

    .line 355
    :cond_4
    if-lez v14, :cond_2

    .line 360
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 363
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 369
    const-string v5, "deletions_override"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 371
    .local v8, overrideTooManyDeletions:Z
    const-string v5, "discard_deletions"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 373
    .local v13, discardLocalDeletions:Z
    if-eqz v13, :cond_5

    .line 374
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .local v16, values:Landroid/content/ContentValues;
    const-string v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "deleted=1"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object/from16 v2, v16

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v5, "upload"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 383
    .local v15, uploadOnly:Z
    if-nez v15, :cond_6

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsOrig(Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/SyncResult;)V

    .line 385
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "google_calendar_sync_max_loop_attempts"

    const-wide/16 v9, 0x6

    invoke-static {v5, v6, v9, v10}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 395
    .local v6, maxLoopAttempts:J
    sget-object v11, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sEventHandler:Lcom/google/android/syncadapters/calendar/EventHandler;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 402
    sget-object v11, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sCalendarHandler:Lcom/google/android/syncadapters/calendar/CalendarHandler;

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #maxLoopAttempts:J
    move-result v5

    if-eqz v5, :cond_2

    .line 410
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "PerformSync: sync is complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method static isSameCalendarData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1384
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_NAME_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1432
    :goto_0
    return v0

    .line 1390
    :cond_0
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_DISPLAY_NAME_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 1393
    goto :goto_0

    .line 1396
    :cond_1
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_TIMEZONE_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1399
    goto :goto_0

    .line 1402
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1403
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_COLOR_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "color"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 1405
    goto :goto_0

    .line 1408
    :cond_3
    const-string v0, "access_level"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1409
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "access_level"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 1411
    goto :goto_0

    .line 1414
    :cond_4
    const-string v0, "sync1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1415
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 1417
    goto/16 :goto_0

    .line 1420
    :cond_5
    const-string v0, "sync4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1421
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_ON_SERVER_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1423
    goto/16 :goto_0

    .line 1426
    :cond_6
    const-string v0, "sync5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1427
    sget v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_HIDDEN_ON_SERVER_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 1429
    goto/16 :goto_0

    .line 1432
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .locals 19
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getExpectedFeeds(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v13

    .line 520
    .local v13, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 521
    .local v11, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 522
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "feed"

    aput-object v7, v5, v6

    const-string v6, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "com.android.calendar"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 527
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 529
    .local v16, id:J
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 530
    .local v14, feed:Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 533
    .end local v14           #feed:Ljava/lang/String;
    .end local v16           #id:J
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 537
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 538
    .local v12, expectedFeed:Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 540
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v18, values:Landroid/content/ContentValues;
    const-string v4, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v4, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v4, "feed"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "service"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getServiceName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v4, "authority"

    const-string v5, "com.android.calendar"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 548
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 551
    .end local v12           #expectedFeed:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local p0
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 553
    .local v10, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 554
    .restart local v16       #id:J
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 557
    .end local v10           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16           #id:J
    :cond_3
    return-void
.end method

.method private processAccountCalendars(Landroid/accounts/Account;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/HttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1008
    const/4 v1, 0x0

    .line 1010
    :try_start_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getUserCalendarsUrl()Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-static {p1, v2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1012
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    invoke-virtual {v3, v2, p2}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getParserForUserCalendars(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1014
    :try_start_1
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processCalendars(Landroid/accounts/Account;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/util/HashSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1028
    if-eqz v1, :cond_0

    .line 1029
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    .line 1032
    :cond_0
    return-void

    .line 1015
    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 1016
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1026
    :goto_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1028
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 1029
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    :cond_1
    throw v0

    .line 1018
    :sswitch_0
    :try_start_3
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    const-string v3, "Non authorized by server"

    invoke-direct {v0, v3, v1}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1021
    :sswitch_1
    const-string v0, "CalendarSyncAdapter"

    const-string v3, "Unable to process calendars from server -- encountered an AllDeletedUnavailableException, this should never happen"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1028
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1015
    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method private processCalendars(Landroid/accounts/Account;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/util/HashSet;)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/wireless/gdata2/parser/GDataParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1196
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    .line 1197
    const/4 v4, 0x0

    .line 1198
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1200
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v5

    .line 1201
    const-string v4, "CalendarSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1202
    const-string v4, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Entry;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_0
    move-object v0, v5

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    move-object v4, v0

    .line 1205
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->calendarEntryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    .line 1207
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v4, v5

    .line 1208
    goto :goto_0

    .line 1211
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCursorForSimilarFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1212
    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_13

    .line 1217
    const/4 v10, 0x1

    .line 1218
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1219
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v11, v0

    sget v12, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_ACCOUNT_INDEX:I

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1221
    const/4 v10, 0x0

    .line 1226
    :cond_3
    if-nez v10, :cond_6

    .line 1231
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1234
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1237
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_DIRTY_INDEX:I

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 1239
    :goto_1
    invoke-static {v9, v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isSameCalendarData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v12

    if-nez v12, :cond_4

    if-nez v4, :cond_4

    .line 1240
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 1243
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v4, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1245
    const-string v4, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1246
    const-string v4, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating existing calendar "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v4, v5

    .line 1356
    goto/16 :goto_0

    .line 1237
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1256
    :cond_6
    const/4 v10, 0x1

    :try_start_1
    const-string v11, "sync4"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    .line 1261
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1263
    sget v11, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ACCESS_LEVEL_INDEX:I

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1265
    sget v13, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_ID_INDEX:I

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1268
    const/4 v15, 0x1

    sget v16, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    const/4 v15, 0x1

    .line 1270
    :goto_5
    const/16 v16, 0x1

    sget v17, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SELECTED_INDEX:I

    move-object v0, v9

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    .line 1275
    :goto_6
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCalendarAccessLevelFromEntry(B)I

    move-result v4

    .line 1278
    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v4, v11, v17

    if-ltz v4, :cond_c

    .line 1283
    const-string v4, "sync_events"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    const-string v4, "selected"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    const-string v4, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1287
    const-string v4, "CalendarSyncAdapter"

    const-string v10, "New feed with lower access level: just need to add it"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_7
    :goto_7
    const-string v4, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v4, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v4, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1325
    const-string v4, "CalendarSyncAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding new calendar "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_8
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1332
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1256
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1268
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1270
    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    .line 1294
    :cond_c
    if-nez v15, :cond_d

    if-eqz v16, :cond_e

    .line 1295
    :cond_d
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1296
    const-string v11, "sync_events"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    const-string v11, "selected"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    sget-object v11, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v4, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    const-string v11, "CalendarSyncAdapter"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1304
    const-string v11, "CalendarSyncAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating existing calendar that has lower access level"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_e
    const-string v4, "sync_events"

    if-nez v15, :cond_f

    if-eqz v10, :cond_11

    :cond_f
    const/4 v11, 0x1

    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v4, "selected"

    if-nez v16, :cond_10

    if-eqz v10, :cond_12

    :cond_10
    const/4 v10, 0x1

    :goto_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    const-string v4, "CalendarSyncAdapter"

    const/4 v10, 0x2

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1318
    const-string v4, "CalendarSyncAdapter"

    const-string v10, "New feed with higher access level: swapped visible and sync status"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 1313
    :cond_11
    const/4 v11, 0x0

    goto :goto_8

    .line 1315
    :cond_12
    const/4 v10, 0x0

    goto :goto_9

    .line 1336
    :cond_13
    if-eqz v9, :cond_14

    .line 1337
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1341
    :cond_14
    const/4 v9, 0x0

    .line 1342
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "com.android.calendar"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1345
    const/4 v4, 0x1

    .line 1347
    :goto_a
    const-string v9, "sync_events"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1348
    const-string v9, "selected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    const-string v4, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v4, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v4, "CalendarSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1352
    const-string v4, "CalendarSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding new calendar "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_15
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1359
    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1360
    const-string v4, "CalendarSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1361
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "Bulk updating calendar list."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_17
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ContentValues;

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1366
    :cond_18
    return-void

    :cond_19
    move v4, v9

    goto :goto_a
.end method

.method private processLocalChangesForHandler(JZLcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    .locals 12
    .parameter "maxLoopAttempts"
    .parameter "overrideTooManyDeletions"
    .parameter "authInfo"
    .parameter "provider"
    .parameter "handler"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    int-to-long v1, v7

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 421
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v3, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v3, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long v10, v1, v3

    .local v10, numChangesBefore:J
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move v6, p3

    .line 424
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V

    .line 426
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v3, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v3, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long v8, v1, v3

    .line 428
    .local v8, numChangesAfter:J
    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    .line 432
    .end local v8           #numChangesAfter:J
    .end local v10           #numChangesBefore:J
    :cond_0
    return-void

    .line 420
    .restart local v8       #numChangesAfter:J
    .restart local v10       #numChangesBefore:J
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .locals 2
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
    .line 1679
    iget-object v0, p2, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1680
    const-string v1, "feed_updated_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1681
    const-string v1, "do_incremental_sync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1682
    const-string v1, "lastFetchedId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1683
    const-string v1, "lastFetchedIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1684
    const-string v1, "window_end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1685
    const-string v1, "new_window_end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p2, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1687
    return-void
.end method

.method private static rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2618
    if-nez p0, :cond_1

    .line 2619
    const-string v0, "CalendarSyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2620
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Cannot rewrite a NULL url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    const/4 v0, 0x0

    .line 2630
    :goto_0
    return-object v0

    .line 2624
    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 2625
    goto :goto_0

    .line 2627
    :cond_2
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid url parameter, unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2630
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

.method static selectServerSyncMode(ZJLandroid/os/Bundle;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 1853
    const-string v0, "do_incremental_sync"

    invoke-virtual {p3, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1855
    const-string v1, "window_end"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1856
    const-string v3, "feed_updated_time"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "lastFetchedIndex"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    .line 1860
    :goto_0
    if-nez v3, :cond_3

    .line 1861
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: No last updated time present for feed, preparing for full sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v6

    .line 1911
    :goto_1
    return v0

    :cond_2
    move v3, v6

    .line 1856
    goto :goto_0

    .line 1866
    :cond_3
    if-eqz v0, :cond_f

    .line 1868
    cmp-long v0, p1, v7

    if-gtz v0, :cond_5

    .line 1869
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1870
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: No sliding window defined"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v5

    .line 1872
    goto :goto_1

    .line 1873
    :cond_5
    cmp-long v0, v1, v7

    if-nez v0, :cond_7

    .line 1875
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1876
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: Upgrading to sliding window sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 1879
    :cond_7
    if-eqz p0, :cond_b

    .line 1880
    const-string v0, "new_window_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1882
    cmp-long v0, v0, v7

    if-lez v0, :cond_9

    .line 1883
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1884
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: Already moving the sync window.  Ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v5

    .line 1886
    goto :goto_1

    .line 1890
    :cond_9
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1891
    const-string v0, "CalendarSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync mode: Moving the sliding window to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v4

    .line 1893
    goto :goto_1

    .line 1895
    :cond_b
    cmp-long v0, p1, v1

    if-lez v0, :cond_d

    .line 1896
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1897
    const-string v0, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync mode: Scheduling sliding window move from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_c
    const/4 v0, 0x4

    goto/16 :goto_1

    .line 1902
    :cond_d
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1903
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: default incremental sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v0, v5

    .line 1905
    goto/16 :goto_1

    .line 1908
    :cond_f
    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1909
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Sync mode: continuing full sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v0, v5

    .line 1911
    goto/16 :goto_1
.end method

.method private sendEntityToServer(Landroid/content/Entity;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1624
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p4

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v5

    .line 1626
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getOperationFromEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    move-result-object v5

    .line 1627
    if-nez v5, :cond_1

    .line 1628
    const-string v5, "CalendarSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1629
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Cannot send Entity to server (null operation retrieved from Entry)"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v6

    .line 1636
    :try_start_0
    const-string v7, "CalendarSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1637
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "sending operation to server"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1647
    :goto_1
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1648
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "applying resulting entry to entity"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1656
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1658
    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v7, v0

    const/4 v9, 0x0

    invoke-static {v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p5

    move-object/from16 v8, p4

    move-object/from16 v11, p1

    move-object/from16 v13, p6

    invoke-interface/range {v5 .. v17}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 1663
    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1664
    const-string v6, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1665
    const-string v6, "CalendarSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "results are: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-static {v8, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1667
    :catch_0
    move-exception v5

    .line 1668
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "error applying batch"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1640
    :catch_1
    move-exception v7

    .line 1642
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->invalidateAuthToken()V

    .line 1643
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1652
    :pswitch_1
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto :goto_2

    .line 1669
    :catch_2
    move-exception v5

    .line 1670
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "error applying batch"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2162
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Entry failed, skipping "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2163
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2167
    :cond_0
    return-void
.end method

.method private updateCalendarsFromServerFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 12
    .parameter "account"
    .parameter "authToken"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v10, 0x1

    .line 929
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    if-nez v7, :cond_1

    .line 930
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "Cannot fetch calendars -- no mCalendarClient."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 937
    .restart local p0
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCurrentCalendars(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v3

    .line 939
    .local v3, calendarsNotSeenYet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->processAccountCalendars(Landroid/accounts/Account;Ljava/lang/String;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 963
    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 964
    .local v2, calendarContentUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 965
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p0
    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 967
    .local v0, calId:J
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 940
    .end local v0           #calId:J
    .end local v2           #calendarContentUri:Landroid/net/Uri;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p0
    :catch_0
    move-exception v5

    .line 941
    .local v5, e:Ljava/io/IOException;
    const-string v7, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get calendar accounts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v7, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 944
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 945
    .local v5, e:Lcom/google/wireless/gdata2/parser/ParseException;
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "Unable to get calendar accounts"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    iget-object v7, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    .line 948
    .end local v5           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :catch_2
    move-exception v5

    .line 949
    .local v5, e:Lcom/google/wireless/gdata2/client/HttpException;
    const-string v7, "CalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get calendar accounts: HTTP error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x1f7

    if-ne v7, v8, :cond_2

    .line 951
    iget-object v7, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    .line 953
    :cond_2
    iget-object v7, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    .line 956
    .end local v5           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catch_3
    move-exception v5

    .line 957
    .local v5, e:Landroid/accounts/OperationCanceledException;
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "Unable to get calendar accounts"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    .locals 6
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
    const/4 v5, 0x3

    .line 1696
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1697
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing initial sync on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_0
    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local android etag magic value"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-interface {p3, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calendar_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1705
    const-string v1, "CalendarSyncAdapter"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1706
    const-string v1, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applied ETAG_MAGIC_VALUE to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows for Calendar: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_1
    return-void
.end method

.method private updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1715
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1717
    iget-object v1, p3, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v1, p6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1718
    const-string v2, "lastFetchedId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1719
    const-string v2, "lastFetchedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1721
    const-string v2, "new_window_end"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1723
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 1725
    const-string v4, "CalendarSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1726
    const-string v4, "CalendarSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sliding sync window advanced to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    const-string v4, "new_window_end"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1729
    const-string v4, "window_end"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1737
    :goto_0
    const-string v2, "do_incremental_sync"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1739
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1740
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "switching from full to incremental"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_1
    invoke-interface {p4, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calendar_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "local android etag magic value"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p7, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    const-string v2, "do_incremental_sync"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1755
    :cond_2
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1756
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing back feedSyncState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    return-void

    .line 1735
    :cond_4
    const-string v2, "feed_updated_time"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private upgradeToSlidingWindows(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 2411
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v0

    .line 2412
    const-string v2, "CalendarSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2413
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading to sliding windows sync: end is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_0
    const-string v0, "window_end"

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getSyncWindowEnd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2417
    return-void
.end method


# virtual methods
.method protected getCalendarAccessLevelFromEntry(B)I
    .locals 1
    .parameter "entryAccessLevel"

    .prologue
    .line 1503
    packed-switch p1, :pswitch_data_0

    .line 1523
    const/4 v0, 0x0

    .line 1525
    .local v0, accessLevel:I
    :goto_0
    return v0

    .line 1505
    .end local v0           #accessLevel:I
    :pswitch_0
    const/4 v0, 0x0

    .line 1506
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1508
    .end local v0           #accessLevel:I
    :pswitch_1
    const/16 v0, 0xc8

    .line 1509
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1511
    .end local v0           #accessLevel:I
    :pswitch_2
    const/16 v0, 0x64

    .line 1512
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1514
    .end local v0           #accessLevel:I
    :pswitch_3
    const/16 v0, 0x258

    .line 1515
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1517
    .end local v0           #accessLevel:I
    :pswitch_4
    const/16 v0, 0x2bc

    .line 1518
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1520
    .end local v0           #accessLevel:I
    :pswitch_5
    const/16 v0, 0x320

    .line 1521
    .restart local v0       #accessLevel:I
    goto :goto_0

    .line 1503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected getEntitySelectionFromHandler(Lcom/google/android/syncadapters/EntryAndEntityHandler;)Ljava/lang/String;
    .locals 1
    .parameter "handler"

    .prologue
    .line 579
    instance-of v0, p1, Lcom/google/android/syncadapters/calendar/EventHandler;

    if-eqz v0, :cond_0

    .line 580
    check-cast p1, Lcom/google/android/syncadapters/calendar/EventHandler;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 582
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    if-eqz v0, :cond_1

    .line 583
    check-cast p1, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerDiffsOrig(Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/SyncResult;)V
    .locals 22
    .parameter "extras"
    .parameter "provider"
    .parameter "authInfo"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 857
    .local v11, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const-string v4, "feed"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 858
    .local v21, syncingSingleFeed:Z
    :goto_0
    if-eqz p1, :cond_2

    const-string v4, "metafeedonly"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 860
    .local v20, syncingMetafeedOnly:Z
    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    .line 861
    .local v5, account:Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 863
    .local v6, authToken:Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 864
    if-eqz v20, :cond_3

    .line 865
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "\'metafeedonly\' and \'feed\' extras both set. They are not compatible."

    .end local v5           #account:Landroid/accounts/Account;
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v6           #authToken:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 857
    .end local v20           #syncingMetafeedOnly:Z
    .end local v21           #syncingSingleFeed:Z
    :cond_1
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_0

    .line 858
    .restart local v21       #syncingSingleFeed:Z
    :cond_2
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_1

    .line 869
    .restart local v5       #account:Landroid/accounts/Account;
    .restart local v6       #authToken:Ljava/lang/String;
    .restart local v20       #syncingMetafeedOnly:Z
    :cond_3
    const-string v4, "feed"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 871
    .local v9, feedUrl:Ljava/lang/String;
    const-string v4, "moveWindow"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, moveWindowSync:Z
    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 873
    invoke-direct/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getServerDiffsForFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Ljava/lang/String;Z)V

    goto :goto_2

    .line 884
    .end local v9           #feedUrl:Ljava/lang/String;
    .end local v10           #moveWindowSync:Z
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->updateCalendarsFromServerFeed(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 886
    if-nez v20, :cond_0

    .line 892
    const/4 v4, 0x2

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local v6           #authToken:Ljava/lang/String;
    aput-object v6, v15, v4

    const/4 v4, 0x1

    iget-object v6, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v15, v4

    .line 893
    .local v15, accountSelectionArgs:[Ljava/lang/String;
    sget-object v12, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v14, "_sync_account=? AND _sync_account_type=?"

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 897
    .local v17, cursor:Landroid/database/Cursor;
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 900
    .local v19, syncExtras:Landroid/os/Bundle;
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 901
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_SYNC_EVENTS_INDEX:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 902
    .local v18, syncEvents:Z
    :goto_4
    sget v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION_EVENTS_URL_INDEX:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 904
    .restart local v9       #feedUrl:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 909
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->clear()V

    .line 910
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 911
    const-string v4, "feed"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 916
    .end local v9           #feedUrl:Ljava/lang/String;
    .end local v18           #syncEvents:Z
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 901
    :cond_6
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_4

    .line 916
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 2262
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 2263
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2265
    :cond_0
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 2266
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2268
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 2269
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2271
    :cond_2
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2272
    return-void
.end method

.method protected hasTooManyChanges(JJ)Z
    .locals 10
    .parameter "numEntries"
    .parameter "numChanges"

    .prologue
    const-wide/16 v7, 0x0

    .line 560
    cmp-long v6, p1, v7

    if-nez v6, :cond_0

    move-wide v4, v7

    .line 563
    .local v4, percentChanged:J
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_num_allowed_simultaneous changes"

    const-wide/16 v8, 0x5

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 567
    .local v0, numAllowedSimultaneousChanges:J
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "google_calendar_sync_percent_allowed_simultaneous_changes"

    const-wide/16 v8, 0x14

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 571
    .local v2, percentAllowedSimultaneousChanges:J
    cmp-long v6, p3, v0

    if-lez v6, :cond_1

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 560
    .end local v0           #numAllowedSimultaneousChanges:J
    .end local v2           #percentAllowedSimultaneousChanges:J
    .end local v4           #percentChanged:J
    :cond_0
    const-wide/16 v6, 0x64

    mul-long/2addr v6, p3

    div-long/2addr v6, p1

    move-wide v4, v6

    goto :goto_0

    .line 571
    .restart local v0       #numAllowedSimultaneousChanges:J
    .restart local v2       #percentAllowedSimultaneousChanges:J
    .restart local v4       #percentChanged:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1038
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1040
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1042
    if-nez v0, :cond_0

    .line 1044
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Received an onAccountsChanged() but has not found any sync"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_0
    return-void

    .line 1048
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1054
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1058
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;

    invoke-direct {v0, p0, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/util/HashSet;)V

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "service_cl"

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2253
    invoke-virtual {p0, v0, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 2254
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CalendarSyncAdapter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2256
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const-wide/16 v7, 0x1

    .line 270
    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "cl"

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .local v1, authInfo:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 272
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->innerPerformSync(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 273
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "CalendarSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping Sync for Account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "as it is cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 280
    .local v6, e:Landroid/os/RemoteException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v2, v7

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    .line 281
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 282
    .local v6, e:Ljava/io/IOException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v7

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 283
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 284
    .local v6, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->invalidateAuthToken()V

    .line 285
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v7

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 286
    .end local v6           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method processLocalChanges(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V
    .locals 23
    .parameter "authInfo"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "handler"
    .parameter "overrideTooManyDeletions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 679
    :goto_0
    return-void

    .line 609
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getEntitySelectionFromHandler(Lcom/google/android/syncadapters/EntryAndEntityHandler;)Ljava/lang/String;

    move-result-object v9

    .line 610
    .local v9, selection:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 611
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "EntityIterator cannot have a null selection parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-interface/range {v5 .. v10}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 623
    .local v21, iterator:Landroid/content/EntityIterator;
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v19

    .line 624
    .local v19, entityUri:Landroid/net/Uri;
    if-nez p5, :cond_7

    if-eqz v19, :cond_7

    .line 625
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object v3, v5

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 627
    .local v22, total:I
    const/16 v17, 0x0

    .line 628
    .local v17, deletes:I
    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 673
    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 675
    .end local v17           #deletes:I
    .end local v19           #entityUri:Landroid/net/Uri;
    .end local v21           #iterator:Landroid/content/EntityIterator;
    .end local v22           #total:I
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 677
    .local v18, e:Landroid/os/RemoteException;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    .line 632
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v17       #deletes:I
    .restart local v19       #entityUri:Landroid/net/Uri;
    .restart local v21       #iterator:Landroid/content/EntityIterator;
    .restart local v22       #total:I
    :cond_3
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 633
    .local v11, entity:Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 635
    .local v20, isDeleted:Z
    :goto_2
    if-eqz v20, :cond_2

    .line 636
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 633
    .end local v20           #isDeleted:Z
    :cond_4
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_2

    .line 639
    .end local v11           #entity:Landroid/content/Entity;
    :cond_5
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v5, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v7, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->hasTooManyChanges(JJ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 640
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not doing any more updates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncStats;->clear()V

    .line 643
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v6, v0

    iput-wide v6, v5, Landroid/content/SyncStats;->numEntries:J

    .line 644
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v6, v0

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 645
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 646
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 649
    :cond_6
    :try_start_5
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->reset()V

    .line 652
    .end local v17           #deletes:I
    .end local v22           #total:I
    :cond_7
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->isCanceled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    .line 673
    :try_start_6
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 656
    :cond_8
    :try_start_7
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 658
    .restart local v11       #entity:Landroid/content/Entity;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata2/calendar/client/CalendarClient;

    move-object v13, v0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v16, p3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->sendEntityToServer(Landroid/content/Entity;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 660
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 661
    .local v18, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_9
    const-string v5, "CalendarSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error with entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 673
    .end local v11           #entity:Landroid/content/Entity;
    .end local v18           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v19           #entityUri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    :try_start_a
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V

    throw v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 663
    .restart local v11       #entity:Landroid/content/Entity;
    .restart local v19       #entityUri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    move-object/from16 v18, v5

    .line 664
    .local v18, e:Ljava/io/IOException;
    :try_start_b
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_3

    .line 665
    .end local v18           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object/from16 v18, v5

    .line 666
    .local v18, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto :goto_3

    .line 667
    .end local v18           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :catch_4
    move-exception v5

    move-object/from16 v18, v5

    .line 668
    .local v18, e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v5, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 669
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 673
    .end local v11           #entity:Landroid/content/Entity;
    .end local v18           #e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    :cond_9
    :try_start_c
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0
.end method
