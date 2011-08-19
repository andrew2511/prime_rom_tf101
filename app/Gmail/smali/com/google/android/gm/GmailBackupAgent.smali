.class public Lcom/google/android/gm/GmailBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "GmailBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 187
    const-string v0, "GmailBackupAgent"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "GmailBackupAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may have changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const-string v0, "com.google.android.gm"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private static getChecksum(Ljava/util/LinkedHashMap;Ljava/util/List;)J
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 329
    .local v0, checksum:Ljava/util/zip/Adler32;
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 332
    .local v4, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    iget-wide v5, v4, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 333
    iget-wide v5, v4, Lcom/google/android/gm/provider/Gmail$Settings;->maxAttachmentSizeMb:J

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 334
    iget-object v5, v4, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;[Ljava/lang/String;)V

    .line 335
    iget-object v5, v4, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;[Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .end local v4           #settings:Lcom/google/android/gm/provider/Gmail$Settings;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/SharedPreference;

    .line 338
    .local v3, preference:Lcom/google/android/gm/SharedPreference;
    invoke-virtual {v3}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v3}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_1

    .line 342
    .end local v3           #preference:Lcom/google/android/gm/SharedPreference;
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v5

    return-wide v5
.end method

.method private static getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;
    .locals 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 235
    .local v4, size:I
    new-array v1, v4, [B

    .line 236
    .local v1, bytes:[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 237
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 238
    .local v0, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v3, inputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 243
    :goto_0
    return-object v5

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "GmailBackupAgent"

    const-string v6, "Invalid restore data"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, paths:[Ljava/lang/String;
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 197
    .local v7, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, fileName:Ljava/lang/String;
    const-string v9, ".db"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "internal"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    const-string v9, "internal"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".db"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v0           #accountName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 207
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getRingtoneTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    const/4 v4, 0x2

    .line 283
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 284
    .local v2, ringtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v2, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 285
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 287
    .local v0, cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 291
    .local v1, cursorUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v3

    .line 301
    .end local v1           #cursorUri:Landroid/net/Uri;
    .end local v3           #title:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 299
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v4, 0x0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private static getRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x2

    .line 305
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 306
    .local v1, ringtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v1, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 307
    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 309
    .local v0, cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 315
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 321
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 319
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v4, 0x0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private getSharedPreferenceList(Landroid/app/backup/BackupDataInput;)Ljava/util/List;
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lcom/google/android/gm/GmailBackupAgent;->getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getSyncsettingsMap(Landroid/app/backup/BackupDataInput;)Ljava/util/LinkedHashMap;
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1}, Lcom/google/android/gm/GmailBackupAgent;->getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private static restoreSharedPreferences(Landroid/content/Context;Lcom/google/android/gm/Persistence;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter "persistence"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/Persistence;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/SharedPreference;

    .line 252
    .local v4, preference:Lcom/google/android/gm/SharedPreference;
    invoke-virtual {v4}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 253
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/gm/SharedPreference;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, account:Ljava/lang/String;
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 256
    check-cast v6, Ljava/lang/Boolean;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p1, p0, v1, v3, v6}, Lcom/google/android/gm/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 257
    const-string v7, "GmailBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .restart local v6       #value:Ljava/lang/Object;
    :cond_0
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 259
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 264
    .local v5, stringValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/gm/Persistence;->isRingtone(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 267
    invoke-static {p0, v5}, Lcom/google/android/gm/GmailBackupAgent;->getRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    if-nez v5, :cond_1

    .line 269
    const-string v7, "GmailBackupAgent"

    const-string v8, "Can\'t restore ringtone (not found)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1, p0, v1, v3, v5}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v7, "GmailBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 277
    .end local v5           #stringValue:Ljava/lang/String;
    :cond_2
    const-string v7, "GmailBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown preference data type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    .end local v1           #account:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #preference:Lcom/google/android/gm/SharedPreference;
    .end local v6           #value:Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;J)V
    .locals 2
    .parameter "checksum"
    .parameter "l"

    .prologue
    .line 361
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 362
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 363
    return-void
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V
    .locals 2
    .parameter "checksum"
    .parameter "o"

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;[Ljava/lang/String;)V
    .locals 6
    .parameter "checksum"
    .parameter "strings"

    .prologue
    .line 354
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 355
    .local v3, string:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 356
    const-wide/16 v4, 0x7c

    invoke-static {p0, v4, v5}, Lcom/google/android/gm/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "data"
    .parameter "key"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 214
    .local v3, outputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 216
    .local v1, bytes:[B
    array-length v2, v1

    .line 217
    .local v2, len:I
    invoke-virtual {p0, p1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 218
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 219
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 28
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 63
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gm/GmailBackupAgent;->getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/GmailBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v8

    .line 67
    .local v8, gmail:Lcom/google/android/gm/provider/Gmail;
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v20

    .line 68
    .local v20, syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, account:Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/google/android/gm/provider/Gmail;->getSettings(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v24

    move-object/from16 v0, v20

    move-object v1, v3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    .end local v3           #account:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v17

    .line 74
    .local v17, persistence:Lcom/google/android/gm/Persistence;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getBackupPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 77
    .local v19, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gm/GmailBackupAgent;->getChecksum(Ljava/util/LinkedHashMap;Ljava/util/List;)J

    move-result-wide v12

    .line 78
    .local v12, newChecksum:J
    new-instance v16, Ljava/io/DataOutputStream;

    new-instance v24, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v16, out:Ljava/io/DataOutputStream;
    move-object/from16 v0, v16

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 83
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v24, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v10, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 88
    .local v14, oldChecksum:J
    cmp-long v24, v14, v12

    if-nez v24, :cond_2

    .line 89
    const-string v24, "GmailBackupAgent"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 90
    const-string v24, "GmailBackupAgent"

    const-string v25, "No changes to backup"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v14           #oldChecksum:J
    :cond_1
    :goto_1
    return-void

    .line 94
    :catch_0
    move-exception v24

    move-object/from16 v6, v24

    .line 95
    .local v6, e:Ljava/io/IOException;
    const-string v24, "GmailBackupAgent"

    const-string v25, "Failed to read old backup state"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v6           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 99
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const-string v24, "GmailBackupAgent"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 100
    const-string v24, "GmailBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Backup "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gm/SharedPreference;>;"
    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 107
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gm/SharedPreference;

    .line 109
    .local v18, preference:Lcom/google/android/gm/SharedPreference;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/gm/Persistence;->isRingtone(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 110
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 111
    .local v23, value:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v24

    if-nez v24, :cond_6

    .line 128
    const-string v24, "GmailBackupAgent"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 129
    const-string v24, "GmailBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Backup "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 115
    :cond_6
    :try_start_2
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 116
    .local v22, uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v24

    if-eqz v24, :cond_7

    .line 128
    const-string v24, "GmailBackupAgent"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 129
    const-string v24, "GmailBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Backup "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 120
    :cond_7
    :try_start_3
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/gm/GmailBackupAgent;->getRingtoneTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 121
    .local v21, title:Ljava/lang/String;
    if-nez v21, :cond_9

    .line 122
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    .end local v23           #value:Ljava/lang/String;
    :cond_8
    :goto_4
    const-string v24, "GmailBackupAgent"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 129
    const-string v24, "GmailBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Backup "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 124
    .restart local v21       #title:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    .restart local v23       #value:Ljava/lang/String;
    :cond_9
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gm/SharedPreference;->setValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 128
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    .end local v23           #value:Ljava/lang/String;
    :catchall_0
    move-exception v24

    const-string v25, "GmailBackupAgent"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 129
    const-string v25, "GmailBackupAgent"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Backup "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    throw v24

    .line 135
    .end local v18           #preference:Lcom/google/android/gm/SharedPreference;
    :cond_b
    const-string v24, "gmail_sync_settings_v1"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/GmailBackupAgent;->writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v24, "gmail_shared_preferences_v1"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/GmailBackupAgent;->writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 13
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 146
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    .line 147
    .local v3, gmail:Lcom/google/android/gm/provider/Gmail;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v7

    .line 152
    .end local p2
    .local v7, persistence:Lcom/google/android/gm/Persistence;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, key:Ljava/lang/String;
    const-string v10, "gmail_shared_preferences_v1"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailBackupAgent;->getSharedPreferenceList(Landroid/app/backup/BackupDataInput;)Ljava/util/List;

    move-result-object v8

    .line 157
    .local v8, sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    if-eqz v8, :cond_0

    .line 158
    invoke-static {v1, v7, v8}, Lcom/google/android/gm/GmailBackupAgent;->restoreSharedPreferences(Landroid/content/Context;Lcom/google/android/gm/Persistence;Ljava/util/List;)V

    goto :goto_0

    .line 160
    .end local v8           #sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    :cond_1
    const-string v10, "gmail_sync_settings_v1"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailBackupAgent;->getSyncsettingsMap(Landroid/app/backup/BackupDataInput;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 163
    .local v9, syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    if-eqz v9, :cond_0

    .line 164
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const-string v10, "GmailBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restore: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v3, p2, v0}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_1

    .line 170
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 171
    const-string v10, "GmailBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown restore key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    .end local v5           #key:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 176
    .restart local v9       #syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-direct {p0, v1}, Lcom/google/android/gm/GmailBackupAgent;->getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/Gmail;->getSettings(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 179
    .end local v0           #account:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v1}, Lcom/google/android/gm/Persistence;->getBackupPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 181
    .restart local v8       #sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v6, out:Ljava/io/DataOutputStream;
    invoke-static {v9, v8}, Lcom/google/android/gm/GmailBackupAgent;->getChecksum(Ljava/util/LinkedHashMap;Ljava/util/List;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 184
    return-void
.end method
