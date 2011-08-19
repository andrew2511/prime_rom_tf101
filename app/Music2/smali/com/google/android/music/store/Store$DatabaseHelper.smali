.class Lcom/google/android/music/store/Store$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mResetDerivedAudioData:Z

.field private mResetMediaStoreImport:Z

.field private mResetRemoteContent:Z

.field final synthetic this$0:Lcom/google/android/music/store/Store;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/Store;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1558
    iput-object p1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    .line 1559
    invoke-static {p1}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "music.db"

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1545
    iput-boolean v4, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 1550
    iput-boolean v4, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    .line 1556
    iput-boolean v4, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    .line 1560
    return-void
.end method

.method private clearLocallyCachedFiles(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 2008
    const-string v1, "MUSIC"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v12

    const-string v0, "LocalCopyPath"

    aput-object v0, v2, v13

    const-string v3, "LocalCopyPath IS NOT NULL"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2011
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2012
    .local v9, csv:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2014
    new-instance v10, Ljava/io/File;

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2019
    .end local v10           #f:Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2020
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2021
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2022
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "LocalCopyPath"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2023
    const-string v0, "LocalCopyType"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2025
    const-string v0, "MUSIC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdIN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v9, v12, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v11, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2028
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private configureDatabaseConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1567
    :try_start_0
    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "disableWriteAheadLogging"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1570
    .local v0, disableWal:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget-boolean v2, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v2, :cond_0

    .line 1572
    const-string v2, "MusicStore"

    const-string v3, "Disabled WAL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1581
    .end local v0           #disableWal:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1574
    .restart local v0       #disableWal:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1575
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "MusicStore"

    const-string v3, "Fail to invoke disableWriteAheadLogging"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to disable write ahead logging"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1578
    .end local v0           #disableWal:Ljava/lang/reflect/Method;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private postImportProcessing(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1824
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    if-eqz v0, :cond_0

    .line 1825
    invoke-static {p1}, Lcom/google/android/music/store/Store;->deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1830
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$200(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v1}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 1835
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    if-eqz v0, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    const/4 v0, 0x0

    const-string v1, "com.google.android.music.MusicContent"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1845
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    if-eqz v0, :cond_2

    .line 1846
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeDerivedMusicData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1848
    :cond_2
    return-void
.end method

.method private upgradeDerivedMusicData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 1852
    const/4 v10, 0x0

    .line 1853
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1856
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1857
    :try_start_0
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 1858
    .local v9, file:Lcom/google/android/music/store/MusicFile;
    invoke-static {p1}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1859
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {v9, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 1861
    invoke-virtual {v9}, Lcom/google/android/music/store/MusicFile;->resetDerivedFields()V

    .line 1862
    invoke-virtual {v9, v10, p1}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1866
    .end local v9           #file:Lcom/google/android/music/store/MusicFile;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1867
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    throw v0

    .line 1866
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1867
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1869
    return-void
.end method

.method private upgradeFrom25(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1872
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN LocalCopySize INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1876
    const-string v1, "MUSIC"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v6

    const-string v0, "LocalCopyPath"

    aput-object v0, v2, v7

    const-string v3, "LocalCopyType in (?,?) AND LocalCopyPath IS NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1884
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 1885
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1886
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1887
    .local v10, filename:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v9, f:Ljava/io/File;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1889
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    const-string v0, "LocalCopySize"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1891
    const-string v0, "LocalCopyType"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1897
    :goto_1
    const-string v0, "MUSIC"

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1901
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1893
    .restart local v9       #f:Ljava/io/File;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_1
    const-string v0, "LocalCopyType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1895
    const-string v0, "LocalCopySize"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1901
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1903
    return-void
.end method

.method private upgradeFrom26(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    .line 1910
    const-string v0, "DROP INDEX LISTITEMS_ORDER_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    const-string v0, "ALTER TABLE LISTITEMS ADD COLUMN ServerOrder TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    const-string v0, "CREATE INDEX LISTITEMS_ORDER_INDEX ON LISTITEMS (ListId, ServerOrder, ClientPosition);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1921
    return-void
.end method

.method private upgradeFrom27(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1924
    const-string v0, "ALTER TABLE LISTITEMS ADD COLUMN ClientId TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1926
    return-void
.end method

.method private upgradeFrom28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    .line 1932
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN TrackType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN LocalCopyBitrate INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1937
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN ArtistOrigin INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1940
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN ArtistId INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1942
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN CanonicalArtist TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1945
    const-string v0, "create index MUSIC_ARTISTID_INDEX on MUSIC(ArtistId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1949
    const-string v0, "ALTER TABLE LISTS ADD COLUMN ListType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1952
    const-string v0, "ALTER TABLE LISTS ADD COLUMN ListArtworkLocation TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1954
    return-void
.end method

.method private upgradeFrom29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1960
    const-string v0, "DROP INDEX MUSIC_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1961
    const-string v0, "create index MUSIC_TRACKS_BY_NAME_SORT_INDEX on MUSIC(CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v0, "DROP INDEX MUSIC_CANONICAL_ALBUM_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1969
    const-string v0, "create index MUSIC_TRACKS_BY_ALBUM_SORT_INDEX on MUSIC(CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1977
    const-string v0, "DROP INDEX MUSIC_CANONICAL_ARTIST_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    const-string v0, "create index MUSIC_TRACKS_BY_ARTIST_SORT_INDEX on MUSIC(CanonicalArtist, CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1985
    const-string v0, "create index LIST_SYNC_INDEX on LISTS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1988
    const-string v0, "create index LISTITEMS_SYNC_INDEX on LISTS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method private upgradeFrom30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 2000
    const-string v0, "DROP INDEX LISTITEMS_SYNC_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2001
    const-string v0, "create index LISTITEMS_SYNC_INDEX on LISTITEMS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2004
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1594
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MusicStore"

    const-string v1, "Database created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1596
    const/4 v0, -0x1

    const/16 v1, 0x1f

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1597
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$200(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v1}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 1601
    new-instance v0, Lcom/google/android/music/store/Store$DowngradeException;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/store/Store$DowngradeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Database opened on main thread"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 1586
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->configureDatabaseConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1587
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1588
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MusicStore"

    const-string v1, "Database opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v10, 0x1f

    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1608
    .local v0, startTime:J
    int-to-long v2, p2

    .line 1610
    .local v2, startVersion:J
    :try_start_0
    iget-object v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "Database upgraded on main thread"

    invoke-static {v6, v7}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 1612
    const/16 v6, 0x19

    if-ge p2, v6, :cond_0

    .line 1613
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 1616
    const-string v6, "DROP TABLE IF EXISTS XFILESMUSIC"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1617
    const-string v6, "DROP TABLE IF EXISTS XFILES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1618
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_SONGID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1619
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_ALBUMID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_ALBUMARTISTID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1621
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_GENREID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1622
    const-string v6, "DROP TABLE IF EXISTS LIBRARIES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1629
    const-string v6, "DROP TABLE IF EXISTS MUSIC"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v6, "CREATE TABLE MUSIC(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, SourceAccount INTEGER NOT NULL, SourceId TEXT NOT NULL, SourcePath TEXT, Size INTEGER NOT NULL, FileType INTEGER NOT NULL, FileDate INTEGER NOT NULL, LocalCopyPath TEXT, LocalCopyType INTEGER NOT NULL, PlayCount INTEGER NOT NULL DEFAULT 0, LastPlayDate INTEGER NOT NULL DEFAULT 0, Title TEXT NOT NULL, Album TEXT, Artist TEXT, AlbumArtist TEXT, AlbumArtistOrigin INTEGER, Composer TEXT , Genre TEXT, Year INTEGER, Duration INTEGER, TrackCount INTEGER, TrackNumber INTEGER, DiscCount INTEGER, DiscNumber INTEGER, Compilation INTEGER, BitRate INTEGER, AlbumArtLocation TEXT, SongId INTEGER NOT NULL, AlbumId INTEGER NOT NULL DEFAULT 0, AlbumArtistId INTEGER NOT NULL DEFAULT 0, GenreId INTEGER NOT NULL DEFAULT 0, CanonicalName TEXT NOT NULL, CanonicalAlbum TEXT, CanonicalAlbumArtist TEXT, CanonicalGenre TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0, _sync_version TEXT, UNIQUE( SourceAccount,SourceId) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1672
    const-string v6, "create index MUSIC_SONGID_INDEX on MUSIC(SongId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1674
    const-string v6, "create index MUSIC_ALBUMID_INDEX on MUSIC(AlbumId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1676
    const-string v6, "create index MUSIC_ALBUMARTISTID_INDEX on MUSIC(AlbumArtistId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    const-string v6, "create index MUSIC_GENREID_INDEX on MUSIC(GenreId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1682
    const-string v6, "create index MUSIC_CANONICAL_NAME_INDEX on MUSIC(CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1684
    const-string v6, "create index MUSIC_CANONICAL_ALBUM_CANONICAL_NAME_INDEX on MUSIC(CanonicalAlbum, CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1687
    const-string v6, "create index MUSIC_CANONICAL_ARTIST_CANONICAL_NAME_INDEX on MUSIC(CanonicalAlbumArtist, CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1691
    const-string v6, "DROP TABLE IF EXISTS LISTS"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1692
    const-string v6, "CREATE TABLE LISTS(Id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT NOT NULL, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0, MediaStoreId INTEGER);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    const-string v6, "DROP TABLE IF EXISTS LIST_TOMBSTONES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1703
    const-string v6, "CREATE TABLE LIST_TOMBSTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    const-string v6, "DROP TABLE IF EXISTS LISTITEMS"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1711
    const-string v6, "CREATE TABLE LISTITEMS(Id INTEGER PRIMARY KEY AUTOINCREMENT, ListId INTEGER NOT NULL REFERENCES LISTS, MusicSourceAccount INTEGER NOT NULL, MusicSourceId TEXT NOT NULL, ClientPosition INTEGER NOT NULL, ServerPosition INTEGER NOT NULL DEFAULT 0, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1726
    const-string v6, "CREATE INDEX LISTITEMS_ORDER_INDEX ON LISTITEMS (ListId, ServerPosition, ClientPosition);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1732
    const-string v6, "DROP TABLE IF EXISTS LISTITEM_TOMBSTONES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1733
    const-string v6, "CREATE TABLE LISTITEM_TOMBSTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1740
    const-string v6, "DROP TABLE IF EXISTS KEEPON"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1741
    const-string v6, "CREATE TABLE KEEPON(KeepOnId INTEGER PRIMARY KEY AUTOINCREMENT, ListId INTEGER UNIQUE, AlbumId INTEGER UNIQUE, ArtistId INTEGER UNIQUE, DateAdded INTEGER );"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    const-string v6, "DROP TABLE IF EXISTS ARTWORK"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1752
    const-string v6, "CREATE TABLE ARTWORK(AlbumId INTEGER PRIMARY KEY,LocalLocation STRING)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    const-string v6, "DROP TABLE IF EXISTS SHOULDKEEPON"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1757
    const-string v6, "CREATE TABLE SHOULDKEEPON(\nMusicId INTEGER,\nKeepOnId INTEGER,\nFOREIGN KEY (KeepOnId) REFERENCES KEEPON (KeepOnId) ON DELETE CASCADE,\nFOREIGN KEY (MusicId) REFERENCES MUSIC (Id) ON DELETE CASCADE,\nUNIQUE (MusicId, KeepOnId) ON CONFLICT IGNORE)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1766
    const-string v6, "CREATE INDEX SHOULDKEEPON_MusicId ON SHOULDKEEPON (MusicId);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1770
    const-string v6, "DROP TABLE IF EXISTS RECENT"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1771
    const-string v6, "CREATE TABLE RECENT(RecentId INTEGER PRIMARY KEY AUTOINCREMENT, ItemDate INTEGER, RecentListId INTEGER UNIQUE ON CONFLICT REPLACE, RecentAlbumId INTEGER UNIQUE ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1778
    const-string v6, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1779
    iget-object v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1780
    const/16 p2, 0x19

    .line 1783
    :cond_0
    const/16 v6, 0x1a

    if-ge p2, v6, :cond_1

    .line 1784
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom25(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1785
    const/16 p2, 0x1a

    .line 1788
    :cond_1
    const/16 v6, 0x1b

    if-ge p2, v6, :cond_2

    .line 1789
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1790
    const/16 p2, 0x1a

    .line 1793
    :cond_2
    const/16 v6, 0x1c

    if-ge p2, v6, :cond_3

    .line 1794
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom27(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1795
    const/16 p2, 0x1b

    .line 1798
    :cond_3
    const/16 v6, 0x1d

    if-ge p2, v6, :cond_4

    .line 1799
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1800
    const/16 p2, 0x1c

    .line 1803
    :cond_4
    const/16 v6, 0x1e

    if-ge p2, v6, :cond_5

    .line 1804
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1805
    const/16 p2, 0x1d

    .line 1808
    :cond_5
    if-ge p2, v10, :cond_6

    .line 1809
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom30(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1810
    const/16 p2, 0x1e

    .line 1813
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->postImportProcessing(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 1817
    .local v4, upgradeTime:J
    const-string v6, "MusicStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrade from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return-void

    .line 1816
    .end local v4           #upgradeTime:J
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v4, v7, v0

    .line 1817
    .restart local v4       #upgradeTime:J
    const-string v7, "MusicStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrade from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    throw v6
.end method
