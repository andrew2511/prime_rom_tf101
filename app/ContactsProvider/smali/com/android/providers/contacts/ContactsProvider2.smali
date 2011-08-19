.class public Lcom/android/providers/contacts/ContactsProvider2;
.super Lcom/android/common/content/SQLiteContentProvider;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;,
        Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;,
        Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;,
        Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;
    }
.end annotation


# static fields
.field private static final DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final PROJECTION_GROUP_ID:[Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z

.field private static final sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountUpdateListenerRegistered:Z

.field private mAccountWritability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field private mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

.field private mContactsAccountCount:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDataRowHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/DataRowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryCacheValid:Z

.field private mEstimatedStorageRequirement:J

.field private mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

.field private mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mOkToOpenAccess:Z

.field private mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

.field private mProviderStatus:I

.field private mProviderStatusUpdateNeeded:Z

.field private volatile mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSyncToNetwork:Z

.field private mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

.field private mValues:Landroid/content/ContentValues;

.field private mVisibleTouched:Z

.field private volatile mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private sIsPhone:Z

.field private sIsPhoneInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xbbc

    const/16 v5, 0x3ed

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 148
    const-string v0, "ContactsProvider"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    .line 181
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 291
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "groups._id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->PROJECTION_GROUP_ID:[Ljava/lang/String;

    .line 429
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

    .line 441
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 462
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 479
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 483
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_verified"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 492
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 499
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data10"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data11"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data12"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data13"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data14"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_super_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 527
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 544
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    const-string v2, "presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    const-string v2, "status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    const-string v2, "status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    const-string v2, "status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    const-string v2, "status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 555
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 560
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 569
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 575
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted_sort"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 580
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted_sort"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 586
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_display_name"

    const-string v2, "display_name || \'.vcf\'"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_size"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 592
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 614
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_restricted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 627
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_restricted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 644
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 657
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "MIN(_id)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 667
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "contacts_view._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    const-string v2, "contacts_view.lookup"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    const-string v2, "contacts_view.display_name"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    const-string v2, "contacts_view.last_time_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    const-string v2, "contacts_view.times_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    const-string v2, "contacts_view.starred"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    const-string v2, "contacts_view.in_visible_group"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    const-string v2, "contacts_view.photo_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    const-string v2, "contacts_view.photo_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    const-string v2, "contacts_view.photo_thumb_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    const-string v2, "contacts_view.custom_ringtone"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    const-string v2, "contacts_view.has_phone_number"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    const-string v2, "contacts_view.send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "normalized_number"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 688
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title_res"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 713
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(DISTINCT contacts._id) FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND data.data1=groups._id)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(DISTINCT contacts._id) FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND data.data1=groups._id AND has_phone_number)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 730
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "agg_exceptions._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 738
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "ungrouped_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "any_unsynced"

    const-string v2, "(CASE WHEN MIN(should_sync,(SELECT (CASE WHEN MIN(should_sync) IS NULL THEN 1 ELSE MIN(should_sync) END) FROM groups WHERE groups.account_name=settings.account_name AND groups.account_type=settings.account_type))=0 THEN 1 ELSE 0 END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE has_phone_number GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 776
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_data_id"

    const-string v2, "data._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_account"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_handle"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "protocol"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_protocol"

    const-string v2, "(CASE WHEN custom_protocol=\'\' THEN NULL ELSE custom_protocol END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 798
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 807
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "typeResourceId"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "authority"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "exportSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "shortcutSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photoSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 826
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 850
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 851
    const-string v1, "com.android.contacts"

    const-string v2, "contacts"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 852
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 853
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/data"

    const/16 v3, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 854
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/entities"

    const/16 v3, 0x3f6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 855
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 857
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions/*"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 859
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/16 v3, 0x3f1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 860
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 861
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 862
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 863
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/data"

    const/16 v3, 0x3f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 864
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 865
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/data"

    const/16 v3, 0x3f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 867
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/entities"

    const/16 v3, 0x3f7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 869
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/entities"

    const/16 v3, 0x3f8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 871
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_vcard/*"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 872
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_multi_vcard/*"

    const/16 v3, 0x3f3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 874
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/"

    const/16 v3, 0x3ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 875
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/filter/*"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 877
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/group/*"

    const/16 v3, 0x3f0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 879
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts"

    const/16 v3, 0x7d2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 880
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 881
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/data"

    const/16 v3, 0x7d4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 882
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/entity"

    const/16 v3, 0x7d5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 884
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contact_entities"

    const/16 v3, 0x3a99

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 886
    const-string v1, "com.android.contacts"

    const-string v2, "data"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 887
    const-string v1, "com.android.contacts"

    const-string v2, "data/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 888
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones"

    const/16 v3, 0xbba

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 889
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/#"

    const/16 v3, 0xbbb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 890
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 891
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 892
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails"

    const/16 v3, 0xbbd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 893
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/#"

    const/16 v3, 0xbbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 894
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 895
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup/*"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 896
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 897
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter/*"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 898
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals"

    const/16 v3, 0xbc1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 899
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals/#"

    const/16 v3, 0xbc2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 901
    const-string v1, "com.android.contacts"

    const-string v2, "groups"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 902
    const-string v1, "com.android.contacts"

    const-string v2, "groups/#"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 903
    const-string v1, "com.android.contacts"

    const-string v2, "groups_summary"

    const/16 v3, 0x2713

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 905
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate"

    const/16 v3, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 906
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate/#"

    const/16 v3, 0x2af9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 909
    const-string v1, "com.android.contacts"

    const-string v2, "phone_lookup/*"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 910
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 912
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions/*"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 915
    const-string v1, "com.android.contacts"

    const-string v2, "settings"

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 917
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates"

    const/16 v3, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 918
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates/#"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 920
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 922
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query/*"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 924
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_shortcut/*"

    const/16 v3, 0x2ee2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 927
    const-string v1, "com.android.contacts"

    const-string v2, "live_folders/contacts"

    const/16 v3, 0x36b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 929
    const-string v1, "com.android.contacts"

    const-string v2, "live_folders/contacts/*"

    const/16 v3, 0x36b3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 931
    const-string v1, "com.android.contacts"

    const-string v2, "live_folders/contacts_with_phones"

    const/16 v3, 0x36b1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 933
    const-string v1, "com.android.contacts"

    const-string v2, "live_folders/favorites"

    const/16 v3, 0x36b2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 936
    const-string v1, "com.android.contacts"

    const-string v2, "provider_status"

    const/16 v3, 0x3e81

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 938
    const-string v1, "com.android.contacts"

    const-string v2, "directories"

    const/16 v3, 0x4269

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 939
    const-string v1, "com.android.contacts"

    const-string v2, "directories/#"

    const/16 v3, 0x426a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 941
    const-string v1, "com.android.contacts"

    const-string v2, "complete_name"

    const/16 v3, 0x4650

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 942
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/common/content/SQLiteContentProvider;-><init>()V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    .line 842
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    .line 843
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    .line 844
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    .line 953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    .line 954
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 970
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    .line 987
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 988
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    .line 990
    iput v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 992
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    .line 996
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    .line 998
    new-instance v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v0}, Lcom/android/providers/contacts/TransactionContext;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    .line 1000
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 5009
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private addAutoAddMembership(J)V
    .locals 3
    .parameter "rawContactId"

    .prologue
    .line 1765
    const-string v1, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND auto_add != 0"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 1767
    .local v0, groupId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 1770
    :cond_0
    return-void
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4661
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4662
    const-string v1, "account_type"

    invoke-static {p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 4665
    if-eqz v2, :cond_0

    .line 4667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4673
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 4674
    :goto_0
    if-eqz v2, :cond_2

    .line 4675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_type"

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

    .line 4682
    :goto_1
    return-void

    .line 4673
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4680
    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 4685
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4686
    const-string v1, "account_type"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 4689
    if-eqz v2, :cond_0

    .line 4691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4697
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 4698
    :goto_0
    if-eqz v2, :cond_3

    .line 4699
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account_type"

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

    .line 4703
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4704
    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4705
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4708
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4710
    :goto_1
    return-object v0

    .line 4697
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 4710
    goto :goto_1
.end method

.method private appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_presence"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN agg_presence ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "agg_presence.presence_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4625
    :cond_0
    return-void
.end method

.method private appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "contact_status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "contact_status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "contact_status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates contacts_status_updates ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts_status_updates.status_update_data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    :cond_0
    return-void
.end method

.method private appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN presence ON (presence_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4633
    :cond_0
    return-void
.end method

.method private appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates ON (status_updates.status_update_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    :cond_0
    return-void
.end method

.method private appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 5
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1542
    .local p2, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1543
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1546
    .end local v1           #id:J
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1547
    return-void
.end method

.method private appendLocalDirectorySelectionIfNeeded(Landroid/database/sqlite/SQLiteQueryBuilder;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4636
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 4637
    const-string v0, "_id IN default_directory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4641
    :cond_0
    :goto_0
    return-void

    .line 4638
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 4639
    const-string v0, "_id NOT IN default_directory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 5119
    if-nez p1, :cond_0

    .line 5120
    const/4 v2, 0x0

    .line 5126
    :goto_0
    return-object v2

    .line 5122
    :cond_0
    array-length v0, p1

    .line 5123
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 5124
    .local v1, newProjection:[Ljava/lang/String;
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5125
    aput-object p2, v1, v0

    move-object v2, v1

    .line 5126
    goto :goto_0
.end method

.method private appendSearchIndexJoin(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 4370
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "snippet"

    aput-object v2, v1, v8

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4372
    const-string v0, "snippet_args"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4374
    if-eqz v0, :cond_5

    .line 4375
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4378
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v8

    move-object v4, v1

    .line 4380
    :goto_1
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v3, :cond_1

    aget-object v1, v0, v3

    move-object v5, v1

    .line 4382
    :goto_2
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v6, :cond_2

    aget-object v1, v0, v6

    move-object v6, v1

    .line 4384
    :goto_3
    if-eqz v0, :cond_3

    array-length v1, v0

    if-le v1, v7, :cond_3

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 4387
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4392
    :goto_5
    return-void

    .line 4378
    :cond_0
    const-string v1, "["

    move-object v4, v1

    goto :goto_1

    .line 4380
    :cond_1
    const-string v1, "]"

    move-object v5, v1

    goto :goto_2

    .line 4382
    :cond_2
    const-string v1, "..."

    move-object v6, v1

    goto :goto_3

    .line 4384
    :cond_3
    const/16 v0, -0xa

    move v7, v0

    goto :goto_4

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, v8

    move-object v5, v4

    move-object v6, v4

    move v7, v8

    .line 4390
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method

.method private appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4513
    const-string v0, "snippet(search_index,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4515
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4516
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4517
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4518
    invoke-static {p1, p4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4521
    const-string v0, ",1,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4523
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    return-void
.end method

.method private buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter

    .prologue
    .line 4852
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4854
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4856
    const-string v1, "contactAssetFile"

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    array-length v0, v0

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4861
    :goto_0
    return-object v0

    .line 4859
    :catch_0
    move-exception v0

    .line 4860
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4001
    const-string v3, ""

    .line 4002
    if-eqz p6, :cond_2

    .line 4003
    const/16 v4, 0x20

    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 4004
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4005
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4006
    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    .line 4014
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4015
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 4016
    const-string v7, "letter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUBSTR("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",1,1) AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "letter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4026
    const-string v7, "title"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_PHONEBOOK_INDEX(SUBSTR("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",1,1),\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4029
    const-string v4, "count"

    const-string v5, "COUNT(_id) AS count"

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4031
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4033
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "letter COLLATE PHONEBOOK"

    const/4 v9, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "letter COLLATE PHONEBOOK"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4038
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 4039
    new-array v5, v4, [Ljava/lang/String;

    .line 4040
    new-array v6, v4, [I

    .line 4041
    const/4 v7, 0x0

    .line 4042
    const/4 v8, 0x0

    .line 4047
    const/4 v9, 0x0

    move v13, v9

    move v9, v7

    move v7, v13

    :goto_1
    if-ge v7, v4, :cond_4

    .line 4048
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 4049
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4050
    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 4051
    if-eqz v9, :cond_0

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 4052
    :cond_0
    aput-object v10, v5, v9

    .line 4053
    aput v11, v6, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4054
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object v8, v10

    .line 4047
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p6

    .line 4008
    goto/16 :goto_0

    .line 4011
    :cond_2
    const-string v4, "sort_key"

    goto/16 :goto_0

    .line 4056
    :cond_3
    const/4 v10, 0x1

    sub-int v10, v9, v10

    :try_start_1
    aget v12, v6, v10

    add-int/2addr v11, v12

    aput v11, v6, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4072
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4060
    :cond_4
    if-ge v9, v4, :cond_5

    .line 4061
    :try_start_2
    new-array v4, v9, [Ljava/lang/String;

    .line 4062
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4065
    new-array v5, v9, [I

    .line 4066
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    .line 4070
    :goto_3
    new-instance v6, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v6, p0, p1, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2$AddressBookCursor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/CrossProcessCursor;[Ljava/lang/String;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4072
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v6

    :cond_5
    move-object v4, v6

    goto :goto_3
.end method

.method private changeLocaleInBackground()V
    .locals 2

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1234
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1236
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 1237
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1242
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleInBackground()V

    .line 1243
    return-void

    .line 1239
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private completeName(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 5061
    if-nez p2, :cond_1

    .line 5062
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 5065
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5066
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    .line 5069
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "data5"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data3"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "data6"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "phonetic_name"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "data9"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "data8"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "data7"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, p1, v3}, Lcom/android/providers/contacts/ContactsProvider2;->copyQueryParamsToContentValues(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5082
    invoke-virtual {v0, v2, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 5084
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5085
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    move v4, v6

    .line 5086
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 5087
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5086
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5089
    :cond_0
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5090
    return-object v0

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private varargs copyQueryParamsToContentValues(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 5
    .parameter "values"
    .parameter "uri"
    .parameter "columns"

    .prologue
    .line 5094
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 5095
    .local v1, column:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5096
    .local v4, param:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 5097
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5100
    .end local v1           #column:Ljava/lang/String;
    .end local v4           #param:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private deleteContact(JZ)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2334
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2335
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2339
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2340
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2341
    invoke-direct {p0, v1, v2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2344
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2347
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 2349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 12
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1862
    const/4 v7, 0x0

    .line 1866
    .local v7, count:I
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1869
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1871
    .local v9, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1872
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v11

    .line 1873
    .local v11, rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v11, v0, v1, v6}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    add-int/2addr v7, v0

    .line 1874
    if-nez p3, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v9, v10}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1879
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1882
    return v7
.end method

.method private deleteDataGroupMembership(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1809
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1813
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const-string v3, "mimetype_id=? AND data1=? AND raw_contact_id=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1814
    return-void
.end method

.method private deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2328
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2329
    .local v0, count:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 2330
    return v0
.end method

.method private deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2370
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2371
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting data from status_updates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status_updates"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 9
    .parameter "selection"
    .parameter "rawContactId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1773
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups,raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->PROJECTION_GROUP_ID:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1778
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1783
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findValidAccounts(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3096
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT account_name,account_type FROM accounts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3100
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3101
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3102
    :cond_1
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3106
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3108
    return-void
.end method

.method private flushTransactionalChanges()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1499
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 1500
    const-string v0, "ContactsProvider"

    const-string v1, "flushTransactionChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getInsertedRawContactIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1504
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1505
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getDirtyRawContactIds()Ljava/util/Set;

    move-result-object v0

    .line 1509
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1510
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1511
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET dirty=1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 1513
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getUpdatedRawContactIds()Ljava/util/Set;

    move-result-object v0

    .line 1518
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1519
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1520
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET version = version + 1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 1522
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1526
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getUpdatedSyncStates()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1528
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 1529
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to update sync state, does it still exist?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 1535
    return-void
.end method

.method private getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3196
    move-object v0, p1

    .line 3197
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 3198
    check-cast v0, Landroid/database/CrossProcessCursor;

    .end local v0           #c:Landroid/database/Cursor;
    move-object v1, v0

    .line 3202
    :goto_0
    return-object v1

    .line 3199
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    instance-of v1, v0, Landroid/database/CursorWindow;

    if-eqz v1, :cond_1

    .line 3200
    check-cast v0, Landroid/database/CursorWrapper;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v1

    goto :goto_0

    .line 3202
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDirectoryAuthority(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    .locals 12
    .parameter "directoryId"

    .prologue
    .line 3238
    iget-object v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    monitor-enter v11

    .line 3239
    :try_start_0
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    if-nez v1, :cond_1

    .line 3240
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3241
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3242
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "directories"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 3246
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3247
    new-instance v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider2$1;)V

    .line 3248
    .local v10, info:Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3249
    .local v9, id:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    .line 3250
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    .line 3251
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 3252
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3255
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #info:Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3261
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local p0
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 3255
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local p0
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 3260
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p0
.end method

.method private getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4721
    const-string v0, "limit"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4722
    if-nez v0, :cond_0

    move-object v0, v4

    .line 4735
    :goto_0
    return-object v0

    .line 4727
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4728
    if-gez v1, :cond_1

    .line 4729
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid limit parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 4730
    goto :goto_0

    .line 4732
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 4733
    :catch_0
    move-exception v1

    .line 4734
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid limit parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 4735
    goto :goto_0
.end method

.method private getMostReferencedContactId(Ljava/util/ArrayList;)J
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 4301
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4303
    const-wide/16 v0, -0x1

    .line 4304
    .local v0, bestContactId:J
    const/4 v2, 0x0

    .line 4306
    .local v2, bestRefCount:I
    const-wide/16 v3, -0x1

    .line 4307
    .local v3, contactId:J
    const/4 v5, 0x0

    .line 4309
    .local v5, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4310
    .local v8, segmentCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 4311
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4312
    .local v7, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 4313
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_1

    .line 4314
    add-int/lit8 v5, v5, 0x1

    .line 4310
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4316
    :cond_1
    if-le v5, v2, :cond_2

    .line 4317
    move-wide v0, v3

    .line 4318
    move v2, v5

    .line 4320
    :cond_2
    iget-wide v3, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 4321
    const/4 v5, 0x1

    goto :goto_1

    .line 4325
    .end local v7           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_3
    if-le v5, v2, :cond_4

    move-wide v9, v3

    .line 4328
    :goto_2
    return-wide v9

    :cond_4
    move-wide v9, v0

    goto :goto_2
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 5208
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 5209
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v6, v8

    .line 5243
    :goto_0
    return-object v6

    .line 5213
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 5214
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5217
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 5219
    .local v1, index:I
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 5220
    if-ne v1, v9, :cond_2

    move-object v6, v8

    .line 5221
    goto :goto_0

    .line 5224
    :cond_2
    add-int/2addr v1, v2

    .line 5226
    if-ne v4, v1, :cond_3

    move-object v6, v8

    .line 5227
    goto :goto_0

    .line 5230
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 5231
    add-int/lit8 v1, v1, 0x1

    .line 5236
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 5237
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_4

    .line 5238
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 5243
    .local v5, value:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5240
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2604
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "mode"

    const-string v2, "mode"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2606
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "chat_capability"

    const-string v2, "chat_capability"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2608
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2589
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status"

    const-string v2, "status"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_ts"

    const-string v2, "status_ts"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2593
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_res_package"

    const-string v2, "status_res_package"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2595
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_label"

    const-string v2, "status_label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_icon"

    const-string v2, "status_icon"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2599
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2581
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "status_update_data_id IN (SELECT Distinct presence_data_id FROM status_updates LEFT OUTER JOIN presence ON status_update_data_id = presence_data_id WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private importLegacyContactsInBackground()V
    .locals 3

    .prologue
    .line 1305
    const-string v0, "ContactsProvider"

    const-string v1, "Importing legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1308
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1310
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1312
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;

    move-result-object v0

    .line 1313
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportSuccess()V

    .line 1318
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportFailure()V

    goto :goto_0
.end method

.method private initForDefaultLocale()V
    .locals 9

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1060
    new-instance v0, Lcom/android/providers/contacts/LegacyApiSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, v6, v1, p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    .line 1061
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 1062
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 1063
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 1064
    new-instance v0, Lcom/android/providers/contacts/PostalSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/PostalSplitter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 1065
    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 1066
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 1067
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 1069
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1070
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/SearchIndexManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    .line 1074
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/email_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForEmail;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/im"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForIm;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForIm;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/organization"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForOrganization;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/nickname"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNickname;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForNickname;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v8, "vnd.android.cursor.item/name"

    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/group_membership"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/photo"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoto;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/note"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNote;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForNote;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    return-void
.end method

.method private initialize()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1022
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 1026
    new-instance v0, Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactDirectoryManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    .line 1027
    new-instance v0, Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/GlobalSearchSupport;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 1030
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1031
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1033
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsProviderWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 1035
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1036
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$1;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$1;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1044
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1045
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1046
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1047
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1048
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1049
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1050
    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1052
    return v3
.end method

.method private insertContact(Landroid/content/ContentValues;)J
    .locals 2
    .parameter

    .prologue
    .line 1719
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Aggregate contacts are created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertData(Landroid/content/ContentValues;Z)J
    .locals 12
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1823
    const-wide/16 v6, 0x0

    .line 1824
    .local v6, id:J
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1825
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1827
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1830
    .local v3, rawContactId:J
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1831
    .local v9, packageName:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "package_id"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1834
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1837
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1838
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimetype is required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1842
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype_id"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1843
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 1846
    .local v0, rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v6

    .line 1847
    if-nez p2, :cond_2

    .line 1848
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V

    .line 1850
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->rawContactUpdated(J)V

    .line 1851
    return-wide v6
.end method

.method private insertDataGroupMembership(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1800
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1801
    const-string v1, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1803
    const-string v1, "mimetype_id"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1805
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1806
    return-void
.end method

.method private insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1927
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1929
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 1932
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1933
    if-eqz v1, :cond_0

    .line 1934
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "package_id"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1938
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 1942
    :goto_0
    if-nez p3, :cond_1

    .line 1943
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1946
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const-string v4, "title"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 1948
    if-nez p3, :cond_7

    if-eqz v1, :cond_7

    .line 1952
    if-nez v0, :cond_5

    .line 1953
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    .line 1955
    const/4 v1, 0x0

    move-object v4, v1

    move-object v3, v0

    .line 1961
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "starred"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1965
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1966
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1967
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1968
    invoke-direct {p0, v1, v2, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 1969
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1973
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1938
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1957
    :cond_5
    const-string v1, "account_name=? AND account_type=?"

    .line 1959
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v2, v3

    move-object v4, v2

    move-object v3, v1

    goto :goto_1

    .line 1973
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1977
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 1981
    :cond_8
    return-wide v8
.end method

.method private insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1731
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1732
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1733
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 1737
    const-string v1, "deleted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "deleted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "aggregation_mode"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1742
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "raw_contacts"

    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1744
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "aggregation_mode"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1745
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "aggregation_mode"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1747
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->markNewForAggregation(JI)V

    .line 1750
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/providers/contacts/TransactionContext;->rawContactInserted(JLandroid/accounts/Account;)V

    .line 1752
    if-nez p3, :cond_1

    .line 1753
    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addAutoAddMembership(J)V

    .line 1754
    const-string v0, "starred"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1755
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 1756
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    .line 1760
    :cond_1
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 1761
    return-wide v1

    :cond_2
    move v0, v5

    .line 1756
    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5107
    if-nez p1, :cond_0

    .line 5108
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 5114
    :goto_0
    return-object v2

    .line 5110
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 5111
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 5112
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 5113
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 5114
    goto :goto_0
.end method

.method private insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1985
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1987
    .local v0, id:J
    const-string v2, "ungrouped_visible"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1988
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 1991
    :cond_0
    return-wide v0
.end method

.method private lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 4241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4242
    const-string v0, "normalized_name IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v9

    .line 4243
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 4244
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4245
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v2, v8, :cond_0

    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v10, :cond_1

    .line 4247
    :cond_0
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4248
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4251
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4252
    const-string v0, ") AND name_type=2 AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    const-string v1, "name_lookup INNER JOIN raw_contacts ON (name_lookup.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4258
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4259
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4260
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4261
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4263
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v9

    .line 4264
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 4265
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4266
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v5, v8, :cond_4

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v10, :cond_5

    :cond_4
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_5

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4270
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4276
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4264
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 4276
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4279
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 4185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4186
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 4187
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4188
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4189
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v9, :cond_0

    .line 4190
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4191
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4194
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4195
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4197
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4200
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4201
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4202
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4203
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4205
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v8

    .line 4206
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 4207
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4208
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v9, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4211
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4217
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4206
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 4217
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4220
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 4129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4130
    const-string v0, "sourceid IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 4131
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4132
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4133
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v2, :cond_0

    .line 4134
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4135
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4138
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4139
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4144
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4145
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4146
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4147
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4149
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v8

    .line 4150
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 4151
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4152
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v5, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4155
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4161
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4150
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 4161
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4164
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupKeyContainsType(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "lookupType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 4283
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 4285
    .local v1, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget v2, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, p2, :cond_0

    .line 4286
    const/4 v2, 0x1

    .line 4290
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :goto_1
    return v2

    .line 4283
    .restart local v1       #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4290
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "fd"

    .prologue
    .line 4866
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "fd"
    .parameter "length"

    .prologue
    .line 4870
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markRawContactAsDeleted(JZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2379
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2381
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2382
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2383
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2384
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_needed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2385
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2386
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2387
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 5199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 5200
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method private onLegacyContactImportFailure()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1340
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1344
    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080078

    const v4, 0x7f030002

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1347
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030004

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1351
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 1353
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1355
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1356
    const-string v0, "ContactsProvider"

    const-string v1, "Failed to import legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    .line 1360
    return-void
.end method

.method private onLegacyContactImportSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1324
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1326
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts_imported_v1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1332
    const-string v0, "ContactsProvider"

    const-string v1, "Completed import of legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void
.end method

.method private openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 4826
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4827
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4831
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT data15 FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4834
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4836
    :try_start_0
    invoke-static {v1, v0, p4}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 4838
    :catch_0
    move-exception v0

    .line 4840
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4880
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4881
    new-instance v1, Lcom/android/vcard/VCardComposer;

    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 4883
    new-instance v0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;-><init>(Lcom/android/vcard/VCardComposer;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Lcom/android/vcard/VCardComposer;->addHandler(Lcom/android/vcard/VCardComposer$OneEntryHandler;)V

    .line 4886
    invoke-virtual {v1, p2, p3}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4887
    const-string v0, "ContactsProvider"

    const-string v1, "Failed to init VCardComposer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    :goto_0
    return-void

    .line 4891
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4892
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->createOneEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4893
    const-string v0, "ContactsProvider"

    const-string v2, "Failed to output a contact."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4896
    :cond_1
    invoke-virtual {v1}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto :goto_0
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3916
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3918
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3920
    :cond_0
    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3922
    if-eqz v0, :cond_1

    .line 3923
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3925
    :cond_1
    return-object v0
.end method

.method private queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3932
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3933
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 3934
    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 3935
    const-string v3, "status"

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3936
    iget v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3934
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3937
    :cond_1
    const-string v3, "data1"

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3938
    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 3941
    :cond_2
    return-object v0
.end method

.method private queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3955
    if-nez p6, :cond_0

    .line 3956
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    .line 3961
    :goto_0
    const/4 v5, 0x0

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    .line 3962
    const/4 v5, 0x1

    invoke-static/range {p14 .. p14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    .line 3963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v5, p0

    move-object/from16 v6, p2

    move-object v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 3964
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3966
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    .line 3971
    :goto_1
    return-object v5

    .line 3958
    :cond_0
    move-object/from16 v0, p6

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 3959
    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, p6

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p6

    move v1, v6

    move-object v2, v5

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v5

    goto :goto_0

    .line 3970
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3971
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5181
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 5182
    if-nez v0, :cond_0

    move v0, p2

    .line 5193
    :goto_0
    return v0

    .line 5186
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 5187
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v0, p2

    .line 5188
    goto :goto_0

    .line 5191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 5193
    const-string v2, "=0"

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=false"

    invoke-static {v0, v1, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1663
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    const-string v1, "account_type"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 1667
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1668
    const-string v4, "account_type"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1669
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v5, v6

    .line 1672
    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    .line 1674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1680
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v8

    .line 1681
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v8

    .line 1683
    :goto_1
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 1685
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v8

    .line 1687
    :goto_2
    if-nez v2, :cond_5

    .line 1688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "When both specified, ACCOUNT_NAME and ACCOUNT_TYPE must match"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v7

    .line 1680
    goto :goto_0

    :cond_3
    move v5, v7

    .line 1681
    goto :goto_1

    :cond_4
    move v2, v7

    .line 1685
    goto :goto_2

    :cond_5
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 1703
    :goto_3
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1706
    :cond_6
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    .line 1709
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    :goto_4
    return-object v0

    .line 1691
    :cond_8
    if-eqz v2, :cond_9

    .line 1693
    const-string v2, "account_name"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v2, "account_type"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 1695
    :cond_9
    if-eqz v5, :cond_a

    move-object v0, v4

    move-object v1, v3

    .line 1697
    goto :goto_3

    .line 1699
    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filter"

    .prologue
    const/16 v2, 0x20

    .line 4508
    const/16 v0, 0x2d

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4563
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4565
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4569
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4570
    return-void
.end method

.method private setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4335
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    const-string v1, "_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4337
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4339
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4340
    return-void
.end method

.method private setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4350
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    if-eqz p4, :cond_2

    .line 4353
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4356
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-eqz v2, :cond_1

    .line 4357
    :cond_0
    const-string v1, " JOIN (SELECT NULL AS snippet WHERE 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4361
    :goto_1
    const-string v1, "_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4364
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4365
    return-void

    .line 4359
    :cond_1
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p4

    goto :goto_0
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4543
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4546
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4547
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4548
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4553
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4555
    :goto_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4556
    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4557
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 4558
    return-void

    .line 4553
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4556
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_1
.end method

.method private setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4575
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getEntitiesView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4578
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4579
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4580
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4581
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4584
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4585
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 4586
    return-void
.end method

.method private setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 3
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 4527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4528
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4530
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4531
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 4532
    return-void
.end method

.method private setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 2
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->shouldExcludeRestrictedData(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawEntitiesView(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4536
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4537
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 4538
    return-void
.end method

.method private shouldExcludeRestrictedData(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4645
    const-string v2, "for_export_only"

    invoke-static {p1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 4647
    .local v0, excludeRestrictedData:Z
    if-eqz v0, :cond_0

    move v2, v4

    .line 4657
    :goto_0
    return v2

    .line 4651
    :cond_0
    const-string v2, "requesting_package"

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4653
    .local v1, requestingPackage:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4654
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 4657
    goto :goto_0
.end method

.method private updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2912
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2913
    const-string v1, "raw_contact_id1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 2914
    const-string v3, "raw_contact_id2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 2918
    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v9, v3

    move-wide v3, v1

    move-wide v1, v9

    .line 2926
    :cond_0
    if-nez v0, :cond_1

    .line 2927
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    .line 2928
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2929
    const-string v0, "agg_exceptions"

    const-string v5, "raw_contact_id1=? AND raw_contact_id2=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {p1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2941
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 2942
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 2944
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 2947
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v5, p1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2948
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2952
    return v7

    .line 2933
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2934
    const-string v6, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2935
    const-string v0, "raw_contact_id1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2936
    const-string v0, "raw_contact_id2"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2937
    const-string v0, "agg_exceptions"

    const-string v6, "_id"

    invoke-virtual {p1, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private updateContactOptions(JLandroid/content/ContentValues;Z)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2846
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2847
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2853
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2855
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2859
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 2908
    :cond_0
    :goto_0
    return v0

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2865
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2868
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 2869
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "contact_id=? AND raw_contact_is_read_only=0"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2872
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    .line 2873
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2877
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2878
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2879
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "starred"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move v3, v9

    :goto_2
    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2883
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    move v3, v8

    .line 2879
    goto :goto_2

    .line 2883
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2889
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2890
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2892
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2896
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2898
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2901
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2903
    const-string v1, "last_time_contacted"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "times_contacted"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2905
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2906
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 2826
    .line 2827
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 2831
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2832
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2833
    invoke-direct {p0, v2, v3, p1, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    add-int/lit8 v1, v1, 0x1

    .line 2835
    goto :goto_0

    .line 2837
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2840
    return v1

    .line 2837
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateContactsAccountCount([Landroid/accounts/Account;)V
    .locals 6
    .parameter "accounts"

    .prologue
    .line 3067
    const/4 v2, 0x0

    .line 3068
    .local v2, count:I
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 3069
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->isContactsAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3070
    add-int/lit8 v2, v2, 0x1

    .line 3068
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3073
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    iput v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsAccountCount:I

    .line 3074
    return-void
.end method

.method private updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    .locals 8
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x0

    .line 2811
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 2820
    :goto_0
    return v1

    .line 2815
    :cond_0
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2816
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 2817
    .local v0, rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2818
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v7

    .line 2820
    goto :goto_0
.end method

.method private updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2777
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2778
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2779
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2780
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2782
    const-string v0, "res_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2783
    if-eqz v0, :cond_0

    .line 2784
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2785
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "package_id"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2788
    :cond_0
    if-nez p5, :cond_2

    .line 2789
    const-string v0, "is_read_only=0"

    invoke-static {p3, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2793
    :goto_0
    const/4 v6, 0x0

    .line 2797
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v6

    .line 2800
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2801
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v2, v0, p5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 2804
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2807
    return v1

    .line 2804
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move-object v3, p3

    goto :goto_0
.end method

.method private updateFavoritesMembership(JZ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "isStarred"

    .prologue
    .line 1788
    const-string v1, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND favorites != 0"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 1790
    .local v0, groupId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1791
    if-eqz p3, :cond_1

    .line 1792
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->deleteDataGroupMembership(JJ)V

    goto :goto_0
.end method

.method private updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2614
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2617
    if-nez p5, :cond_4

    const-string v0, "dirty"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2618
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 2619
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2620
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2621
    const-string v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2626
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    invoke-virtual {v1, v2, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2627
    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2628
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 2630
    :cond_0
    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2632
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v6

    const-string v3, "account_type"

    aput-object v3, v2, v4

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2638
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2639
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2640
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2641
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2642
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    const-string v1, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2649
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2652
    :cond_3
    return v8

    :cond_4
    move-object v0, p2

    .line 2623
    goto :goto_0

    .line 2649
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateProviderStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1254
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eq v0, v4, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1259
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsAccountCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contacts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1262
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_0

    .line 1264
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_0
.end method

.method private updateRawContact(JLandroid/content/ContentValues;Z)I
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2695
    const-string v5, "_id = ?"

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2697
    const-string v5, "deleted"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "deleted"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    move v13, v5

    .line 2699
    :goto_0
    const/4 v14, 0x0

    .line 2700
    const/4 v15, 0x0

    .line 2701
    const/16 v16, 0x0

    .line 2702
    if-eqz v13, :cond_d

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "raw_contacts"

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "_id = ?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2706
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2707
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2708
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2709
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object/from16 v17, v8

    move v8, v6

    move-object/from16 v6, v17

    .line 2712
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2714
    const-string v5, "aggregation_mode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    .line 2718
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "raw_contacts"

    const-string v10, "_id = ?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v11, v0

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p3

    move-object v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2719
    if-eqz v8, :cond_7

    .line 2720
    const-string v9, "aggregation_mode"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2721
    const-string v9, "aggregation_mode"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2725
    if-eqz v9, :cond_0

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v10, v0

    const/4 v11, 0x0

    move-object v0, v10

    move-wide/from16 v1, p1

    move v3, v9

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 2729
    :cond_0
    const-string v9, "starred"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2730
    if-nez p4, :cond_1

    .line 2731
    const-string v9, "starred"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    .line 2734
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object v0, v9

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 2750
    :cond_2
    :goto_4
    if-nez p4, :cond_3

    const-string v9, "account_name"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2751
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->addAutoAddMembership(J)V

    .line 2754
    :cond_3
    const-string v9, "sourceid"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v0, v9

    move-object v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2757
    :cond_4
    const-string v9, "name_verified"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2761
    const-string v9, "name_verified"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_5

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v9, v0

    move-object v0, v9

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->resetNameVerifiedForOtherRawContacts(J)V

    .line 2764
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v0, v9

    move-object v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2766
    :cond_6
    if-eqz v13, :cond_7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    move-object v7, v0

    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    move-wide/from16 v1, p1

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->rawContactInserted(JLandroid/accounts/Account;)V

    .line 2771
    :cond_7
    return v8

    .line 2697
    :cond_8
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_0

    .line 2712
    :catchall_0
    move-exception v6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6

    .line 2731
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2740
    :cond_a
    if-nez p4, :cond_2

    const-string v9, "account_name"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2741
    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v11, v0

    const-string v12, "SELECT starred FROM raw_contacts WHERE _id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v14}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    .line 2744
    :goto_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    goto/16 :goto_4

    .line 2741
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    move-object/from16 v6, v16

    move-object v7, v15

    move v8, v14

    goto/16 :goto_1

    :cond_d
    move-object/from16 v5, v16

    move-object v6, v15

    move v7, v14

    goto/16 :goto_2
.end method

.method private updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 2666
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contact_id should not be included in content values. Contact IDs are assigned automatically"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2671
    :cond_0
    if-nez p4, :cond_2

    .line 2672
    const-string v0, "raw_contact_is_read_only=0"

    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2677
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 2681
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2682
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2683
    invoke-direct {p0, v2, v3, p1, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2684
    add-int/lit8 v1, v1, 0x1

    .line 2685
    goto :goto_1

    .line 2687
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2690
    return v1

    .line 2687
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method

.method private updateSearchIndexInTransaction()V
    .locals 3

    .prologue
    .line 1490
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->getStaleSearchIndexContactIds()Ljava/util/Set;

    move-result-object v0

    .line 1491
    .local v0, staleContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->getStaleSearchIndexRawContactIds()Ljava/util/Set;

    move-result-object v1

    .line 1492
    .local v1, staleRawContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1493
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->updateIndexForRawContacts(Ljava/util/Set;Ljava/util/Set;)V

    .line 1494
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->clearSearchIndexUpdates()V

    .line 1496
    :cond_1
    return-void
.end method

.method private updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2657
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2658
    .local v0, count:I
    const-string v1, "ungrouped_visible"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 2661
    :cond_0
    return v0
.end method

.method private updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2556
    const/4 v1, 0x0

    .line 2557
    .local v1, updateCount:I
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2558
    .local v0, settableValues:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2559
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "status_updates"

    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2566
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2567
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2568
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "presence"

    invoke-virtual {v2, v3, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2573
    :cond_1
    return v1
.end method

.method private waitForAccess(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "latch"

    .prologue
    .line 1396
    if-nez p1, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1402
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5028
    const-string v0, "(SELECT DISTINCT contact_id FROM raw_contacts JOIN name_lookup ON(raw_contacts._id=raw_contact_id) WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5035
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5036
    const-string v0, "*\' AND name_type IN(2,4,3))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5038
    return-void
.end method

.method public appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4397
    const/4 v2, 0x0

    .line 4399
    const/4 v3, 0x0

    .line 4400
    const/4 v8, 0x0

    .line 4401
    const/4 v9, 0x0

    .line 4403
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4404
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4405
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v10, v3

    move v11, v2

    .line 4410
    :goto_1
    const-string v2, " JOIN (SELECT contact_id AS snippet_contact_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    if-eqz p3, :cond_0

    .line 4412
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    if-eqz v11, :cond_3

    .line 4414
    const-string v2, "ifnull("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    move-object v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4416
    const-string v2, "||email_address||"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4417
    move-object v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4418
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 4419
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4420
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4434
    :goto_2
    const-string v2, " AS snippet"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    :cond_0
    const-string v2, " FROM search_index"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4439
    if-eqz v11, :cond_5

    .line 4440
    const-string v2, " LEFT OUTER JOIN (SELECT contact_id AS email_contact_id,MIN(data1) AS email_address FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE data1 LIKE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4447
    const-string v2, ") ON (email_contact_id=snippet_contact_id)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v9

    move-object v3, v8

    .line 4492
    :goto_3
    const-string v4, " WHERE "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4493
    const-string v4, "search_index MATCH "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    if-eqz v11, :cond_9

    .line 4495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4503
    :goto_4
    const-string v2, ") ON (_id=snippet_contact_id)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    return-void

    .line 4405
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4407
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    move v10, v3

    move v11, v2

    goto/16 :goto_1

    .line 4421
    :cond_3
    if-eqz v10, :cond_4

    .line 4422
    const-string v2, "ifnull("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4423
    move-object v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4424
    const-string v2, "||phone_number||"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4425
    move-object v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4426
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 4427
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4428
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4430
    :cond_4
    const-string v2, "(CASE WHEN name_contact_id NOT NULL THEN NULL ELSE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 4431
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4432
    const-string v2, " END)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4448
    :cond_5
    if-eqz v10, :cond_7

    .line 4449
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4450
    const-string v3, " LEFT OUTER JOIN (SELECT contact_id AS phone_contact_id,MIN(data1) AS phone_number FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN phone_lookup ON(data._id=phone_lookup.data_id) WHERE normalized_number LIKE \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    const-string v3, "%\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4464
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4465
    const-string v4, " OR normalized_number LIKE \'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4467
    const-string v4, "%\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4469
    :cond_6
    const-string v4, " GROUP BY phone_contact_id"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    const-string v4, ") ON (phone_contact_id=snippet_contact_id)"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_3

    .line 4472
    :cond_7
    const-string v2, " LEFT OUTER JOIN (SELECT DISTINCT contact_id AS name_contact_id FROM raw_contacts JOIN name_lookup ON(raw_contacts._id=raw_contact_id)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4480
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 4482
    const-string v3, " WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4483
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4484
    const-string v2, "*\' AND name_type=2"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4489
    :goto_5
    const-string v2, ") ON (name_contact_id=snippet_contact_id)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v9

    move-object v3, v8

    goto/16 :goto_3

    .line 4487
    :cond_8
    const-string v2, " WHERE 0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4496
    :cond_9
    if-eqz v10, :cond_b

    .line 4497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*\" OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v2, ""

    goto :goto_6

    .line 4501
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1446
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 1447
    invoke-super {p0, p1}, Lcom/android/common/content/SQLiteContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected beforeTransactionCommit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1470
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 1471
    const-string v0, "ContactsProvider"

    const-string v1, "beforeTransactionCommit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    invoke-super {p0}, Lcom/android/common/content/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 1474
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 1475
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1476
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    if-eqz v0, :cond_1

    .line 1477
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 1478
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 1481
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    .line 1483
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    if-eqz v0, :cond_2

    .line 1484
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    .line 1485
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 1487
    :cond_2
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 1453
    invoke-super {p0, p1, p2}, Lcom/android/common/content/SQLiteContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;
    .locals 1
    .parameter "context"

    .prologue
    .line 1103
    new-instance v0, Lcom/android/providers/contacts/PhotoPriorityResolver;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 1440
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/content/SQLiteContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteData(J[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1892
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1893
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1897
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1918
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    .line 1901
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 1903
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 1904
    aget-object v3, p3, v2

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    .line 1910
    :goto_2
    if-nez v2, :cond_2

    .line 1911
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data type mismatch: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1918
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1903
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1915
    :cond_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v1

    .line 1916
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 1918
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_2
.end method

.method public deleteGroup(Landroid/net/Uri;JZ)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2306
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2307
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 2309
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2314
    if-eqz p4, :cond_0

    .line 2315
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2323
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    :goto_0
    return v0

    .line 2317
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2318
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2319
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2320
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2323
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    throw v0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2155
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2156
    const-string v0, "ContactsProvider"

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

    .line 2158
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 2159
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v9

    .line 2161
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2162
    sparse-switch v0, :sswitch_data_0

    .line 2299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2300
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 2164
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2167
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, v0, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2167
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

    .line 2174
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2178
    :sswitch_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2179
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I

    move-result v0

    goto :goto_0

    .line 2183
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2185
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 2186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2189
    :cond_2
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 2191
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I

    move-result v0

    goto/16 :goto_0

    .line 2196
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2197
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2199
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 2200
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2202
    if-nez p3, :cond_3

    .line 2203
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    .line 2208
    :goto_2
    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2209
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 2210
    const-string v0, "_id=? AND lookup=?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2211
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2212
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2214
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2216
    invoke-direct {p0, v10, v11, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2223
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto/16 :goto_0

    .line 2205
    :cond_3
    array-length v1, p3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2206
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p3

    invoke-static {p3, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    goto :goto_2

    .line 2220
    :cond_4
    const/4 v1, 0x0

    .line 2223
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2228
    :sswitch_6
    const/4 v8, 0x0

    .line 2229
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move v7, v8

    .line 2233
    :goto_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2235
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    .line 2236
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v0, v7

    move v7, v0

    .line 2238
    goto :goto_3

    .line 2240
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2242
    goto/16 :goto_0

    .line 2240
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2246
    :sswitch_7
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2247
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v0

    goto/16 :goto_0

    .line 2252
    :sswitch_8
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_6

    const/4 v1, 0x1

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2253
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2252
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 2261
    :sswitch_9
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2262
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_7

    const/4 v3, 0x1

    :goto_5
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2263
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 2264
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2262
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 2268
    :sswitch_a
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_8

    const/4 v1, 0x1

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2269
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v0

    goto/16 :goto_0

    .line 2268
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 2273
    :sswitch_b
    const/4 v8, 0x0

    .line 2274
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 2277
    :goto_7
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2278
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    .line 2281
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2283
    if-lez v1, :cond_a

    .line 2284
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_b

    const/4 v2, 0x1

    :goto_8
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    :cond_a
    move v0, v1

    .line 2286
    goto/16 :goto_0

    .line 2281
    :catchall_2
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2284
    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    .line 2290
    :sswitch_c
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_c

    const/4 v1, 0x1

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2291
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2290
    :cond_c
    const/4 v1, 0x0

    goto :goto_9

    .line 2295
    :sswitch_d
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2162
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_7
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_9
        0xbbb -> :sswitch_9
        0xbbe -> :sswitch_9
        0xbc2 -> :sswitch_9
        0x1b58 -> :sswitch_d
        0x2328 -> :sswitch_c
        0x2710 -> :sswitch_b
        0x2711 -> :sswitch_a
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
    .end sparse-switch
.end method

.method public deleteRawContact(JJZ)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2353
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 2356
    if-eqz p5, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presence_raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2359
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2363
    :goto_0
    return v0

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->removeContactIfSingleton(J)V

    .line 2363
    invoke-direct {p0, p1, p2, p5}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public getContactDirectoryManagerForTest()Lcom/android/providers/contacts/ContactDirectoryManager;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    return-object v0
.end method

.method getContactsRestrictions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4740
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4741
    const-string v0, "1"

    .line 4743
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "raw_contacts.is_restricted=0"

    goto :goto_0
.end method

.method public getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandler;

    .line 1569
    .local v0, handler:Lcom/android/providers/contacts/DataRowHandler;
    if-nez v0, :cond_0

    .line 1570
    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;

    .end local v0           #handler:Lcom/android/providers/contacts/DataRowHandler;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 1572
    .restart local v0       #handler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 1271
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 5130
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 5132
    :try_start_0
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 5133
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 5134
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5139
    :goto_0
    return-object v0

    .line 5136
    :catch_0
    move-exception v0

    .line 5137
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot determine the default account for contacts compatibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 4961
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 4962
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 5005
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 4968
    :sswitch_0
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4971
    :sswitch_1
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4975
    :sswitch_2
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4979
    :sswitch_3
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4988
    :sswitch_4
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4991
    :sswitch_5
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4995
    :sswitch_6
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4998
    :sswitch_7
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5002
    :sswitch_8
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4962
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_2
        0x3f6 -> :sswitch_1
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_3
        0xbb9 -> :sswitch_4
        0xbba -> :sswitch_4
        0xbbb -> :sswitch_4
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_4
        0xbc1 -> :sswitch_4
        0xbc2 -> :sswitch_4
        0xfa0 -> :sswitch_5
        0x1770 -> :sswitch_6
        0x1771 -> :sswitch_6
        0x1f40 -> :sswitch_0
        0x2328 -> :sswitch_7
        0x4269 -> :sswitch_8
        0x426a -> :sswitch_8
    .end sparse-switch
.end method

.method protected getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;
    .locals 2

    .prologue
    .line 1298
    new-instance v0, Lcom/android/providers/contacts/LegacyContactImporter;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/contacts/LegacyContactImporter;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1289
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getNameLookupBuilder()Lcom/android/providers/contacts/NameLookupBuilder;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    return-object v0
.end method

.method getNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 4902
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 4904
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 4905
    sparse-switch v0, :sswitch_data_0

    .line 4956
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4907
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_0

    .line 4911
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 4914
    :sswitch_2
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 4916
    :sswitch_3
    const-string v0, "image/png"

    goto :goto_0

    .line 4918
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/raw_contact"

    goto :goto_0

    .line 4920
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/raw_contact"

    goto :goto_0

    .line 4922
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/data"

    goto :goto_0

    .line 4924
    :sswitch_7
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataMimeType(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4926
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    goto :goto_0

    .line 4928
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/phone_v2"

    goto :goto_0

    .line 4930
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/phone_lookup"

    goto :goto_0

    .line 4932
    :sswitch_b
    const-string v0, "vnd.android.cursor.dir/email_v2"

    goto :goto_0

    .line 4934
    :sswitch_c
    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0

    .line 4936
    :sswitch_d
    const-string v0, "vnd.android.cursor.dir/postal-address_v2"

    goto :goto_0

    .line 4938
    :sswitch_e
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    goto :goto_0

    .line 4940
    :sswitch_f
    const-string v0, "vnd.android.cursor.dir/aggregation_exception"

    goto :goto_0

    .line 4942
    :sswitch_10
    const-string v0, "vnd.android.cursor.item/aggregation_exception"

    goto :goto_0

    .line 4944
    :sswitch_11
    const-string v0, "vnd.android.cursor.dir/setting"

    goto :goto_0

    .line 4946
    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_0

    .line 4948
    :sswitch_13
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 4950
    :sswitch_14
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 4952
    :sswitch_15
    const-string v0, "vnd.android.cursor.dir/contact_directories"

    goto :goto_0

    .line 4954
    :sswitch_16
    const-string v0, "vnd.android.cursor.item/contact_directory"

    goto :goto_0

    .line 4905
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
        0x3f1 -> :sswitch_3
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_2
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_5
        0xbb8 -> :sswitch_6
        0xbb9 -> :sswitch_7
        0xbba -> :sswitch_8
        0xbbb -> :sswitch_9
        0xbbd -> :sswitch_b
        0xbbe -> :sswitch_c
        0xbc1 -> :sswitch_d
        0xbc2 -> :sswitch_e
        0xfa0 -> :sswitch_a
        0x1770 -> :sswitch_f
        0x1771 -> :sswitch_10
        0x1f40 -> :sswitch_12
        0x2328 -> :sswitch_11
        0x2ee1 -> :sswitch_13
        0x2ee2 -> :sswitch_14
        0x4269 -> :sswitch_15
        0x426a -> :sswitch_16
    .end sparse-switch
.end method

.method importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z
    .locals 5
    .parameter "importer"

    .prologue
    const/4 v4, 0x0

    .line 1364
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v0

    .line 1365
    .local v0, aggregatorEnabled:Z
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1367
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->importContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    const/4 v2, 0x1

    .line 1377
    :goto_0
    return v2

    .line 1373
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1374
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "ContactsProvider"

    const-string v3, "Legacy contact import failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1376
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->getEstimatedStorageRequirement()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    move v2, v4

    .line 1377
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 1413
    invoke-super {p0, p1, p2}, Lcom/android/common/content/SQLiteContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1579
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 1580
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_0
    const-string v0, "caller_is_syncadapter"

    invoke-static {p1, v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    .line 1586
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1589
    sparse-switch v0, :sswitch_data_0

    .line 1636
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 1637
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1644
    :goto_0
    return-object v0

    .line 1591
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1640
    :goto_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_6

    .line 1641
    const/4 v0, 0x0

    goto :goto_0

    .line 1595
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertContact(Landroid/content/ContentValues;)J

    move-wide v0, v6

    .line 1596
    goto :goto_1

    .line 1600
    :sswitch_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 1601
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 1602
    goto :goto_1

    :cond_1
    move v1, v5

    .line 1601
    goto :goto_2

    .line 1606
    :sswitch_3
    const-string v2, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-direct {p0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 1608
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_3
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 1609
    goto :goto_1

    :cond_2
    move v1, v5

    .line 1608
    goto :goto_3

    .line 1613
    :sswitch_4
    invoke-direct {p0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 1614
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_3

    move v1, v4

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 1615
    goto :goto_1

    :cond_3
    move v1, v5

    .line 1614
    goto :goto_4

    .line 1619
    :sswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 1620
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_4

    move v1, v4

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 1621
    goto :goto_1

    :cond_4
    move v1, v5

    .line 1620
    goto :goto_5

    .line 1625
    :sswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1626
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_5

    move v1, v4

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 1627
    goto :goto_1

    :cond_5
    move v1, v5

    .line 1626
    goto :goto_6

    .line 1631
    :sswitch_7
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStatusUpdate(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 1644
    :cond_6
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1589
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d4 -> :sswitch_3
        0xbb8 -> :sswitch_4
        0x1b58 -> :sswitch_7
        0x2328 -> :sswitch_6
        0x2710 -> :sswitch_5
        0x2af8 -> :sswitch_0
    .end sparse-switch
.end method

.method public insertStatusUpdate(Landroid/content/ContentValues;)J
    .locals 14
    .parameter

    .prologue
    .line 1998
    const-string v0, "im_handle"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1999
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 2000
    const/4 v0, 0x0

    .line 2002
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 2003
    const-string v0, "custom_protocol"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2005
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUSTOM_PROTOCOL is required when PROTOCOL=PROTOCOL_CUSTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v10, v0

    .line 2012
    :goto_0
    const-string v0, "presence_data_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2013
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2014
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2015
    if-eqz v0, :cond_8

    .line 2018
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "data._id=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContactsRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    const/4 v11, 0x0

    .line 2076
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) DESC, raw_contact_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2079
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2080
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2081
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2082
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v11

    .line 2088
    if-eqz v0, :cond_2

    .line 2089
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2093
    :cond_2
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2094
    if-nez v10, :cond_15

    .line 2097
    const-string v0, ""

    .line 2100
    :goto_2
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2101
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v5, "presence_data_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2102
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v5, "presence_raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2103
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "presence_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2104
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "protocol"

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2105
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_protocol"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "im_handle"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const-string v0, "im_account"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2108
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "im_account"

    const-string v3, "im_account"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mode"

    const-string v3, "mode"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "chat_capability"

    const-string v3, "chat_capability"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presence"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2120
    :cond_4
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2121
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2122
    const-string v0, "status_res_package"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2123
    const-string v0, "status_label"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_14

    :cond_5
    if-eqz v9, :cond_14

    .line 2128
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    .line 2131
    :goto_3
    const-string v0, "status_icon"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 2134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2135
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteStatusUpdate(J)V

    .line 2146
    :cond_6
    :goto_4
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_7

    .line 2147
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/ContactAggregator;->updateLastStatusUpdateId(J)V

    .line 2150
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_5
    return-wide v0

    .line 2023
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v9, :cond_a

    .line 2024
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PROTOCOL and IM_HANDLE are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2028
    :cond_a
    const/4 v0, 0x5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    .line 2030
    :goto_6
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForIm()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2031
    if-eqz v0, :cond_e

    .line 2032
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2040
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "mimetype_id IN (?,?) AND data1=? AND ((mimetype_id=? AND data5=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    if-eqz v10, :cond_b

    .line 2049
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, " AND data6=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    :cond_b
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, ") OR (mimetype_id=?))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    :cond_c
    :goto_7
    const-string v0, "presence_data_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND data._id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    const-string v1, "presence_data_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2028
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 2055
    :cond_e
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "mimetype_id=? AND data5=? AND data1=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    if-eqz v10, :cond_c

    .line 2062
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND data6=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2085
    :cond_f
    const-wide/16 v1, -0x1

    .line 2088
    if-eqz v0, :cond_10

    .line 2089
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_10
    move-wide v0, v1

    goto/16 :goto_5

    .line 2088
    :catchall_0
    move-exception v0

    move-object v1, v11

    :goto_8
    if-eqz v1, :cond_11

    .line 2089
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0

    .line 2136
    :cond_12
    const-string v0, "status_ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2137
    const-string v0, "status_ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2138
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 2141
    :cond_13
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 2088
    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_8

    :cond_14
    move-object v7, v0

    goto/16 :goto_3

    :cond_15
    move-object v0, v10

    goto/16 :goto_2

    :cond_16
    move-object v10, v0

    goto/16 :goto_0
.end method

.method protected isAggregationUpgradeNeeded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5247
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 5252
    :goto_0
    return v0

    .line 5251
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "aggregation_v2"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5252
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method protected isContactsAccount(Landroid/accounts/Account;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3077
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 3080
    :try_start_0
    const-string v1, "com.asus.pcsync"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3081
    if-nez v1, :cond_0

    const-string v1, "com.android.contacts"

    invoke-interface {v0, p1, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3084
    :goto_0
    return v0

    :cond_1
    move v0, v4

    .line 3081
    goto :goto_0

    .line 3082
    :catch_0
    move-exception v0

    .line 3083
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot obtain sync flag for account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 3084
    goto :goto_0
.end method

.method protected isLegacyContactImportNeeded()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1293
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts_imported_v1"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1294
    .local v0, version:I
    if-ge v0, v4, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isPhone()Z
    .locals 2

    .prologue
    .line 5298
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhoneInitialized:Z

    if-nez v0, :cond_0

    .line 5299
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhone:Z

    .line 5300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhoneInitialized:Z

    .line 5302
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhone:Z

    return v0
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "filter"

    .prologue
    .line 5041
    const/4 v0, 0x0

    .line 5042
    .local v0, atLeastOneDigit:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 5043
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 5044
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5045
    .local v1, c:C
    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_1

    .line 5046
    const/4 v0, 0x1

    .line 5043
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5047
    :cond_1
    const/16 v4, 0x2a

    if-eq v1, v4, :cond_0

    const/16 v4, 0x23

    if-eq v1, v4, :cond_0

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_0

    const/16 v4, 0x4e

    if-eq v1, v4, :cond_0

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_0

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_0

    const/16 v4, 0x28

    if-eq v1, v4, :cond_0

    const/16 v4, 0x29

    if-eq v1, v4, :cond_0

    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    .line 5049
    const/4 v4, 0x0

    .line 5052
    .end local v1           #c:C
    :goto_1
    return v4

    :cond_2
    move v4, v0

    goto :goto_1
.end method

.method protected isWritableAccount(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 5146
    if-nez p1, :cond_0

    .line 5147
    const/4 v0, 0x1

    .line 5173
    :goto_0
    return v0

    .line 5150
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5151
    if-eqz v0, :cond_1

    .line 5152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 5155
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 5157
    :try_start_0
    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5158
    const-string v5, "com.android.contacts"

    iget-object v6, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5160
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5168
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 5169
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5172
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5173
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 5157
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5164
    :catch_0
    move-exception v1

    .line 5165
    const-string v1, "ContactsProvider"

    const-string v2, "Could not acquire sync adapter types"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10
    .parameter "db"
    .parameter "lookupKey"

    .prologue
    const-wide/16 v8, -0x1

    .line 4083
    new-instance v5, Lcom/android/providers/contacts/ContactLookupKey;

    invoke-direct {v5}, Lcom/android/providers/contacts/ContactLookupKey;-><init>()V

    .line 4084
    .local v5, key:Lcom/android/providers/contacts/ContactLookupKey;
    invoke-virtual {v5, p2}, Lcom/android/providers/contacts/ContactLookupKey;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4086
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const-wide/16 v0, -0x1

    .line 4087
    .local v0, contactId:J
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4088
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 4089
    cmp-long v7, v0, v8

    if-eqz v7, :cond_0

    move-wide v2, v0

    .line 4108
    .end local v0           #contactId:J
    .local v2, contactId:J
    :goto_0
    return-wide v2

    .line 4094
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_0
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v4

    .line 4096
    .local v4, hasRawContactIds:Z
    if-eqz v4, :cond_1

    .line 4097
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 4098
    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    move-wide v2, v0

    .line 4099
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_0

    .line 4103
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4105
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    :cond_3
    move-wide v2, v0

    .line 4108
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_0
.end method

.method public matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 3207
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3208
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 3209
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 3210
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3211
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 3213
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 3212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3215
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 3217
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method protected notifyChange()V
    .locals 1

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 1553
    return-void
.end method

.method protected notifyChange(Z)V
    .locals 3
    .parameter "syncToNetwork"

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1558
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 2956
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 2957
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 2

    .prologue
    .line 1458
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 1459
    const-string v0, "ContactsProvider"

    const-string v1, "onBeginTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    invoke-super {p0}, Lcom/android/common/content/SQLiteContentProvider;->onBeginTransaction()V

    .line 1462
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->clearPendingAggregations()V

    .line 1463
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 1464
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 1012
    invoke-super {p0}, Lcom/android/common/content/SQLiteContentProvider;->onCreate()Z

    .line 1014
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1017
    :goto_0
    return v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    .line 1189
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1194
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 3089
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(ILjava/lang/Object;)V

    .line 3090
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4759
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 4761
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 4762
    sparse-switch v0, :sswitch_data_0

    .line 4818
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "File does not exist"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4764
    :sswitch_0
    const-string v1, "_id=photo_id AND contact_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 4814
    :goto_0
    return-object v0

    .line 4770
    :sswitch_1
    const-string v1, "_id=? AND mimetype=\'vnd.android.cursor.item/photo\'"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 4776
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4777
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4778
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 4779
    const-string v0, "_id=?"

    .line 4784
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4785
    const-string v1, "_id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4786
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 4790
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4791
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4792
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4797
    array-length v3, v0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v6, v0, v4

    .line 4798
    if-nez v5, :cond_0

    .line 4799
    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4803
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4804
    add-int/lit8 v5, v5, 0x1

    .line 4797
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4801
    :cond_0
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4806
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4812
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4813
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4814
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    .line 4762
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_3
        0xbb9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected performBackgroundTask(ILjava/lang/Object;)V
    .locals 6
    .parameter "task"
    .parameter "arg"

    .prologue
    const/4 v5, 0x0

    .line 1115
    packed-switch p1, :pswitch_data_0

    .line 1186
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1117
    .restart local p2
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 1118
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1119
    iput-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 1124
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    if-eqz v3, :cond_0

    .line 1125
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1126
    iput-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 1132
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isLegacyContactImportNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContactsInBackground()V

    goto :goto_0

    .line 1139
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1140
    .local v2, context:Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountUpdateListenerRegistered:Z

    if-nez v3, :cond_1

    .line 1141
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v5, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountUpdateListenerRegistered:Z

    .line 1145
    :cond_1
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 1146
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateAccountsInBackground([Landroid/accounts/Account;)Z

    move-result v1

    .line 1147
    .local v1, accountsChanged:Z
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactsAccountCount([Landroid/accounts/Account;)V

    .line 1148
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->updateDirectoriesInBackground(Z)V

    goto :goto_0

    .line 1153
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #accountsChanged:Z
    .end local v2           #context:Landroid/content/Context;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleInBackground()V

    goto :goto_0

    .line 1158
    :pswitch_5
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->changeLocaleInBackground()V

    goto :goto_0

    .line 1163
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isAggregationUpgradeNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->upgradeAggregationAlgorithmInBackground()V

    goto :goto_0

    .line 1170
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInBackground()V

    goto :goto_0

    .line 1175
    :pswitch_8
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    goto :goto_0

    .line 1180
    :pswitch_9
    if-eqz p2, :cond_0

    .line 1181
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3139
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 3141
    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3142
    if-nez v0, :cond_0

    .line 3143
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 3191
    :goto_0
    return-object v0

    .line 3144
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3145
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 3147
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3148
    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 3152
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDirectoryAuthority(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    move-result-object v0

    .line 3153
    if-nez v0, :cond_3

    .line 3154
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid directory ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 3155
    goto :goto_0

    .line 3158
    :cond_3
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 3159
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3160
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3161
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3162
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 3163
    const-string v2, "account_name"

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3165
    :cond_4
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3166
    const-string v2, "account_type"

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3169
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3170
    if-eqz v0, :cond_6

    .line 3171
    const-string v2, "limit"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3174
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3176
    if-nez p2, :cond_9

    .line 3177
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3180
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3183
    if-nez v0, :cond_7

    move-object v0, v6

    .line 3184
    goto/16 :goto_0

    .line 3187
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v1

    .line 3188
    if-eqz v1, :cond_8

    .line 3189
    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;

    invoke-direct {v2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/CrossProcessCursor;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 3191
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v2, p2

    goto :goto_1
.end method

.method public queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3272
    sget-boolean v5, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v5, :cond_0

    .line 3273
    const-string v5, "ContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3278
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3279
    const/4 v15, 0x0

    .line 3280
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 3284
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 3285
    sparse-switch v5, :sswitch_data_0

    .line 3899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    move-object v10, v0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v16}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3910
    :cond_1
    :goto_0
    return-object v5

    .line 3287
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 3291
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3292
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->appendLocalDirectorySelectionIfNeeded(Landroid/database/sqlite/SQLiteQueryBuilder;J)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3903
    :goto_1
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrictProjectionMap(Z)V

    move-object/from16 v5, p0

    move-object/from16 v7, v22

    move-object/from16 v8, p2

    move-object/from16 v13, v16

    .line 3905
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3907
    const-string v5, "address_book_index_extras"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v12, p0

    move-object v14, v6

    move-object/from16 v15, v22

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    .line 3908
    invoke-direct/range {v12 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 3297
    :sswitch_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3298
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3299
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3300
    const-string v7, "_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3301
    goto :goto_1

    .line 3306
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 3307
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3308
    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 3309
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    const-string v7, "Missing a lookup key"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3313
    :cond_2
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3314
    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 3315
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 3316
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3317
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3319
    const-string v17, "_id"

    const-string v20, "lookup"

    move-object/from16 v7, p0

    move-object v9, v6

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v7 .. v21}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3322
    if-nez v5, :cond_1

    .line 3327
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3328
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3330
    const-string v7, "_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3331
    goto/16 :goto_1

    .line 3336
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 3337
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3338
    const/4 v8, 0x4

    if-ge v7, v8, :cond_4

    .line 3339
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    const-string v7, "Missing a lookup key"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3342
    :cond_4
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3343
    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    .line 3344
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 3345
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3346
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3347
    const-string v5, " AND "

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3348
    const-string v17, "contact_id"

    const-string v20, "lookup"

    move-object/from16 v7, p0

    move-object v9, v6

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v7 .. v21}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3351
    if-nez v5, :cond_1

    .line 3358
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3359
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3361
    const-string v7, " AND contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3362
    goto/16 :goto_1

    .line 3367
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3369
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3370
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3372
    const-string v7, "_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3373
    goto/16 :goto_1

    .line 3377
    :sswitch_6
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3378
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3379
    const-string v7, "SELECT \'vcards_\' || ? || \'.vcf\' AS _display_name, NULL AS _size"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 3387
    :sswitch_7
    const-string v5, ""

    .line 3388
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_20

    .line 3389
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    :goto_2
    move-object/from16 v7, p0

    move-object/from16 v8, v22

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v12, p6

    .line 3391
    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;J)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3393
    goto/16 :goto_1

    .line 3398
    :sswitch_8
    const/4 v7, 0x0

    .line 3399
    const/16 v8, 0x3ef

    if-ne v5, v8, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x3

    if-le v5, v8, :cond_1f

    .line 3401
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 3402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3403
    const-string v8, "_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3408
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3410
    const/4 v7, 0x0

    .line 3411
    const/4 v8, 0x0

    .line 3412
    if-eqz p2, :cond_1e

    .line 3413
    const-string v7, "times_contacted_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3415
    const-string v8, "times_contacted_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    move-object v8, v7

    .line 3420
    :goto_4
    if-eqz v5, :cond_6

    .line 3421
    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3423
    :cond_6
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3424
    const-string v9, "starred=1"

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, v22

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3428
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3429
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3430
    if-eqz v5, :cond_7

    .line 3431
    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3433
    :cond_7
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3434
    const-string v9, "times_contacted > 0 AND (starred = 0 OR starred IS NULL)"

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3440
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const-string v5, "starred DESC, times_contacted_sort DESC, display_name COLLATE LOCALIZED ASC"

    const-string v9, "(SELECT COUNT(1) FROM contacts WHERE starred=1) + 25"

    invoke-virtual {v7, v8, v5, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3442
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3443
    if-eqz v5, :cond_1

    .line 3444
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v5, v6, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3451
    :sswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3452
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_1b

    .line 3453
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title=?)))"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3454
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 3460
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3461
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3462
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3463
    const-string v7, " AND contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3464
    goto/16 :goto_1

    .line 3468
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3469
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3470
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3471
    const-string v7, " AND contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3472
    const-string v7, " AND _id=photo_id"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3473
    goto/16 :goto_1

    .line 3477
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3478
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3479
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3480
    const-string v7, " AND contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3481
    goto/16 :goto_1

    .line 3486
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 3487
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3488
    const/4 v8, 0x4

    if-ge v7, v8, :cond_8

    .line 3489
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    const-string v7, "Missing a lookup key"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3492
    :cond_8
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3493
    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    .line 3494
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 3495
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3496
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3497
    const-string v5, " AND "

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3499
    const-string v17, "contact_id"

    const-string v20, "lookup"

    move-object/from16 v7, p0

    move-object v9, v6

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v7 .. v21}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3503
    if-nez v5, :cond_1

    .line 3508
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3509
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3511
    const-string v7, " AND contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3512
    goto/16 :goto_1

    .line 3516
    :sswitch_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3517
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3518
    goto/16 :goto_1

    .line 3522
    :sswitch_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3523
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3524
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3525
    const-string v7, " AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3526
    goto/16 :goto_1

    .line 3530
    :sswitch_10
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3531
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3532
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_c

    .line 3533
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 3534
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3535
    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3537
    const/4 v8, 0x0

    .line 3538
    const/4 v9, 0x0

    .line 3539
    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3540
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1d

    .line 3541
    const-string v8, "raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3549
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const/4 v8, 0x1

    .line 3551
    const/4 v9, 0x1

    .line 3554
    :goto_5
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3555
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 3556
    if-eqz v8, :cond_a

    .line 3557
    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    :cond_a
    const-string v8, "_id IN (SELECT DISTINCT data_id FROM phone_lookup WHERE normalized_number LIKE \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3563
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    const-string v5, "%\')"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    const/4 v5, 0x1

    .line 3568
    :goto_6
    if-nez v5, :cond_b

    .line 3571
    const-string v5, "0"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    :cond_b
    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3576
    :cond_c
    const-string v5, "data4,contact_id"

    .line 3577
    if-nez p5, :cond_1a

    .line 3578
    const-string v7, "in_visible_group DESC, contact_id"

    move-object v12, v5

    move-object v11, v7

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 3584
    :sswitch_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3585
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3586
    goto/16 :goto_1

    .line 3590
    :sswitch_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3591
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3592
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/email_v2\' AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3594
    goto/16 :goto_1

    .line 3598
    :sswitch_13
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3599
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3600
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_1b

    .line 3601
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3603
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3604
    const-string v7, " AND UPPER(data1)=UPPER(?)"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3605
    goto/16 :goto_1

    .line 3610
    :sswitch_14
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3611
    const/4 v5, 0x0

    .line 3612
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_d

    .line 3613
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 3614
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3615
    const/4 v5, 0x0

    .line 3619
    :cond_d
    if-nez v5, :cond_e

    .line 3621
    const-string v5, " AND 0"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3651
    :goto_7
    const-string v5, "data1,contact_id"

    .line 3652
    if-nez p5, :cond_1a

    .line 3653
    const-string v7, "(CASE WHEN starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),times_contacted DESC, display_name, contact_id, is_super_primary DESC"

    move-object v12, v5

    move-object v11, v7

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 3623
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3624
    const-string v8, " AND _id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    const-string v8, "SELECT _id FROM data WHERE mimetype_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3630
    const-string v8, " AND data1 LIKE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3632
    const-string v8, "@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 3633
    const-string v8, " UNION SELECT _id FROM data WHERE +mimetype_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3638
    const-string v8, " AND raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3645
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "*"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3646
    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    :cond_f
    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 3659
    :sswitch_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3660
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/postal-address_v2\'"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3662
    goto/16 :goto_1

    .line 3666
    :sswitch_16
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3667
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3668
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/postal-address_v2\'"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3670
    const-string v7, " AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3671
    goto/16 :goto_1

    .line 3675
    :sswitch_17
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3676
    goto/16 :goto_1

    .line 3680
    :sswitch_18
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3681
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 3682
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3683
    const-string v7, " AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3684
    goto/16 :goto_1

    .line 3688
    :sswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3689
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3690
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3691
    const-string v7, " AND raw_contact_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3692
    goto/16 :goto_1

    .line 3696
    :sswitch_1a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3697
    goto/16 :goto_1

    .line 3701
    :sswitch_1b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 3702
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3703
    const-string v7, " AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3704
    goto/16 :goto_1

    .line 3709
    :sswitch_1c
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3712
    const-string v5, " length(lookup.normalized_number) DESC"

    .line 3715
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 3716
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3718
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v22

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3721
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3723
    const/4 v7, 0x0

    .line 3724
    const/4 v8, 0x0

    move-object v12, v15

    move-object v11, v5

    move-object v10, v8

    move-object v9, v7

    .line 3725
    goto/16 :goto_1

    .line 3715
    :cond_10
    const-string v7, ""

    goto :goto_9

    .line 3729
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3730
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3731
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3732
    goto/16 :goto_1

    .line 3736
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3737
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3738
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3739
    const-string v7, "_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3740
    goto/16 :goto_1

    .line 3744
    :sswitch_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AS groups"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3745
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3746
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 3747
    const-string v5, "_id"

    move-object v12, v5

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3748
    goto/16 :goto_1

    .line 3752
    :sswitch_20
    const-string v5, "agg_exceptions"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3753
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3754
    goto/16 :goto_1

    .line 3758
    :sswitch_21
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3759
    const/4 v5, 0x0

    .line 3760
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_18

    .line 3761
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object/from16 v11, p3

    .line 3764
    :goto_a
    if-eqz v16, :cond_11

    .line 3765
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v10, v5

    .line 3770
    :goto_b
    const/4 v5, 0x0

    .line 3771
    const-string v6, "query"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3772
    if-eqz v6, :cond_17

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    .line 3773
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3774
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 3775
    const/16 v7, 0x3a

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3776
    const/4 v12, -0x1

    if-ne v7, v12, :cond_12

    new-instance v7, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const-string v12, "name"

    move-object v0, v7

    move-object v1, v12

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3767
    :cond_11
    const/4 v5, 0x5

    move v10, v5

    goto :goto_b

    .line 3776
    :cond_12
    new-instance v12, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v13, v7}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v12

    goto :goto_d

    :cond_13
    move-object v12, v5

    .line 3786
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v5, v0

    move-object/from16 v6, v22

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 3793
    :sswitch_22
    const-string v5, "settings"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3794
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3795
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 3801
    if-eqz p2, :cond_16

    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "summ_count"

    aput-object v10, v8, v9

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 3803
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3805
    :goto_f
    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "summ_phones"

    aput-object v11, v9, v10

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 3807
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 3814
    :sswitch_23
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3815
    goto/16 :goto_1

    .line 3819
    :sswitch_24
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 3820
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3821
    const-string v7, "data._id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3822
    goto/16 :goto_1

    .line 3826
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 3831
    :sswitch_26
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 3832
    const-string v7, "suggest_intent_extra_data"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 3839
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3840
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3841
    goto/16 :goto_1

    .line 3844
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3845
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3846
    const-string v5, "has_phone_number=1"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3847
    goto/16 :goto_1

    .line 3850
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3851
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3852
    const-string v5, "starred=1"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3853
    goto/16 :goto_1

    .line 3856
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3857
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3858
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title=?)))"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3859
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3860
    goto/16 :goto_1

    .line 3863
    :sswitch_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3864
    goto/16 :goto_1

    .line 3868
    :sswitch_2c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3869
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 3870
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3871
    const-string v7, " AND _id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3872
    goto/16 :goto_1

    .line 3876
    :sswitch_2d
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 3880
    :sswitch_2e
    const-string v5, "directories"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3881
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 3882
    goto/16 :goto_1

    .line 3886
    :sswitch_2f
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3887
    const-string v5, "directories"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3888
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3889
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3890
    const-string v7, "_id=?"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    .line 3891
    goto/16 :goto_1

    .line 3895
    :sswitch_30
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->completeName(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    :cond_14
    move-object v5, v13

    goto/16 :goto_0

    :cond_15
    move-object v12, v15

    move-object/from16 v11, p5

    move-object v10, v7

    move-object/from16 v9, p3

    goto/16 :goto_1

    :cond_16
    move-object/from16 v7, p4

    goto/16 :goto_f

    :cond_17
    move-object v12, v5

    goto/16 :goto_e

    :cond_18
    move-object v11, v5

    goto/16 :goto_a

    :cond_19
    move-object/from16 v5, p5

    goto/16 :goto_8

    :cond_1a
    move-object v12, v5

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    :cond_1b
    move-object v12, v15

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    :cond_1c
    move v5, v9

    goto/16 :goto_6

    :cond_1d
    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    goto/16 :goto_5

    :cond_1e
    move-object v15, v8

    move-object v8, v7

    goto/16 :goto_4

    :cond_1f
    move-object v5, v7

    goto/16 :goto_3

    :cond_20
    move-object v11, v5

    goto/16 :goto_2

    .line 3285
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_a
        0x3ed -> :sswitch_7
        0x3ee -> :sswitch_8
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_5
        0x3f3 -> :sswitch_6
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_c
        0x3f7 -> :sswitch_d
        0x3f8 -> :sswitch_d
        0x7d2 -> :sswitch_17
        0x7d3 -> :sswitch_18
        0x7d4 -> :sswitch_19
        0x7d5 -> :sswitch_2c
        0xbb8 -> :sswitch_1a
        0xbb9 -> :sswitch_1b
        0xbba -> :sswitch_e
        0xbbb -> :sswitch_f
        0xbbc -> :sswitch_10
        0xbbd -> :sswitch_11
        0xbbe -> :sswitch_12
        0xbbf -> :sswitch_13
        0xbc0 -> :sswitch_14
        0xbc1 -> :sswitch_15
        0xbc2 -> :sswitch_16
        0xfa0 -> :sswitch_1c
        0x1770 -> :sswitch_20
        0x1b58 -> :sswitch_23
        0x1b59 -> :sswitch_24
        0x1f40 -> :sswitch_21
        0x2328 -> :sswitch_22
        0x2710 -> :sswitch_1d
        0x2711 -> :sswitch_1e
        0x2713 -> :sswitch_1f
        0x2af8 -> :sswitch_0
        0x2ee1 -> :sswitch_25
        0x2ee2 -> :sswitch_26
        0x36b0 -> :sswitch_27
        0x36b1 -> :sswitch_28
        0x36b2 -> :sswitch_29
        0x36b3 -> :sswitch_2a
        0x3a99 -> :sswitch_2b
        0x3e81 -> :sswitch_2d
        0x4269 -> :sswitch_2e
        0x426a -> :sswitch_2f
        0x4650 -> :sswitch_30
    .end sparse-switch
.end method

.method public resetDirectoryCache()V
    .locals 2

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 3266
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 3267
    monitor-exit v0

    .line 3268
    return-void

    .line 3267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected scheduleBackgroundTask(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1108
    return-void
.end method

.method protected scheduleBackgroundTask(ILjava/lang/Object;)V
    .locals 2
    .parameter "task"
    .parameter "arg"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1112
    return-void
.end method

.method protected setProviderStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 1561
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eq v0, p1, :cond_0

    .line 1562
    iput p1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1563
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1565
    :cond_0
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1418
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 1422
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1423
    const/16 v1, 0x3e81

    if-ne v0, v1, :cond_1

    .line 1424
    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1426
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    move v0, v2

    .line 1434
    :goto_0
    return v0

    .line 1429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 1434
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/common/content/SQLiteContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected updateAccountsInBackground([Landroid/accounts/Account;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2961
    .line 2962
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2963
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2964
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2966
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->findValidAccounts(Ljava/util/Set;)V

    .line 2969
    array-length v1, p1

    move v2, v9

    move v3, v9

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    .line 2970
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2972
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO accounts (account_name, account_type) VALUES (?, ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v10

    .line 2969
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2980
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2981
    array-length v0, p1

    move v2, v9

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    .line 2982
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2981
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2985
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2987
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 2988
    const-string v2, "ContactsProvider"

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

    .line 2989
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 2990
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM groups WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2994
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM presence WHERE presence_raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?)"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3001
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3005
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM settings WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3009
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3013
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM directories WHERE accountName=? AND accountType=?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3017
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->resetDirectoryCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3054
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3023
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 3024
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT _id FROM contacts WHERE (name_raw_contact_id NOT NULL AND name_raw_contact_id NOT IN (SELECT _id FROM raw_contacts)) OR (photo_id NOT NULL AND photo_id NOT IN (SELECT _id FROM data))"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 3035
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3036
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 3039
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3042
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3043
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_4

    .line 3045
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 3046
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    move v0, v10

    .line 3049
    :goto_5
    if-eqz v0, :cond_6

    .line 3050
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 3052
    :cond_6
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3054
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3056
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3058
    if-eqz v0, :cond_7

    .line 3059
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactsAccountCount([Landroid/accounts/Account;)V

    .line 3060
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    .line 3063
    :cond_7
    return v0

    :cond_8
    move v0, v3

    goto :goto_5
.end method

.method protected updateDirectoriesInBackground(Z)V
    .locals 1
    .parameter "rescan"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackages(Z)V

    .line 1251
    return-void
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2393
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2394
    const-string v0, "ContactsProvider"

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

    .line 2399
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2400
    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_2

    if-nez p3, :cond_2

    .line 2401
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2402
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2403
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/providers/contacts/TransactionContext;->syncStateUpdated(JLjava/lang/Object;)V

    move v0, v6

    .line 2549
    :cond_1
    :goto_0
    return v0

    .line 2406
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 2407
    const-string v1, "caller_is_syncadapter"

    invoke-static {p1, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 2409
    sparse-switch v0, :sswitch_data_0

    .line 2544
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2545
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2411
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2415
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2419
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p2, v0, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2416
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

    .line 2424
    :sswitch_2
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    .line 2429
    :sswitch_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2435
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2437
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 2438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :cond_4
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2442
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 2443
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2448
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 2452
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2449
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2458
    :sswitch_6
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 2460
    if-lez v0, :cond_1

    .line 2461
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_6

    move v2, v6

    :goto_3
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_6
    move v2, v7

    goto :goto_3

    :sswitch_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2470
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 2471
    if-lez v0, :cond_1

    .line 2472
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_7

    move v2, v6

    :goto_4
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_7
    move v2, v7

    goto :goto_4

    .line 2478
    :sswitch_8
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    invoke-direct {p0, p2, v0, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2484
    :sswitch_9
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2485
    if-eqz p3, :cond_8

    .line 2486
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=? AND("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2491
    :cond_8
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 2492
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 2499
    :sswitch_a
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 2501
    if-lez v0, :cond_1

    .line 2502
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_9

    move v2, v6

    :goto_5
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_9
    move v2, v7

    goto :goto_5

    .line 2508
    :sswitch_b
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2509
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_a

    const-string v1, ""

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2512
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 2514
    if-lez v0, :cond_1

    .line 2515
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_b

    move v2, v6

    :goto_7
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    .line 2510
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    move v2, v7

    .line 2515
    goto :goto_7

    .line 2521
    :sswitch_c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    goto/16 :goto_0

    .line 2526
    :sswitch_d
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2528
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_c

    move v2, v6

    :goto_8
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_c
    move v2, v7

    goto :goto_8

    .line 2533
    :sswitch_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2538
    :sswitch_f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanPackagesByUid(I)V

    move v0, v6

    .line 2540
    goto/16 :goto_0

    .line 2409
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_9
        0x7d4 -> :sswitch_5
        0xbb8 -> :sswitch_6
        0xbb9 -> :sswitch_7
        0xbbb -> :sswitch_7
        0xbbe -> :sswitch_7
        0xbc2 -> :sswitch_7
        0x1770 -> :sswitch_c
        0x1b58 -> :sswitch_e
        0x2328 -> :sswitch_d
        0x2710 -> :sswitch_a
        0x2711 -> :sswitch_b
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
        0x4269 -> :sswitch_f
    .end sparse-switch
.end method

.method protected updateLocaleInBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1207
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-ne v0, v4, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1212
    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 1214
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    iget v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1219
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1220
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1222
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_0
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 4294
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4295
    return-void
.end method

.method protected updateSearchIndexInBackground()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager;->updateIndex()V

    .line 1247
    return-void
.end method

.method protected upgradeAggregationAlgorithmInBackground()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 5259
    const-string v0, "ContactsProvider"

    const-string v1, "Upgrading aggregation algorithm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 5263
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 5264
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "raw_contacts r1 JOIN raw_contacts r2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "r1._id"

    aput-object v5, v3, v4

    const-string v4, "r1._id!=r2._id AND r1.contact_id=r2.contact_id AND r1.account_name=r2.account_name AND r1.account_type=r2.account_type"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    move v1, v12

    .line 5274
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5275
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5276
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5278
    add-int/lit8 v1, v1, 0x1

    .line 5279
    goto :goto_0

    .line 5281
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5283
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5284
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    .line 5285
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5286
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "aggregation_v2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5289
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5290
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 5291
    const-string v0, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregation algorithm upgraded for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " contacts, in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    return-void

    .line 5281
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5289
    :catchall_1
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5290
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 5291
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregation algorithm upgraded for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " contacts, in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    throw v0

    .line 5289
    :catchall_2
    move-exception v0

    move v1, v12

    goto :goto_1
.end method

.method wipeData()V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->wipeData()V

    .line 1385
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1386
    return-void
.end method
