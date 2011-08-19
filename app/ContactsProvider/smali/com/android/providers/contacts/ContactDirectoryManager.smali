.class public Lcom/android/providers/contacts/ContactDirectoryManager;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;,
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    }
.end annotation


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 92
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private areTypeResourceIdsValid()Z
    .locals 14

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 121
    .local v10, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "directories"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "typeResourceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "typeResourceName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 127
    .local v8, cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 129
    .local v11, resourceId:I
    if-eqz v11, :cond_0

    .line 130
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, packageName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, storedResourceName:Ljava/lang/String;
    invoke-direct {p0, v10, v9, v11}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, resourceName:Ljava/lang/String;
    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 142
    .end local v9           #packageName:Ljava/lang/String;
    .end local v11           #resourceId:I
    .end local v12           #resourceName:Ljava/lang/String;
    .end local v13           #storedResourceName:Ljava/lang/String;
    :goto_0
    return v1

    .line 139
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v1, 0x1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getResourceNameById(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "pm"
    .parameter "packageName"
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 156
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 153
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v3

    .line 154
    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    move-object v2, v3

    .line 156
    goto :goto_0
.end method

.method private insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const v4, 0x7f030005

    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "authority"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "typeResourceName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 252
    return-void
.end method

.method private insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const v4, 0x7f030006

    .line 255
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "authority"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "typeResourceName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 266
    return-void
.end method

.method private scanAllPackagesIfNeeded()V
    .locals 10

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v6

    const-string v7, "directoryScanComplete"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, scanComplete:Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 178
    .local v4, start:J
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackages()I

    move-result v0

    .line 179
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v6

    const-string v7, "directoryScanComplete"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 181
    .local v1, end:J
    const-string v6, "ContactDirectoryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discovered "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contact directories in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v6, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    goto :goto_0
.end method

.method private updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 21
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, directoryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 424
    .local v18, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 425
    .local v17, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "packageName"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v5, "authority"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v5, "accountName"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v5, "accountType"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v5, "typeResourceId"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v5, "displayName"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v5, "exportSupport"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v5, "shortcutSupport"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v5, "photoSupport"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    move v5, v0

    if-eqz v5, :cond_0

    .line 437
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 439
    .local v19, resourceName:Ljava/lang/String;
    const-string v5, "typeResourceName"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v19           #resourceName:Ljava/lang/String;
    :cond_0
    const-string v6, "directories"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const-string v8, "packageName=? AND authority=? AND accountName=? AND accountType=?"

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v9, v5

    const/4 v5, 0x1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v9, v5

    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v9, v5

    const/4 v5, 0x3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 450
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 452
    .local v15, id:J
    const-string v5, "directories"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v20

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 457
    :goto_1
    move-wide v0, v15

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 455
    .end local v15           #id:J
    :cond_1
    :try_start_1
    const-string v5, "directories"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v15

    .restart local v15       #id:J
    goto :goto_1

    .line 459
    .end local v15           #id:J
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 462
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v17           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;
    .locals 20
    .parameter "packageInfo"
    .parameter "initialScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 297
    .local v6, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object v12, v0

    .line 298
    .local v12, providers:[Landroid/content/pm/ProviderInfo;
    if-eqz v12, :cond_1

    .line 299
    move-object v4, v12

    .local v4, arr$:[Landroid/content/pm/ProviderInfo;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v11, v4, v7

    .line 300
    .local v11, provider:Landroid/content/pm/ProviderInfo;
    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 301
    .local v10, metaData:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 302
    const-string v15, "android.content.ContactDirectory"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 303
    .local v14, trueFalse:Ljava/lang/Object;
    if-eqz v14, :cond_0

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 304
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V

    .line 299
    .end local v14           #trueFalse:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 310
    .end local v4           #arr$:[Landroid/content/pm/ProviderInfo;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #metaData:Landroid/os/Bundle;
    .end local v11           #provider:Landroid/content/pm/ProviderInfo;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_2

    if-eqz p2, :cond_2

    .line 311
    const/4 v15, 0x0

    .line 335
    :goto_1
    return-object v15

    .line 314
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 315
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 319
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "packageName=?"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .local v13, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 321
    const-string v15, " AND _id NOT IN("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 323
    .local v8, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    iget-wide v15, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J

    move-object v0, v13

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 331
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v15

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v15

    .line 325
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    const-string v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v15, "directories"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/providers/contacts/ContactsProvider2;->resetDirectoryCache()V

    move-object v15, v6

    .line 335
    goto/16 :goto_1
.end method


# virtual methods
.method public getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object p0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 274
    iget-object v3, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 275
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 278
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const/16 v3, 0x88

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    .line 287
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/content/pm/PackageInfo;

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 283
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    iput-object p1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 2
    .parameter "provider"

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V
    .locals 12
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;",
            "Landroid/content/pm/ProviderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, directoryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directories"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 346
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 348
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    if-nez v6, :cond_3

    .line 351
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned a NULL cursor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    if-eqz v6, :cond_1

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 396
    .local v8, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .local v9, photoSupport:I
    :pswitch_0
    :try_start_1
    iput v9, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    .line 403
    .end local v9           #photoSupport:I
    :cond_2
    :goto_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    invoke-direct {v8, p0}, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;-><init>(Lcom/android/providers/contacts/ContactDirectoryManager;)V

    .line 355
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    .line 356
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    .line 358
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 359
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    .line 360
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    .line 363
    :cond_4
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 364
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 365
    .local v7, exportSupport:I
    packed-switch v7, :pswitch_data_0

    .line 372
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid export support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v7           #exportSupport:I
    :cond_5
    :goto_2
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 377
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 378
    .local v10, shortcutSupport:I
    packed-switch v10, :pswitch_data_1

    .line 385
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid shortcut support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v10           #shortcutSupport:I
    :cond_6
    :goto_3
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 391
    .restart local v9       #photoSupport:I
    packed-switch v9, :pswitch_data_2

    .line 399
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid photo support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 406
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v9           #photoSupport:I
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 407
    .local v11, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    if-eqz v6, :cond_1

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 369
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v7       #exportSupport:I
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :pswitch_1
    :try_start_3
    iput v7, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 409
    .end local v7           #exportSupport:I
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 382
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .restart local v10       #shortcutSupport:I
    :pswitch_2
    :try_start_4
    iput v10, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 378
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 391
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method scanAllPackages()I
    .locals 20

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 190
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 195
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x88

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    .line 197
    .local v14, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v14, :cond_2

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v7, deleteWhereBuilder:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v6, deleteWhereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "NOT (_id=? OR _id=?"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v16, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    .line 210
    .local v16, wherePart:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 212
    .local v13, packageInfo:Landroid/content/pm/PackageInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 213
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 215
    .local v9, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 216
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int v4, v4, v17

    .line 219
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 220
    .local v12, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    const-string v17, " OR "

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v17, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-object v0, v12

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    move-object v0, v12

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    move-object v0, v12

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    move-object v0, v12

    iget-object v0, v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v9           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v13           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v17, ")"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v17, "directories"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 234
    .local v8, deletedRows:I
    const-string v17, "ContactDirectoryManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "deleted "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " stale rows which don\'t have any relevant directory"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v6           #deleteWhereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #deleteWhereBuilder:Ljava/lang/StringBuilder;
    .end local v8           #deletedRows:I
    .end local v16           #wherePart:Ljava/lang/String;
    :cond_2
    return v4
.end method

.method public scanAllPackages(Z)V
    .locals 3
    .parameter "rescan"

    .prologue
    .line 164
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->areTypeResourceIdsValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    const-string v1, "directoryScanComplete"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackagesIfNeeded()V

    .line 169
    return-void
.end method

.method public scanPackagesByUid(I)V
    .locals 4
    .parameter "callingUid"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 105
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, callerPackages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 108
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->onPackageChanged(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1           #i:I
    :cond_0
    return-void
.end method
