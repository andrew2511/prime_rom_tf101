.class public Lcom/android/providers/contacts/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactAggregator$1;,
        Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactsQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregationQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;
    }
.end annotation


# static fields
.field private static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mAggregationExceptionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAggregationExceptionIdsValid:Z

.field private mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private final mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private mContactDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

.field private mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mEnabled:Z

.field private mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field private mMatcher:Lcom/android/providers/contacts/ContactMatcher;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdPhoto:J

.field private final mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactsMarkedForAggregation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsQueryByContactId:Ljava/lang/String;

.field private mRawContactsQueryByRawContactId:Ljava/lang/String;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSelectionArgs3:[Ljava/lang/String;

.field private mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    .line 107
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 112
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V
    .locals 9
    .parameter "contactsProvider"
    .parameter "contactsDatabaseHelper"
    .parameter "photoPriorityResolver"
    .parameter "nameSplitter"
    .parameter "commonNicknameCache"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 146
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 147
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 148
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 155
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 156
    new-instance v2, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    .line 157
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    .line 158
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    .line 930
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    .line 250
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 251
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 252
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 253
    iput-object p4, p0, Lcom/android/providers/contacts/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 254
    iput-object p5, p0, Lcom/android/providers/contacts/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 256
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 280
    .local v1, replaceAggregatePresenceSql:Ljava/lang/String;
    const-string v2, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 282
    const-string v2, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 288
    const-string v2, "DELETE FROM contacts WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 292
    const-string v2, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 296
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 302
    const-string v2, "UPDATE contacts SET photo_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 307
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 312
    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 317
    const-string v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 327
    const-string v2, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 333
    const-string v2, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 339
    const-string v2, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 344
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 349
    const-string v2, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 354
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, single_is_restricted=?, lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 355
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, single_is_restricted, lookup)  VALUES (?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 357
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    .line 358
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    .line 359
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    .line 362
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 366
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 369
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactAggregator;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private declared-synchronized aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V
    .locals 17
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "currentContactId"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "values"

    .prologue
    .line 638
    monitor-enter p0

    const/4 v12, 0x0

    .line 640
    .local v12, aggregationMode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 641
    .local v11, aggModeObject:Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 642
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 645
    :cond_0
    const-wide/16 v7, -0x1

    .line 646
    .local v7, contactId:J
    const-wide/16 v13, -0x1

    .line 648
    .local v13, contactIdToSplit:J
    if-nez v12, :cond_9

    .line 649
    invoke-virtual/range {p9 .. p9}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 650
    invoke-virtual/range {p10 .. p10}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v7

    .line 653
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_3

    .line 657
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 659
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    .end local v7           #contactId:J
    move-result-wide v7

    .line 665
    .restart local v7       #contactId:J
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-eqz v5, :cond_3

    cmp-long v5, v7, p7

    if-eqz v5, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 667
    move-wide v13, v7

    .line 668
    const-wide/16 v7, -0x1

    .line 675
    :cond_3
    const-wide/16 v15, 0x0

    .line 677
    .local v15, currentContactContentsCount:J
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_4

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v15

    .line 685
    :cond_4
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_6

    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    if-ne v12, v5, :cond_6

    .line 689
    :cond_5
    move-wide/from16 v7, p7

    .line 692
    :cond_6
    cmp-long v5, v7, p7

    if-nez v5, :cond_a

    .line 694
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->markAggregated(J)V

    .line 720
    :cond_7
    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_8

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->splitAutomaticallyAggregatedRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    .end local v15           #currentContactContentsCount:J
    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    .line 671
    :cond_9
    const/4 v5, 0x3

    if-ne v12, v5, :cond_3

    goto :goto_1

    .line 695
    .restart local v15       #currentContactContentsCount:J
    :cond_a
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_b

    .line 697
    :try_start_1
    invoke-direct/range {p0 .. p4}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 698
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-lez v5, :cond_7

    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 638
    .end local v7           #contactId:J
    .end local v11           #aggModeObject:Ljava/lang/Integer;
    .end local v13           #contactIdToSplit:J
    .end local v15           #currentContactContentsCount:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 703
    .restart local v7       #contactId:J
    .restart local v11       #aggModeObject:Ljava/lang/Integer;
    .restart local v13       #contactIdToSplit:J
    .restart local v15       #currentContactContentsCount:J
    :cond_b
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-nez v5, :cond_c

    .line 705
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 712
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 717
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "db"
    .parameter "contactId"
    .parameter "statement"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1564
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1565
    return-void
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 44
    .parameter "db"
    .parameter "sql"
    .parameter "sqlArgs"
    .parameter "statement"

    .prologue
    .line 1572
    const-wide/16 v26, -0x1

    .line 1573
    .local v26, currentRawContactId:J
    const-wide/16 v17, -0x1

    .line 1574
    .local v17, bestPhotoId:J
    const/16 v30, 0x0

    .line 1575
    .local v30, foundSuperPrimaryPhoto:Z
    const/16 v37, -0x1

    .line 1576
    .local v37, photoPriority:I
    const/16 v43, 0x0

    .line 1577
    .local v43, totalRowCount:I
    const/16 v23, 0x0

    .line 1578
    .local v23, contactSendToVoicemail:I
    const/16 v20, 0x0

    .line 1579
    .local v20, contactCustomRingtone:Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 1580
    .local v21, contactLastTimeContacted:J
    const/16 v25, 0x0

    .line 1581
    .local v25, contactTimesContacted:I
    const/16 v24, 0x0

    .line 1582
    .local v24, contactStarred:I
    const/16 v40, 0x1

    .line 1583
    .local v40, singleIsRestricted:I
    const/16 v31, 0x0

    .line 1585
    .local v31, hasPhoneNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1588
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1590
    .local v19, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1591
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1592
    .local v5, rawContactId:J
    cmp-long v4, v5, v26

    if-eqz v4, :cond_7

    .line 1593
    move-wide/from16 v26, v5

    .line 1594
    add-int/lit8 v43, v43, 0x1

    .line 1597
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1598
    .local v7, displayName:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1599
    .local v8, displayNameSource:I
    const/16 v4, 0xc

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1600
    .local v36, nameVerified:I
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1601
    .local v16, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v9

    if-eqz v36, :cond_9

    const/4 v4, 0x1

    move v10, v4

    :goto_1
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1606
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1607
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move/from16 v39, v4

    .line 1609
    .local v39, sendToVoicemail:Z
    :goto_2
    if-eqz v39, :cond_1

    .line 1610
    add-int/lit8 v23, v23, 0x1

    .line 1614
    .end local v39           #sendToVoicemail:Z
    :cond_1
    if-nez v20, :cond_2

    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1616
    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1619
    :cond_2
    const/16 v4, 0x8

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1620
    .local v33, lastTimeContacted:J
    cmp-long v4, v33, v21

    if-lez v4, :cond_3

    .line 1621
    move-wide/from16 v21, v33

    .line 1624
    :cond_3
    const/16 v4, 0x9

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 1625
    .local v42, timesContacted:I
    move/from16 v0, v42

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 1626
    move/from16 v25, v42

    .line 1629
    :cond_4
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1630
    const/16 v24, 0x1

    .line 1634
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v43

    move v1, v4

    if-le v0, v1, :cond_b

    .line 1636
    const/16 v40, 0x0

    .line 1646
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v9, v0

    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide v12, v5

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1654
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    :cond_7
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1655
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1656
    .local v28, dataId:J
    const/16 v4, 0xe

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1657
    .local v35, mimetypeId:I
    const/16 v4, 0xf

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move/from16 v41, v4

    .line 1658
    .local v41, superPrimary:Z
    :goto_4
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    move-wide v11, v0

    cmp-long v4, v9, v11

    if-nez v4, :cond_d

    .line 1659
    if-nez v30, :cond_0

    .line 1660
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1661
    .restart local v16       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v38

    .line 1662
    .local v38, priority:I
    if-nez v41, :cond_8

    move/from16 v0, v38

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    .line 1663
    :cond_8
    move/from16 v37, v38

    .line 1664
    move-wide/from16 v17, v28

    .line 1665
    or-int v30, v30, v41

    goto/16 :goto_0

    .line 1601
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v38           #priority:I
    .end local v41           #superPrimary:Z
    .restart local v7       #displayName:Ljava/lang/String;
    .restart local v8       #displayNameSource:I
    .restart local v36       #nameVerified:I
    :cond_9
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_1

    .line 1607
    :cond_a
    const/4 v4, 0x0

    move/from16 v39, v4

    goto/16 :goto_2

    .line 1638
    .restart local v33       #lastTimeContacted:J
    .restart local v42       #timesContacted:I
    :cond_b
    const/16 v4, 0xb

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1640
    .local v32, isRestricted:I
    if-nez v32, :cond_6

    .line 1642
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 1657
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v32           #isRestricted:I
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    .restart local v28       #dataId:J
    .restart local v35       #mimetypeId:I
    :cond_c
    const/4 v4, 0x0

    move/from16 v41, v4

    goto :goto_4

    .line 1668
    .restart local v41       #superPrimary:Z
    :cond_d
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    move-wide v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v9, v11

    if-nez v4, :cond_0

    .line 1669
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1674
    .end local v5           #rawContactId:J
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v41           #superPrimary:Z
    :cond_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1677
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v5, v0

    iget-wide v9, v5, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1680
    const-wide/16 v9, -0x1

    cmp-long v4, v17, v9

    if-eqz v4, :cond_f

    .line 1681
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1686
    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v43

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const-wide/16 v9, 0x1

    :goto_6
    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1688
    const/4 v4, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1690
    const/4 v4, 0x5

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1692
    const/4 v4, 0x6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1694
    const/4 v4, 0x7

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1696
    const/16 v4, 0x8

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1698
    const/16 v4, 0x9

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1700
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1702
    return-void

    .line 1674
    :catchall_0
    move-exception v4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1683
    :cond_f
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 1686
    :cond_10
    const-wide/16 v9, 0x0

    goto :goto_6
.end method

.method private containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "db"
    .parameter "contactId"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 732
    if-nez p4, :cond_0

    .line 733
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type IS NULL  AND account_name IS NULL "

    .line 737
    .local v2, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 738
    .local v0, args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 749
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 751
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 752
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 754
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    .line 740
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=?"

    .line 744
    .restart local v2       #query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 745
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 746
    aput-object p4, v0, v5

    .line 747
    const/4 v3, 0x2

    aput-object p5, v0, v3

    goto :goto_0

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    move v3, v4

    .line 752
    goto :goto_1

    .line 754
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 815
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 817
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 818
    .local v0, contactId:J
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 819
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 820
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setPresenceContactId(JJ)V

    .line 821
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 822
    return-void
.end method

.method private findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2073
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-direct {v8, v4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 2074
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 2077
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V

    .line 2079
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2080
    :cond_0
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2083
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2084
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 2085
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2089
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2096
    :goto_1
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2092
    :cond_2
    invoke-direct {p0, p1, v8, v9, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "structuredNameBased"

    .prologue
    .line 1126
    invoke-virtual {p4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1127
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1128
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v0, "raw_contact_id=? AND name_type IN (0,1,2)"

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1134
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1136
    .local v9, normalizedName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1137
    .local v10, type:I
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1140
    .end local v9           #normalizedName:Ljava/lang/String;
    .end local v10           #type:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1128
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "raw_contact_id=?"

    move-object v3, v0

    goto :goto_0

    .line 1140
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1142
    return-void
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x2

    .line 1399
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1400
    .local v9, firstLetters:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 1401
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1402
    .local v7, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 1403
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1404
    .local v8, firstLetter:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(normalized_name GLOB \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1412
    .local v2, selection:Ljava/lang/String;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1400
    .end local v2           #selection:Ljava/lang/String;
    .end local v8           #firstLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1418
    .end local v7           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    :cond_1
    return-void
.end method

.method private markAggregated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 899
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 900
    return-void
.end method

.method private markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 527
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 531
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 533
    .local v10, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 535
    .local v8, aggregationMode:I
    if-nez v8, :cond_0

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v10, v11, v8, v0}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .end local v8           #aggregationMode:I
    .end local v10           #rawContactId:J
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "selection"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "algorithm"
    .parameter "limit"

    .prologue
    .line 1440
    const-string v1, "name_lookup INNER JOIN raw_contacts ON (name_lookup.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1444
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1446
    .local v11, contactId:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1447
    .local v6, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1452
    .local v5, nameType:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 1453
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1454
    .local v10, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v4, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v0, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1459
    .end local v5           #nameType:I
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    .end local v11           #contactId:Ljava/lang/Long;
    .end local v12           #i:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1461
    return-void

    .line 1459
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v3, -0x1

    .line 1058
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1059
    .local v0, bestMatch:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    move-wide v2, v3

    .line 1070
    :goto_0
    return-wide v2

    .line 1062
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 1064
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1065
    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    move-wide v2, v3

    .line 1066
    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 1070
    goto :goto_0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 17
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 993
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    move v3, v0

    if-nez v3, :cond_0

    .line 994
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 999
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    move-object v3, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1000
    const-wide/16 v3, -0x1

    .line 1037
    :goto_0
    return-wide v3

    .line 1003
    :cond_1
    const-string v4, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id1="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " OR "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "raw_contact_id2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1010
    .local v11, c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1011
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1012
    .local v16, type:I
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1013
    .local v14, rawContactId1:J
    const-wide/16 v12, -0x1

    .line 1014
    .local v12, contactId:J
    cmp-long v3, p2, v14

    if-nez v3, :cond_4

    .line 1015
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1017
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1025
    :cond_3
    :goto_2
    const-wide/16 v3, -0x1

    cmp-long v3, v12, v3

    if-eqz v3, :cond_2

    .line 1026
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 1027
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1034
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1020
    .restart local v12       #contactId:J
    .restart local v14       #rawContactId1:J
    .restart local v16       #type:I
    :cond_4
    const/4 v3, 0x3

    :try_start_1
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1022
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto :goto_2

    .line 1029
    :cond_5
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1034
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1037
    const/16 v3, 0x64

    const/4 v4, 0x1

    move-object/from16 v0, p4

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v3

    goto/16 :goto_0
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 10
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1081
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 1083
    .local v8, secondaryContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 1084
    :cond_0
    const-wide/16 v0, -0x1

    .line 1105
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1087
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1092
    if-eqz v7, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1091
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1105
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v9}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 944
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 945
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 950
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 952
    .local v9, rawContactId1:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 953
    .local v11, rawContactId2:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 957
    .end local v9           #rawContactId1:J
    .end local v11           #rawContactId2:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 960
    iput-boolean v13, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 961
    return-void
.end method

.method private processDisplayNameCanditate(JLjava/lang/String;IZZ)V
    .locals 5
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "writableAccount"
    .parameter "verified"

    .prologue
    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, replace:Z
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1715
    const/4 v0, 0x1

    .line 1738
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1739
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 1740
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1741
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput p4, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 1742
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 1743
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 1745
    :cond_1
    return-void

    .line 1716
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    .line 1719
    const/4 v0, 0x1

    goto :goto_0

    .line 1720
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-ne v1, p6, :cond_0

    .line 1721
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ge v1, p4, :cond_4

    .line 1723
    const/4 v0, 0x1

    goto :goto_0

    .line 1724
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v1, p4, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-nez v1, :cond_5

    if-eqz p5, :cond_5

    .line 1726
    const/4 v0, 0x1

    goto :goto_0

    .line 1727
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-ne v1, p5, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/android/providers/contacts/NameNormalizer;->compareComplexity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1731
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1988
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1989
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 1992
    move-object/from16 v0, p4

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1993
    if-eqz v4, :cond_0

    .line 1994
    const-string v5, ","

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_0
    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1991
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 1998
    :cond_1
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2001
    const-string v3, " AND _id IN "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2006
    :cond_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 2007
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2010
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2011
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2014
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2018
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2019
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2020
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    .line 2021
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2022
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2027
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    move/from16 v1, p5

    if-le v0, v1, :cond_a

    .line 2028
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move v1, v3

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    .line 2032
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2033
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 2036
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 2037
    if-eqz v3, :cond_6

    .line 2038
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2035
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2042
    :cond_7
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id"

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2048
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2049
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 2050
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2053
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2056
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2057
    const/4 v6, 0x0

    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 2058
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v7

    .line 2059
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aput v7, v5, v6

    .line 2057
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2062
    :cond_9
    new-instance v4, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v4, v3, v5}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v4

    :cond_a
    move-object/from16 v12, p4

    goto/16 :goto_3
.end method

.method private setContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 890
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 891
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 892
    return-void
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 907
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 908
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 909
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 913
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 914
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 915
    return-void
.end method

.method private splitAutomaticallyAggregatedRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "txContext"
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    .line 764
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 765
    const-string v6, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 769
    .local v0, count:I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    const-string v3, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 791
    .local v3, query:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 794
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x1

    sub-int v6, v0, v6

    if-ge v2, v6, :cond_2

    .line 795
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 802
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 804
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_0

    .line 805
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 798
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 799
    .local v4, rawContactId:J
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 802
    .end local v4           #rawContactId:J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private updateAggregatedStatusUpdate(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 616
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 617
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateLastStatusUpdateId(J)V

    .line 619
    return-void
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v4, -0x1

    .line 1150
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1151
    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-virtual {p5, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 1152
    .local v0, bestMatch:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    move-wide v2, v0

    .line 1159
    :goto_0
    return-wide v2

    .line 1156
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1157
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    move-wide v2, v4

    .line 1159
    goto :goto_0
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1335
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1336
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v6, 0x2

    iget-wide v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    .line 1337
    const-string v4, "data dataA JOIN data dataB ON (dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1341
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1342
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1343
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithEmailMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1346
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1348
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1193
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 1194
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1198
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1200
    .local v1, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1202
    .local v3, nameTypeA:I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1203
    .local v5, nameTypeB:I
    const/4 v7, 0x0

    move-object v0, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1205
    if-ne v3, v10, :cond_0

    if-ne v5, v10, :cond_0

    .line 1207
    invoke-virtual {p4, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1211
    .end local v1           #contactId:J
    .end local v3           #nameTypeA:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameTypeB:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1213
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "query"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 1283
    invoke-virtual {p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1284
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1, p3}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)V

    .line 1286
    .local v0, builder:Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 1287
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1291
    :cond_0
    const-string v2, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    sget-object v3, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1295
    .local v10, c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1296
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1297
    .local v2, contactId:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1298
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->getLookupType(Ljava/lang/String;)I

    move-result v4

    .line 1299
    .local v4, nameTypeA:I
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1300
    .local v6, nameTypeB:I
    const/4 v8, 0x0

    move-object v1, p4

    move-object v7, v5

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1302
    const/4 v1, 0x3

    if-ne v4, v1, :cond_1

    const/4 v1, 0x3

    if-ne v6, v1, :cond_1

    .line 1303
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1307
    .end local v2           #contactId:J
    .end local v4           #nameTypeA:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #nameTypeB:I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1378
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1379
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1380
    const-string v4, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1384
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1385
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1386
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithPhoneNumberMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1389
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1391
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 2105
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2106
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2107
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2108
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 2109
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 2110
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;",
            "Lcom/android/providers/contacts/ContactMatcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2115
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    .line 2116
    const-string v2, "name"

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2117
    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_0

    .line 2122
    :cond_1
    return-void
.end method


# virtual methods
.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    move v2, v0

    if-nez v2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v11, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 576
    .local v11, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v12, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v12}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 577
    .local v12, matcher:Lcom/android/providers/contacts/ContactMatcher;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v13, values:Landroid/content/ContentValues;
    const-wide/16 v16, 0x0

    .line 580
    .local v16, contactId:J
    const/4 v14, 0x0

    .line 581
    .local v14, accountName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 582
    .local v15, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 583
    const-string v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 587
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 589
    .end local v16           #contactId:J
    .local v9, contactId:J
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 590
    .end local v15           #accountType:Ljava/lang/String;
    .local v7, accountType:Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 593
    .end local v14           #accountName:Ljava/lang/String;
    .local v8, accountName:Ljava/lang/String;
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 596
    invoke-direct/range {v2 .. v13}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 593
    .end local v7           #accountType:Ljava/lang/String;
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #contactId:J
    .restart local v14       #accountName:Ljava/lang/String;
    .restart local v15       #accountType:Ljava/lang/String;
    .restart local v16       #contactId:J
    :catchall_0
    move-exception v2

    move-object v7, v15

    .end local v15           #accountType:Ljava/lang/String;
    .restart local v7       #accountType:Ljava/lang/String;
    move-wide/from16 v9, v16

    .end local v16           #contactId:J
    .restart local v9       #contactId:J
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .end local v7           #accountType:Ljava/lang/String;
    .restart local v15       #accountType:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v7, v15

    .end local v15           #accountType:Ljava/lang/String;
    .restart local v7       #accountType:Ljava/lang/String;
    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_2

    .end local v7           #accountType:Ljava/lang/String;
    .end local v9           #contactId:J
    .restart local v15       #accountType:Ljava/lang/String;
    .restart local v16       #contactId:J
    :cond_1
    move-object v7, v15

    .end local v15           #accountType:Ljava/lang/String;
    .restart local v7       #accountType:Ljava/lang/String;
    move-object v8, v14

    .end local v14           #accountName:Ljava/lang/String;
    .restart local v8       #accountName:Ljava/lang/String;
    move-wide/from16 v9, v16

    .end local v16           #contactId:J
    .restart local v9       #contactId:J
    goto :goto_1
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 33
    .parameter "txContext"
    .parameter "db"

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v19

    .line 398
    .local v19, count:I
    if-nez v19, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 403
    .local v31, start:J
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_2

    .line 404
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move/from16 v0, v19

    neg-int v0, v0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 409
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 411
    .local v30, selectionArgs:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 412
    .local v24, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "SELECT _id,contact_id, account_type,account_name FROM raw_contacts WHERE _id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 415
    .local v27, rawContactId:J
    if-lez v24, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    add-int/lit8 v25, v24, 0x1

    .end local v24           #index:I
    .local v25, index:I
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v30, v24

    move/from16 v24, v25

    .end local v25           #index:I
    .restart local v24       #index:I
    goto :goto_1

    .line 422
    .end local v27           #rawContactId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 425
    .local v29, rawContactIds:[J
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 426
    .local v18, contactIds:[J
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 427
    .local v16, accountTypes:[Ljava/lang/String;
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 428
    .local v15, accountNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 430
    .local v17, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 431
    const/16 v24, 0x0

    .line 432
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 433
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v29, v24

    .line 434
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v18, v24

    .line 435
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v24

    .line 436
    const/4 v3, 0x3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 440
    :cond_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 443
    const/16 v22, 0x0

    .local v22, i:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 444
    aget-wide v6, v29, v22

    aget-object v8, v16, v22

    aget-object v9, v15, v22

    aget-wide v10, v18, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    move-object v14, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    .line 443
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 440
    .end local v22           #i:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 448
    .restart local v22       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v20, v3, v31

    .line 449
    .local v20, elapsedTime:J
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 451
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_0

    .line 452
    if-nez v19, :cond_7

    const-string v3, ""

    move-object/from16 v26, v3

    .line 453
    .local v26, performance:Ljava/lang/String;
    :goto_4
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    .end local v26           #performance:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v4, v0

    div-long v4, v20, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms per contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_4
.end method

.method public clearPendingAggregations()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 490
    return-void
.end method

.method public invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 935
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public markForAggregation(JIZ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"
    .parameter "force"

    .prologue
    .line 497
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    if-nez p3, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 508
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 505
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public markNewForAggregation(JI)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 549
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 550
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 551
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 552
    .local v0, contactId:J
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactId(JJ)V

    .line 553
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 554
    return-void
.end method

.method public queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 7
    .parameter "qb"
    .parameter "projection"
    .parameter "contactId"
    .parameter "maxSuggestions"
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1964
    .local p7, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1965
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1967
    :try_start_0
    invoke-direct {p0, v2, p3, p4, p7}, Lcom/android/providers/contacts/ContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .local v4, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    .line 1968
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1970
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .end local v4           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 373
    return-void
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 5
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 458
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 462
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v0

    .line 463
    .local v0, aggregationMode:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p0, p2, p3, v0, v3}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    goto :goto_0

    .line 473
    :pswitch_2
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v1

    .line 475
    .local v1, contactId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 482
    .end local v1           #contactId:J
    :pswitch_3
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 3
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 601
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 606
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 607
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 608
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 610
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 611
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    goto :goto_0
.end method

.method public updateAggregationAfterVisibilityChange(J)V
    .locals 20
    .parameter "contactId"

    .prologue
    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 849
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v19

    .line 850
    .local v19, visible:Z
    if-eqz v19, :cond_0

    .line 851
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 883
    :goto_0
    return-void

    .line 855
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 856
    const-string v6, "raw_contacts"

    sget-object v7, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 859
    .local v14, cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 860
    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 861
    .local v17, rawContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v17

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    const/16 v7, 0x46

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v13

    .line 866
    .local v13, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 867
    .local v16, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 880
    .end local v13           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .end local v17           #rawContactId:J
    :catchall_0
    move-exception v6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v6

    .line 870
    .restart local v13       #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #rawContactId:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v17

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v17

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v6, v0

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v13

    .line 875
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 876
    .restart local v16       #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 880
    .end local v13           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .end local v17           #rawContactId:J
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 1836
    const/4 v10, 0x0

    .line 1838
    .local v10, lookupKeyUpdateNeeded:Z
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1841
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1844
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1846
    .local v1, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1847
    .local v3, displayName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1848
    .local v4, displayNameSource:I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1849
    .local v11, nameVerified:I
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1851
    .local v8, accountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v11, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1856
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v10, v0

    .line 1857
    goto :goto_0

    .line 1851
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 1859
    .end local v1           #rawContactId:J
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #displayNameSource:I
    .end local v8           #accountType:Ljava/lang/String;
    .end local v11           #nameVerified:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1862
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v5, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_2

    .line 1863
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v5, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1864
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1865
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1868
    :cond_2
    if-eqz v10, :cond_3

    .line 1869
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1871
    :cond_3
    return-void

    .line 1859
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1827
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1828
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1833
    :goto_0
    return-void

    .line 1832
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1880
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1881
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1889
    :goto_0
    return-void

    .line 1885
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1886
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1887
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1888
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateLastStatusUpdateId(J)V
    .locals 5
    .parameter "contactId"

    .prologue
    .line 625
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, contactIdString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    return-void
.end method

.method public updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1917
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1918
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1919
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const-string v7, "_id"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1922
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1934
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1939
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v9, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1941
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1942
    return-void

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1908
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1909
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1914
    :goto_0
    return-void

    .line 1913
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v11

    .line 1762
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1766
    :cond_0
    const-wide/16 v13, -0x1

    .line 1767
    const/4 v15, -0x1

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    .line 1771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contacts JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT NULL))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1777
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move v4, v15

    move-wide v5, v13

    .line 1780
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1781
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1782
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 1783
    :goto_2
    if-eqz v9, :cond_3

    move-wide v4, v7

    .line 1796
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1799
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1804
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 1782
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 1788
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v10, v0

    invoke-virtual {v10, v9}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 1790
    if-le v9, v4, :cond_1

    move v4, v9

    move-wide v5, v7

    .line 1792
    goto :goto_1

    .line 1796
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1802
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    :cond_5
    move-wide v4, v5

    goto :goto_3
.end method

.method protected updateStarred(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1949
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1950
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1955
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method
