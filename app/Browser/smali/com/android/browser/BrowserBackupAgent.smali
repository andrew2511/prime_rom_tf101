.class public Lcom/android/browser/BrowserBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "BrowserBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBackupAgent$Bookmark;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 175
    return-void
.end method

.method private copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    .locals 7
    .parameter "data"
    .parameter "file"
    .parameter "toRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    .line 189
    const/16 v0, 0x2000

    .line 190
    .local v0, CHUNK:I
    new-array v1, v5, [B

    .line 191
    .local v1, buf:[B
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 192
    .local v2, crc:Ljava/util/zip/CRC32;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v4, out:Ljava/io/FileOutputStream;
    :goto_0
    if-lez p3, :cond_0

    .line 196
    const/4 v5, 0x0

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {p1, v1, v5, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v3

    .line 197
    .local v3, numRead:I
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    sub-int/2addr p3, v3

    .line 200
    goto :goto_0

    .line 202
    .end local v3           #numRead:I
    :cond_0
    if-eqz v4, :cond_1

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    return-wide v5

    .line 202
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v5
.end method

.method private writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fileSize"
    .parameter "crc"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .local v0, out:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 216
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 223
    :cond_0
    return-void

    .line 219
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method addBookmark(Lcom/android/browser/BrowserBackupAgent$Bookmark;)V
    .locals 4
    .parameter "mark"

    .prologue
    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "url"

    iget-object v2, p1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "folder"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "created"

    iget-wide v2, p1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v1, "modified"

    iget-wide v2, p1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 173
    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 9
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
    const-wide/16 v1, -0x1

    .line 63
    .local v1, savedFileSize:J
    const-wide/16 v3, -0x1

    .line 64
    .local v3, savedCrc:J
    const/4 v8, -0x1

    .line 67
    .local v8, savedVersion:I
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 71
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 72
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 77
    if-eqz v7, :cond_0

    .line 78
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_0
    move-object v0, p0

    move-object v5, p3

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 77
    .local v6, e:Ljava/io/EOFException;
    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .line 77
    .end local v6           #e:Ljava/io/EOFException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 78
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_2
    throw v0
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 24
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const-wide/16 v10, -0x1

    .line 94
    .local v10, crc:J
    const-string v4, "rst"

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v23

    .line 96
    .local v23, tmpfile:Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    const-string v4, "_bookmarks_"

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserBackupAgent;->copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J

    move-result-wide v10

    .line 101
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    .local v19, infstream:Ljava/io/FileInputStream;
    new-instance v18, Ljava/io/DataInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v18, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 106
    .local v15, count:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v14, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_0

    .line 111
    new-instance v21, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    invoke-direct/range {v21 .. v21}, Lcom/android/browser/BrowserBackupAgent$Bookmark;-><init>()V

    .line 112
    .local v21, mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    .line 113
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->visits:I

    .line 114
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->date:J

    .line 115
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->created:J

    .line 116
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    .line 117
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 122
    .end local v21           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 123
    .local v13, N:I
    const/16 v22, 0x0

    .line 125
    .local v22, nUnique:I
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v6, v4

    .line 126
    .local v6, urlCol:[Ljava/lang/String;
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_2

    .line 127
    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    .line 130
    .restart local v21       #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "url == ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    move-object v12, v0

    aput-object v12, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 135
    .local v16, cursor:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBackupAgent;->addBookmark(Lcom/android/browser/BrowserBackupAgent$Bookmark;)V

    .line 138
    add-int/lit8 v22, v22, 0x1

    .line 142
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 126
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 144
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v21           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_2
    const-string v4, "BrowserBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored "

    .end local v6           #urlCol:[Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bookmarks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    if-eqz v18, :cond_3

    .line 150
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 157
    .end local v13           #N:I
    .end local v14           #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    .end local v15           #count:I
    .end local v17           #i:I
    .end local v18           #in:Ljava/io/DataInputStream;
    .end local v19           #infstream:Ljava/io/FileInputStream;
    .end local v22           #nUnique:I
    :cond_3
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v7, p0

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 161
    :catchall_0
    move-exception v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    throw v4

    .line 145
    .restart local v18       #in:Ljava/io/DataInputStream;
    .restart local v19       #infstream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object/from16 v20, v4

    .line 146
    .local v20, ioe:Ljava/io/IOException;
    :try_start_3
    const-string v4, "BrowserBackupAgent"

    const-string v5, "Bad backup data; not restoring"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    const-wide/16 v10, -0x1

    .line 149
    if-eqz v18, :cond_3

    .line 150
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    .line 149
    .end local v20           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    if-eqz v18, :cond_4

    .line 150
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    :cond_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .end local v18           #in:Ljava/io/DataInputStream;
    .end local v19           #infstream:Ljava/io/FileInputStream;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 163
    return-void
.end method
