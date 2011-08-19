.class public Lcom/android/providers/contacts/LegacyContactImporter;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyContactImporter$DeletedRawContactInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotoIdUpdate;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotoInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$HasPhoneNumberUpdate;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhoneLookupInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhoneInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$PostalInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ImInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$EmailInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$OrganizationInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$OrganizationsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$NoteInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$StructuredNameInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ContactsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$RawContactsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;
    }
.end annotation


# instance fields
.field private mBatchCounter:I

.field private mContactCount:I

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mEmailMimetypeId:J

.field private mEstimatedStorageRequirement:J

.field private mGroupMembershipMimetypeId:J

.field private mImMimetypeId:J

.field private final mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mNoteMimetypeId:J

.field private mOrganizationMimetypeId:J

.field private mPhoneMimetypeId:J

.field private mPhoneticNameAvailable:Z

.field private mPhotoMimetypeId:J

.field private mPostalMimetypeId:J

.field private mResolver:Landroid/content/ContentResolver;

.field private mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mStructuredNameMimetypeId:J

.field private mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 2
    .parameter "context"
    .parameter "contactsProvider"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    .line 102
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 105
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getNameLookupBuilder()Lcom/android/providers/contacts/NameLookupBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 109
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "insert"
    .parameter "index"
    .parameter "string"

    .prologue
    .line 1288
    if-nez p3, :cond_0

    .line 1289
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private checkForImportFailureTest()V
    .locals 5

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM settings WHERE key=\'TEST\'"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 230
    .local v0, isTest:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Testing import failure."

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    return-void
.end method

.method private importCalls()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1184
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calls"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1187
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-direct {p0, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->insertCall(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1193
    return-void
.end method

.method private importContactMethods()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 822
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 823
    .local v9, emailInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 824
    .local v10, imInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 825
    .local v12, postalInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact_methods"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 828
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 830
    .local v11, kind:I
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 832
    :pswitch_0
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertEmail(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 845
    .end local v11           #kind:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 846
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 847
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 848
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 836
    .restart local v11       #kind:I
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v8, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->insertIm(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    goto :goto_0

    .line 840
    :pswitch_2
    invoke-direct {p0, v8, v12}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPostal(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    .end local v11           #kind:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 846
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 847
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 848
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 851
    return-void

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private importContactsFromLegacyDb()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 162
    .local v0, version:I
    const/16 v1, 0x4e

    if-ge v0, v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 166
    :cond_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 171
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mStructuredNameMimetypeId:J

    .line 174
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNoteMimetypeId:J

    .line 175
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mOrganizationMimetypeId:J

    .line 176
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneMimetypeId:J

    .line 177
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEmailMimetypeId:J

    .line 178
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImMimetypeId:J

    .line 179
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPostalMimetypeId:J

    .line 180
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    .line 181
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mGroupMembershipMimetypeId:J

    .line 184
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 186
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->checkForImportFailureTest()V

    .line 196
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->wipeData()V

    .line 198
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importGroups()V

    .line 199
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPeople()V

    .line 200
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importOrganizations()V

    .line 201
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPhones()V

    .line 202
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importContactMethods()V

    .line 203
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPhotos()V

    .line 204
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importGroupMemberships()V

    .line 205
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->updateDisplayNamesAndLookupKeys()V

    .line 210
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importDeletedPeople()V

    .line 212
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 214
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importCalls()V

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private importDeletedPeople()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(account_name,account_type,sourceid,deleted,aggregation_mode) VALUES (?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1259
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_deleted_people"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1262
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertDeletedPerson(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1267
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1266
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1267
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1269
    return-void
.end method

.method private importGroupMemberships()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1112
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1113
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groupmembership"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1116
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertGroupMembership(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1120
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1123
    return-void
.end method

.method private importGroups()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO groups(_id,title,notes,system_id,dirty,group_visible,account_name,account_type,sourceid) VALUES (?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 280
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 283
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 287
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 290
    return-void
.end method

.method private importOrganizations()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data4,data2,data3) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 713
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "organizations"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$OrganizationsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 716
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertOrganization(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 720
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 723
    return-void
.end method

.method private importPeople()V
    .locals 15

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(_id,contact_id,custom_ringtone,dirty,last_time_contacted,send_to_voicemail,starred,times_contacted,sync1,sync2,account_name,account_type,sourceid,display_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 490
    .local v13, rawContactInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,name_raw_contact_id) VALUES (?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 491
    .local v9, contactInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 493
    .local v14, structuredNameInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 495
    .local v12, noteInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITH_PHONETIC_NAME:[Ljava/lang/String;

    move-object v2, v0

    .line 498
    .local v2, columns:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 501
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-direct {p0, v8, v13}, Lcom/android/providers/contacts/LegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 503
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 504
    invoke-direct {p0, v8, v12}, Lcom/android/providers/contacts/LegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 505
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 529
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 531
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 495
    :cond_0
    :try_start_3
    sget-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    .line 508
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 511
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_PHONETIC_NAME:[Ljava/lang/String;

    move-object v2, v0

    .line 514
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 517
    :goto_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    invoke-direct {p0, v8, v13}, Lcom/android/providers/contacts/LegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v10

    .line 519
    .local v10, id:J
    invoke-direct {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 520
    invoke-direct {p0, v8, v14}, Lcom/android/providers/contacts/LegacyContactImporter;->insertStructuredName(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 521
    invoke-direct {p0, v8, v12}, Lcom/android/providers/contacts/LegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 522
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 525
    .end local v10           #id:J
    :catchall_2
    move-exception v0

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 511
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    .line 525
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 528
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 529
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 531
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 533
    return-void
.end method

.method private importPhones()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 957
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data4) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 958
    .local v10, phoneInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 960
    .local v11, phoneLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET has_phone_number=1 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 962
    .local v9, hasPhoneUpdate:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phones"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 965
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0, v8, v10, v11, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPhone(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 970
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 971
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 972
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 969
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 970
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 971
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 972
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 974
    return-void
.end method

.method private importPhotos()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1047
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data15,data_sync1) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1048
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET photo_id=? WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1049
    .local v10, photoIdUpdate:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "photos"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1052
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPhoto(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1056
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1057
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1056
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1057
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1060
    return-void
.end method

.method private insert(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 4
    .parameter "insertStatement"

    .prologue
    .line 1296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1297
    .local v0, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1298
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Insert failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1301
    :cond_0
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    .line 1302
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1304
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1305
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1306
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    .line 1308
    :cond_1
    return-wide v0
.end method

.method private insertCall(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1199
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1200
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "number"

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "date"

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1202
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1203
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "new"

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1204
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "name"

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "numberlabel"

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "numbertype"

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1212
    return-void
.end method

.method private insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 573
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 574
    .local v0, id:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 575
    const/4 v2, 0x2

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 577
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 579
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 581
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 583
    const/4 v2, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 585
    const/4 v2, 0x7

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 587
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 588
    return-void
.end method

.method private insertDeletedPerson(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v1, 0x1

    .line 1272
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1277
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1278
    const/4 v1, 0x2

    const-string v2, "com.google"

    invoke-virtual {p2, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1279
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1281
    const/4 v1, 0x4

    const-wide/16 v2, 0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1282
    const/4 v1, 0x5

    const-wide/16 v2, 0x3

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1284
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method private insertEmail(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 13
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x6

    .line 854
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 855
    .local v1, personId:J
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 857
    .local v5, email:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 858
    iget-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEmailMimetypeId:J

    invoke-virtual {p2, v9, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 859
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v10, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 860
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v11, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 861
    invoke-direct {p0, p2, v12, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 862
    const/16 v0, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v0, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 863
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v8, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 864
    const/4 v0, 0x7

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v0, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 866
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 867
    .local v3, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    .line 868
    return-void
.end method

.method private insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x7

    .line 293
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 295
    .local v1, id:J
    invoke-virtual {p2, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 296
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 297
    const/4 v3, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 298
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v7, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 299
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 300
    const/4 v3, 0x6

    const-wide/16 v4, 0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 302
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 305
    const/16 v3, 0x8

    const-string v4, "com.google"

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 306
    const/16 v3, 0x9

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 312
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 313
    return-void

    .line 308
    :cond_0
    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 309
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 310
    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method private insertGroupMembership(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 20
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 1126
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1128
    .local v16, personId:J
    const-wide/16 v14, 0x0

    .line 1129
    .local v14, groupId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1130
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1131
    .local v12, account:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1132
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1134
    .local v18, syncId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "groups"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "sourceid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1138
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1139
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 1142
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1145
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-nez v4, :cond_1

    .line 1146
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v19, values:Landroid/content/ContentValues;
    const-string v4, "account_name"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v4, "account_type"

    const-string v5, "com.google"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v4, "group_visible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1150
    const-string v4, "sourceid"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "groups"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 1158
    .end local v12           #account:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v18           #syncId:Ljava/lang/String;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1159
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mGroupMembershipMimetypeId:J

    move-wide v5, v0

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1160
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1161
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1162
    return-void

    .line 1142
    .restart local v12       #account:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v18       #syncId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1155
    .end local v12           #account:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v18           #syncId:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    goto :goto_0
.end method

.method private insertIm(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x6

    .line 871
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 873
    .local v0, personId:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 874
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImMimetypeId:J

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 875
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v6, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 876
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 877
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 878
    const/16 v2, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 879
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 880
    const/4 v2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 881
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 882
    return-void
.end method

.method private insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v5, 0x2

    .line 661
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, notes:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 668
    .local v0, id:J
    const/4 v3, 0x1

    invoke-virtual {p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 669
    iget-wide v3, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNoteMimetypeId:J

    invoke-virtual {p2, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 670
    const/4 v3, 0x3

    invoke-direct {p0, p2, v3, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 671
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method private insertOrganization(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 726
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 727
    .local v0, id:J
    invoke-virtual {p2, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 728
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mOrganizationMimetypeId:J

    invoke-virtual {p2, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 729
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 730
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 732
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 733
    const/4 v2, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 734
    const/4 v2, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 735
    const/16 v2, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 736
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 737
    return-void
.end method

.method private insertPhone(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "phoneInsert"
    .parameter "phoneLookupInsert"
    .parameter "hasPhoneUpdate"

    .prologue
    .line 978
    const-wide/16 v4, -0x1

    .line 979
    .local v4, lastUpdatedContact:J
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 980
    .local v2, id:J
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 981
    .local v7, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 982
    .local v6, normalizedNumber:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 983
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 985
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p2, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 986
    const/4 v8, 0x2

    iget-wide v9, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneMimetypeId:J

    invoke-virtual {p2, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 987
    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 988
    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 989
    const/4 v8, 0x5

    invoke-direct {p0, p2, v8, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 990
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 991
    const/4 v8, 0x7

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 992
    const/16 v8, 0x8

    invoke-direct {p0, p2, v8, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 994
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    .line 995
    .local v0, dataId:J
    if-eqz v6, :cond_1

    .line 996
    const/4 v8, 0x1

    invoke-virtual {p3, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 997
    const/4 v8, 0x2

    invoke-virtual {p3, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 998
    const/4 v8, 0x3

    invoke-virtual {p3, v8, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 999
    const/4 v8, 0x4

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1001
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1003
    cmp-long v8, v4, v2

    if-eqz v8, :cond_1

    .line 1004
    move-wide v4, v2

    .line 1005
    const/4 v8, 0x1

    invoke-virtual {p4, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1006
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1009
    :cond_1
    return-void
.end method

.method private insertPhoto(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "insert"
    .parameter "photoIdUpdate"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1063
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1067
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1069
    .local v1, personId:J
    invoke-virtual {p2, v7, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1070
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    invoke-virtual {p2, v8, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1071
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p2, v9, v5}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1073
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1075
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v10, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1080
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 1081
    .local v3, rowId:J
    invoke-virtual {p3, v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1082
    invoke-virtual {p3, v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1083
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 1077
    .end local v3           #rowId:J
    :cond_1
    invoke-virtual {p2, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method private insertPostal(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x6

    .line 885
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 887
    .local v0, personId:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 888
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPostalMimetypeId:J

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 889
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v6, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 890
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 892
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 893
    const/16 v2, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 894
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 895
    const/4 v2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 896
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 897
    return-void
.end method

.method private insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 11
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 536
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 537
    .local v1, id:J
    invoke-virtual {p2, v9, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 538
    const/4 v3, 0x2

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 539
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v10, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 541
    const/4 v3, 0x4

    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 543
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 545
    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 547
    const/4 v3, 0x7

    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 549
    const/16 v3, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 551
    const/16 v3, 0x9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 553
    const/16 v3, 0xa

    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 555
    const/16 v3, 0xe

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 558
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 561
    const-string v3, "com.google"

    invoke-direct {p0, p2, v7, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 562
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v8, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 568
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 569
    return-wide v1

    .line 564
    :cond_0
    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 565
    invoke-virtual {p2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 566
    invoke-virtual {p2, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method private insertStructuredName(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 23
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 591
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 592
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 598
    .local v5, id:J
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 599
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mStructuredNameMimetypeId:J

    move-wide v10, v0

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 600
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 602
    new-instance v22, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 603
    .local v22, splitName:Lcom/android/providers/contacts/NameSplitter$Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 605
    const/4 v4, 0x4

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 607
    const/4 v4, 0x5

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 609
    const/4 v4, 0x6

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 611
    const/4 v4, 0x7

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 613
    const/16 v4, 0x8

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getSuffix()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v4, v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v4

    move-object/from16 v1, v22

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v20

    .line 616
    .local v20, joined:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 619
    const/16 v4, 0x10

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 620
    .local v21, phoneticName:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 621
    const/16 v4, 0x20

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 622
    .local v19, index:I
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 623
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 631
    .end local v19           #index:I
    .end local v21           #phoneticName:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 633
    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/contacts/NameSplitter$Name;->getFullNameStyle()I

    move-result v18

    .line 634
    .local v18, fullNameStyle:I
    const/16 v4, 0x9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v10, v0

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 636
    const/16 v4, 0xa

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 638
    const/16 v4, 0xb

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 640
    const/16 v4, 0xc

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 642
    const/16 v4, 0xd

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move v7, v0

    int-to-long v10, v7

    move-object/from16 v0, p2

    move v1, v4

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v7

    .line 647
    .local v7, dataId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 650
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 653
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v10, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-wide v11, v5

    move-wide v13, v7

    invoke-virtual/range {v10 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    .end local v7           #dataId:J
    .end local v18           #fullNameStyle:I
    .restart local v19       #index:I
    .restart local v21       #phoneticName:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 626
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private updateDisplayNamesAndLookupKeys()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1216
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1219
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1221
    .local v7, rawContactId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1225
    .end local v7           #rawContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1227
    return-void
.end method


# virtual methods
.method public getEstimatedStorageRequirement()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    return-wide v0
.end method

.method public importContacts()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x400

    const-wide/16 v10, 0x5

    const/4 v9, 0x1

    .line 112
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    const-string v7, "contacts.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    const-string v6, "LegacyContactImporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Legacy contacts database does not exist at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    .line 150
    :goto_0
    return v6

    .line 119
    :cond_0
    const-string v6, "LegacyContactImporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Importing contacts from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v2, v6, :cond_4

    .line 123
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importContactsFromLegacyDb()V

    .line 125
    const-string v6, "LegacyContactImporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Imported legacy contacts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v6, v9

    goto :goto_0

    .line 129
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 130
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "LegacyContactImporter"

    const-string v7, "Database import exception. Will retry in 2000ms"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_2

    .line 139
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_3

    .line 139
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v6

    .line 144
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 145
    .local v3, oldDatabaseSize:J
    const-wide/16 v6, 0x4

    mul-long/2addr v6, v3

    div-long/2addr v6, v12

    div-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 146
    iget-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_5

    .line 147
    iput-wide v10, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 150
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
