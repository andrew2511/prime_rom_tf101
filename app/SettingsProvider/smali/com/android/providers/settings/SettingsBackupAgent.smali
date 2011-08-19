.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# static fields
.field private static final EMPTY_DATA:[B

.field private static final PROJECTION:[Ljava/lang/String;

.field private static mWifiConfigFile:Ljava/lang/String;

.field private static sortedSecureKeys:[Ljava/lang/String;

.field private static sortedSystemKeys:[Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 77
    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    .line 80
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private copyAndSort([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "keys"

    .prologue
    const/4 v2, 0x0

    .line 319
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 320
    .local v0, sortedKeys:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 322
    return-object v0
.end method

.method private copyWifiSupplicantTemplate()V
    .locals 7

    .prologue
    .line 491
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 492
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 493
    .local v1, bw:Ljava/io/BufferedWriter;
    const/16 v5, 0x400

    new-array v4, v5, [C

    .line 495
    .local v4, temp:[C
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .local v3, size:I
    if-lez v3, :cond_0

    .line 496
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #size:I
    .end local v4           #temp:[C
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 501
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "SettingsBackupAgent"

    const-string v6, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v2           #ioe:Ljava/io/IOException;
    :goto_1
    return-void

    .line 498
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v3       #size:I
    .restart local v4       #temp:[C
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 499
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 537
    .local v0, state:I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v1, v0

    .line 540
    .end local v0           #state:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 380
    const/4 v3, 0x0

    .line 382
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 389
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 390
    .local v6, offset:I
    const/4 v5, 0x0

    .line 392
    .local v5, numRead:I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 393
    add-int/2addr v6, v5

    goto :goto_0

    .line 397
    :cond_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 398
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 406
    if-eqz v4, :cond_1

    .line 408
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 410
    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v7

    .line 406
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :cond_3
    if-eqz v4, :cond_4

    .line 408
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    move-object v7, v0

    .line 410
    goto :goto_2

    .line 402
    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 403
    .local v2, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 406
    if-eqz v3, :cond_2

    .line 408
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 409
    :catch_1
    move-exception v8

    goto :goto_2

    .line 406
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 408
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 410
    :cond_5
    :goto_6
    throw v7

    .line 409
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 406
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 402
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getSecureSettings()[B
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 246
    .local v7, sortedCursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyAndSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    .line 249
    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSecureKeys:[Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B

    move-result-object v6

    .line 250
    .local v6, result:[B
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    return-object v6
.end method

.method private getSystemSettings()[B
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    .local v7, sortedCursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyAndSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    .line 237
    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->sortedSystemKeys:[Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B

    move-result-object v6

    .line 238
    .local v6, result:[B
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 239
    return-object v6
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 438
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 439
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v5, relevantLines:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 442
    .local v6, started:Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 443
    if-nez v6, :cond_1

    const-string v7, "network"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 444
    const/4 v6, 0x1

    .line 446
    :cond_1
    if-eqz v6, :cond_0

    .line 447
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :catch_0
    move-exception v7

    move-object v3, v7

    move-object v0, v1

    .line 459
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    if-eqz v0, :cond_2

    .line 464
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 466
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v7

    .line 450
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 451
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 462
    if-eqz v1, :cond_4

    .line 464
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move-object v0, v1

    .line 466
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 453
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 462
    if-eqz v1, :cond_6

    .line 464
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 466
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 456
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :cond_7
    :try_start_8
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 462
    if-eqz v0, :cond_2

    .line 464
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 465
    :catch_1
    move-exception v8

    goto :goto_2

    .line 462
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_8

    .line 464
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 466
    :cond_8
    :goto_6
    throw v7

    .line 465
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v3           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 462
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 458
    .end local v2           #file:Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v3, v7

    goto :goto_1
.end method

.method private invalidSavedSetting([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "knownNames"
    .parameter "candidate"

    .prologue
    const/4 v5, 0x0

    .line 302
    if-nez p1, :cond_0

    move v4, v5

    .line 315
    :goto_0
    return v4

    .line 307
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 308
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 309
    goto :goto_0

    .line 307
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 526
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 531
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 177
    new-array v2, v6, [J

    .line 179
    .local v2, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 184
    .local v3, stateVersion:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 185
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1           #i:I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 189
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    .end local v1           #i:I
    .end local v3           #stateVersion:I
    :catch_0
    move-exception v4

    .line 197
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 198
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 7
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 417
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    new-array v0, v4, [B

    .line 418
    .local v0, bytes:[B
    array-length v4, v0

    if-gtz v4, :cond_0

    .line 430
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v0

    invoke-virtual {p2, v0, v4, v5}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 421
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 424
    :cond_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    .local v3, os:Ljava/io/OutputStream;
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 426
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    .end local v1           #file:Ljava/io/File;
    .end local v3           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 428
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t restore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V
    .locals 11
    .parameter "data"
    .parameter "contentUri"

    .prologue
    const/4 v10, 0x0

    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, whitelist:[Ljava/lang/String;
    sget-object v8, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 258
    sget-object v7, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 263
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 264
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v8

    new-array v6, v8, [B

    .line 266
    .local v6, settings:[B
    const/4 v8, 0x0

    :try_start_0
    array-length v9, v6

    invoke-virtual {p1, v6, v8, v9}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, pos:I
    :cond_1
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_3

    .line 273
    invoke-direct {p0, v6, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v2

    .line 274
    .local v2, length:I
    add-int/lit8 v3, v3, 0x4

    .line 275
    if-lez v2, :cond_4

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v3, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v8

    .line 276
    .local v4, settingName:Ljava/lang/String;
    :goto_2
    add-int/2addr v3, v2

    .line 277
    invoke-direct {p0, v6, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v2

    .line 278
    add-int/lit8 v3, v3, 0x4

    .line 279
    if-lez v2, :cond_5

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v3, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v8

    .line 280
    .local v5, settingValue:Ljava/lang/String;
    :goto_3
    add-int/2addr v3, v2

    .line 281
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 285
    invoke-direct {p0, v7, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->invalidSavedSetting([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 289
    iget-object v8, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v8, v4, v5}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 291
    const-string v8, "name"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v8, "value"

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 259
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #length:I
    .end local v3           #pos:I
    .end local v4           #settingName:Ljava/lang/String;
    .end local v5           #settingValue:Ljava/lang/String;
    .end local v6           #settings:[B
    :cond_2
    sget-object v8, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    sget-object v7, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    .line 267
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v6       #settings:[B
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 268
    .local v1, ioe:Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "Couldn\'t read entity data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_3
    return-void

    .restart local v2       #length:I
    .restart local v3       #pos:I
    :cond_4
    move-object v4, v10

    .line 275
    goto :goto_2

    .restart local v4       #settingName:Ljava/lang/String;
    :cond_5
    move-object v5, v10

    .line 279
    goto :goto_3
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 7
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 472
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    new-array v0, v4, [B

    .line 473
    .local v0, bytes:[B
    array-length v4, v0

    if-gtz v4, :cond_0

    .line 487
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v0

    invoke-virtual {p2, v0, v4, v5}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 476
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, supplicantFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate()V

    .line 480
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 481
    .local v2, os:Ljava/io/OutputStream;
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 482
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 483
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v2           #os:Ljava/io/OutputStream;
    .end local v3           #supplicantFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 485
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t restore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 521
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 5
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 215
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 216
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 217
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 218
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-wide v3, p1

    .line 227
    :goto_0
    return-wide v3

    .line 222
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 223
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v3, v1

    .line 227
    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 513
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 514
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 515
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 516
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 517
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 206
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 208
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 211
    return-void
.end method


# virtual methods
.method extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 12
    .parameter "sortedCursor"
    .parameter "sortedKeys"

    .prologue
    .line 333
    array-length v10, p2

    mul-int/lit8 v10, v10, 0x2

    new-array v9, v10, [[B

    .line 334
    .local v9, values:[[B
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_0

    .line 335
    const-string v10, "SettingsBackupAgent"

    const-string v11, "Couldn\'t read from the cursor"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v10, 0x0

    new-array v10, v10, [B

    .line 376
    :goto_0
    return-object v10

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 339
    .local v1, keyIndex:I
    const/4 v6, 0x0

    .line 340
    .local v6, totalSize:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_5

    .line 341
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, name:Ljava/lang/String;
    :cond_2
    aget-object v10, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_3

    .line 343
    add-int/lit8 v1, v1, 0x1

    .line 344
    array-length v10, p2

    if-ne v1, v10, :cond_2

    .line 346
    :cond_3
    array-length v10, p2

    if-ge v1, v10, :cond_4

    aget-object v10, p2, v1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 347
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 349
    .local v3, nameBytes:[B
    array-length v10, v3

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v6, v10

    .line 350
    mul-int/lit8 v10, v1, 0x2

    aput-object v3, v9, v10

    .line 352
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 353
    const/4 v8, 0x0

    .line 354
    .local v8, valueBytes:[B
    add-int/lit8 v6, v6, 0x4

    .line 360
    :goto_1
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    aput-object v8, v9, v10

    .line 361
    add-int/lit8 v1, v1, 0x1

    .line 363
    .end local v3           #nameBytes:[B
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valueBytes:[B
    :cond_4
    array-length v10, p2

    if-eq v1, v10, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 368
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    new-array v5, v6, [B

    .line 369
    .local v5, result:[B
    const/4 v4, 0x0

    .line 370
    .local v4, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v10, p2

    mul-int/lit8 v10, v10, 0x2

    if-ge v0, v10, :cond_8

    .line 371
    aget-object v10, v9, v0

    if-eqz v10, :cond_6

    .line 372
    aget-object v10, v9, v0

    array-length v10, v10

    invoke-direct {p0, v5, v4, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v4

    .line 373
    aget-object v10, v9, v0

    invoke-direct {p0, v5, v4, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v4

    .line 370
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 356
    .end local v0           #i:I
    .end local v4           #pos:I
    .end local v5           #result:[B
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #nameBytes:[B
    .restart local v7       #value:Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 357
    .restart local v8       #valueBytes:[B
    array-length v10, v8

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v6, v10

    goto :goto_1

    .end local v2           #name:Ljava/lang/String;
    .end local v3           #nameBytes:[B
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valueBytes:[B
    .restart local v0       #i:I
    .restart local v4       #pos:I
    .restart local v5       #result:[B
    :cond_8
    move-object v10, v5

    .line 376
    goto/16 :goto_0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 30
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 119
    .local v7, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 120
    .local v12, secureSettingsData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v17

    .line 121
    .local v17, locale:[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v22

    .line 122
    .local v22, wifiSupplicantData:[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v27

    .line 124
    .local v27, wifiConfigData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v29

    .line 126
    .local v29, stateChecksums:[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v29, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v29, v9

    .line 128
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v29, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 130
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v14, v29, v4

    const-string v16, "locale"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 132
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v19, v29, v4

    const-string v21, "\uffedWIFI"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 135
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v24, v29, v4

    const-string v26, "\uffedCONFIG_WIFI"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 140
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 107
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 108
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 110
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 111
    .local v0, mWfm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 146
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 149
    .local v3, size:I
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    .line 151
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    .line 152
    :cond_0
    const-string v4, "secure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_0

    .line 154
    :cond_1
    const-string v4, "\uffedWIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v2

    .line 156
    .local v2, retainedWifiState:I
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    .line 157
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v5, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3f2

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 162
    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    goto :goto_0

    :cond_3
    move v4, v8

    goto :goto_1

    .line 164
    .end local v2           #retainedWifiState:I
    :cond_4
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    new-array v1, v3, [B

    .line 166
    .local v1, localeData:[B
    invoke-virtual {p1, v1, v8, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 167
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4, v1}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([B)V

    goto :goto_0

    .line 168
    .end local v1           #localeData:[B
    :cond_5
    const-string v4, "\uffedCONFIG_WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 169
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 171
    :cond_6
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 174
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #size:I
    :cond_7
    return-void
.end method
