.class public Lcom/google/android/talk/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;,
        Lcom/google/android/talk/DatabaseUtils$AvatarData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final AVATAR_PROJECTION:[Ljava/lang/String;

.field private static CONTACT_COLUMN_ID:I

.field private static CONTACT_COLUMN_NICKNAME:I

.field private static final CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "username"

    aput-object v1, v0, v3

    const-string v1, "account_connStatus"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data"

    aput-object v1, v0, v3

    const-string v1, "hash"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->AVATAR_PROJECTION:[Ljava/lang/String;

    .line 319
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 322
    sput v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_ID:I

    .line 392
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "nickname"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

    .line 395
    sput v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_NICKNAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    return-void
.end method

.method static final IsUserInRosterList(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 9
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 325
    const/4 v7, 0x0

    .line 327
    .local v7, retVal:Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 334
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 336
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 344
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v7, 0x1

    .line 348
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    :goto_0
    return v7

    .line 348
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 351
    :cond_1
    const-string v0, "IsUserInRosterList"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static computeAvatarHash([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 253
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 261
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/DatabaseUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    .end local v0           #digest:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 256
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 257
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeAvatar([B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 267
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 268
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 269
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v7, accountStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI_WITH_STATUS:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v7

    .line 89
    :cond_1
    :try_start_0
    new-instance v6, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v6}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 90
    .local v6, a:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 91
    invoke-static {v8}, Lcom/google/android/talk/DatabaseUtils;->isSignedIn(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    .line 92
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 93
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 96
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6           #a:Lcom/google/android/talk/TalkApp$AccountInfo;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/google/android/talk/DatabaseUtils;->loadAvatarData(Landroid/database/Cursor;I)[B

    move-result-object v0

    .line 219
    .local v0, rawData:[B
    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static final getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 10
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 360
    const-wide/16 v7, 0x0

    .line 362
    .local v7, pid:J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v0, "account"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 369
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 371
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 379
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 383
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 389
    :goto_0
    return-wide v7

    .line 383
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 386
    :cond_1
    const-string v0, "getIdForContact"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 400
    const/4 v7, 0x0

    .line 402
    .local v7, nickname:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 408
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 409
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 411
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 417
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 419
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    sget v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_NICKNAME:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 423
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :goto_0
    return-object v7

    .line 423
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 426
    :cond_1
    const-string v0, "getNicknameForContact"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSignedIn(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 116
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 117
    .local v0, connectionStatus:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadAvatarData(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 207
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 467
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DatabaseUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private static logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 471
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Databaseutils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public static final pruneOldMessageHistory(Landroid/content/ContentResolver;)V
    .locals 8
    .parameter "resolver"

    .prologue
    .line 433
    const-string v0, "gtalk_chat_message_lifetime"

    const-wide/32 v1, 0x240c8400

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 436
    .local v0, chatMsgLifetime:J
    const-string v2, "gtalk_otr_message_lifetime"

    const-wide/32 v3, 0x5265c00

    invoke-static {p0, v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 439
    .local v4, otrMsgLifetime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 440
    .local v2, now:J
    sub-long v6, v2, v0

    .line 441
    .local v6, ts:J
    sub-long/2addr v2, v4

    .line 443
    .local v2, ts2:J
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #chatMsgLifetime:J
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v4           #otrMsgLifetime:J
    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, selection:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 448
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, selection2:Ljava/lang/String;
    const-string v0, "talk"

    .end local v0           #buf:Ljava/lang/StringBuilder;
    const-string v3, "[Databaseutils] pruneOldMessageHistory"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, result:I
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .end local v1           #selection:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, result2:I
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result p0

    .line 460
    .local p0, logLevel:I
    const/4 v2, 0x1

    if-lt p0, v2, :cond_0

    .line 461
    .end local v2           #selection2:Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #logLevel:I
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneOldMessageHistory: deleted "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " messages and "

    .end local v0           #result:I
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " OTR messages"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/talk/DatabaseUtils;->log(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method

.method public static queryAvatarCursorForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-static {p2, p3, v0}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v6

    .line 181
    .local v6, cache:Lcom/google/android/talk/AvatarCache;
    invoke-virtual {v6}, Lcom/google/android/talk/AvatarCache;->getAvatarUri()Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->AVATAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final removeChatsByContactId(Landroid/content/ContentResolver;J)I
    .locals 5
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 288
    const-string v1, "contact_id = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static saveAvatar(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"
    .parameter "avatar"

    .prologue
    const/4 v9, 0x1

    .line 225
    invoke-static {p2, p3, v9}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 226
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    invoke-virtual {v0}, Lcom/google/android/talk/AvatarCache;->getAvatarUri()Landroid/net/Uri;

    move-result-object v4

    .line 227
    .local v4, uri:Landroid/net/Uri;
    if-nez p4, :cond_1

    .line 229
    const-string v6, "contact=?"

    new-array v7, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {p0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, count:I
    if-eq v1, v9, :cond_0

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; expected 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/DatabaseUtils;->log(Ljava/lang/String;)V

    .line 248
    .end local v1           #count:I
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 239
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 241
    .local v2, data:[B
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "contact"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "data"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 244
    const-string v6, "hash"

    invoke-static {v2}, Lcom/google/android/talk/DatabaseUtils;->computeAvatarHash([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
