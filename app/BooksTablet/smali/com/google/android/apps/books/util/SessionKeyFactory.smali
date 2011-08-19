.class public Lcom/google/android/apps/books/util/SessionKeyFactory;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_DECRYPT_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SessionKeyFactory"


# instance fields
.field private final mAppInfo:[B

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "SessionKeyFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;[B)V
    .locals 2
    .parameter "resolver"
    .parameter "responseGetter"
    .parameter "appInfo"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    .line 83
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 85
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "valid appInfo required"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    iput-object p3, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildSessionKeyUpgradeRequest(Landroid/accounts/Account;Ljava/util/List;)[B
    .locals 4
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, versionToInfoMap:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 433
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[B>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    .line 434
    .local v1, info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, v1, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->encryptedK_sClause:[B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v1           #info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    :cond_0
    invoke-static {v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers(Ljava/util/Collection;)[B

    move-result-object v3

    return-object v3
.end method

.method private decryptWithSessionKeyMaybeUpgradeHelper([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)[B
    .locals 10
    .parameter "payload"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .parameter "account"
    .parameter "volumeId"
    .parameter "retriesRemaining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyNoUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;)[B
    :try_end_0
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v7

    .line 115
    .local v7, e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    if-gtz p6, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Problem during K_s handshake"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v9, keysToUpgrade:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :try_start_1
    invoke-virtual {p0, p4, v9}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    const/4 v0, 0x1

    sub-int v6, p6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgradeHelper([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_1
    move-exception v8

    .line 132
    .local v8, eSecurity:Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Problem during K_s handshake"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decryptWithSessionKeyNoUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 10
    .parameter "payload"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v2, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "missing session key details"

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 153
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, expectedK_sVersion:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 156
    .local v8, encryptedK_sClause:[B
    sget-boolean v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "SessionKeyFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypting using K_sVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", before length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {p0, v8, v9}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_s([B[BLjava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 161
    .end local v8           #encryptedK_sClause:[B
    .end local v9           #expectedK_sVersion:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 162
    .local v7, e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v7           #e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .locals 5
    .parameter "encryptedK_sClause"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 329
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "non-null expectedNonce required"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v0

    .line 333
    .local v0, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    iget-object v1, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-static {v1, p2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->buffersEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v1, "SessionKeyFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractAndVerifyMetadata() expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readLongString([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readLongString([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned unexpected nonce \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (expecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    .end local v0           #meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 342
    .restart local v0       #meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :cond_1
    return-object v0
.end method

.method private extractMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .locals 4
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/books/util/EncryptionUtils;->extractK_sMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :try_end_0
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    const-string v3, "Problem extracting K_s metadata from server repsonse"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getSessionKeyForPage(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "pageUri"

    .prologue
    .line 527
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 528
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSessionKeyForResource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "resourceUri"

    .prologue
    .line 522
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 523
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSessionKeyForSection(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "sectionUri"

    .prologue
    .line 517
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 518
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private declared-synchronized getSessionKeyInfo(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, keysToUpgrade:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v10

    .line 398
    .local v10, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 401
    .local v1, sessionKeyUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 404
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v0, "missing session key details"

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 405
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    invoke-direct {v9, p0}, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;-><init>(Lcom/google/android/apps/books/util/SessionKeyFactory;)V

    .line 408
    .local v9, info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    .line 410
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    .line 412
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->encryptedK_sClause:[B

    .line 413
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, K_sVersion:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    .end local v6           #K_sVersion:Ljava/lang/String;
    .end local v9           #info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 397
    .end local v1           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 417
    .restart local v1       #sessionKeyUri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    .end local v1           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    return-object v10
.end method

.method private parseNewSessionKeyResponse(Landroid/accounts/Account;Ljava/lang/String;Lorg/apache/http/HttpEntity;[B)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .locals 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "entity"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 291
    .local v0, encryptedK_sClause:[B
    invoke-direct {p0, v0, p4}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v1

    .line 294
    .local v1, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "account_name"

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v4, "volume_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "session_key_version"

    iget-object v5, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v4, "root_key_version"

    iget v5, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v4, "session_key_blob"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 301
    iget-object v4, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 302
    .local v2, sessionKeyUri:Landroid/net/Uri;
    new-instance v4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    iget-object v5, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4
.end method

.method private parseUpgradeSessionKeyResponse(Landroid/accounts/Account;Ljava/util/List;Lorg/apache/http/HttpEntity;[B)Ljava/util/List;
    .locals 20
    .parameter "account"
    .parameter
    .parameter "entity"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 443
    .local p2, upgradeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-static/range {p3 .. p3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    .line 444
    .local v6, encryptedK_sClauses:[B
    sget-object v16, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->splitBufferUsing([B[B)Ljava/util/ArrayList;

    move-result-object v5

    .line 449
    .local v5, clauses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 450
    new-instance v16, Lorg/apache/http/client/ClientProtocolException;

    const-string v17, "Received an unexpected number of clauses in parseUpgradeSessionKeyResponse"

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 456
    :cond_0
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [B

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v8

    .line 460
    .local v8, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v14

    .line 461
    .local v14, upgradedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 463
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    .line 464
    .local v11, upgradeInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    move-object v0, v11

    iget-wide v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v10

    .line 465
    .local v10, sessionKeyUri:Landroid/net/Uri;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 466
    .local v13, upgradedKeyBlob:[B
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 470
    const-string v16, "SessionKeyFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OFE dropped a request!  volumeId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object v0, v11

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 461
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 481
    :cond_2
    new-instance v16, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to upgrade session key for _ID: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v11

    iget-wide v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 486
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v12

    .line 489
    .local v12, upgradeInfoMeta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v15, values:Landroid/content/ContentValues;
    const-string v16, "_id"

    move-object v0, v11

    iget-wide v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v16, "account_name"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v16, "volume_id"

    move-object v0, v11

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v16, "session_key_version"

    move-object v0, v12

    iget-object v0, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v16, "root_key_version"

    move-object v0, v8

    iget v0, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v16, "session_key_blob"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object v1, v10

    move-object v2, v15

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 503
    .local v9, rowsUpdated:I
    const/16 v16, 0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 504
    const-string v16, "SessionKeyFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Updated an unexpected number of rows: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for volume "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 507
    :cond_4
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v16, "SessionKeyFactory"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 509
    const-string v16, "SessionKeyFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Updated session key for volumeId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 513
    .end local v9           #rowsUpdated:I
    .end local v10           #sessionKeyUri:Landroid/net/Uri;
    .end local v11           #upgradeInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    .end local v12           #upgradeInfoMeta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .end local v13           #upgradedKeyBlob:[B
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_5
    return-object v14
.end method

.method private requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .locals 20
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonce()J

    move-result-wide v8

    .line 245
    .local v8, nonce:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v14, v0

    .line 247
    .local v14, timestamp:I
    invoke-static {v8, v9}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeLongString(J)[B

    move-result-object v10

    .line 248
    .local v10, nonceBytes:[B
    invoke-static {v14}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v15

    .line 250
    .local v15, timestampBytes:[B
    const/4 v7, 0x0

    .line 253
    .local v7, entity:Lorg/apache/http/HttpEntity;
    const/16 v16, 0x5

    :try_start_0
    move/from16 v0, v16

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v15, v16, v17

    const/16 v17, 0x3

    sget-object v18, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v18, v16, v17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/util/EncryptionUtils;->E_r([B)[B

    move-result-object v11

    .line 256
    .local v11, requestBody:[B
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "books"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "cp_activate"

    invoke-static {v11}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 259
    .local v12, requestUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 260
    .local v13, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/util/SessionKeyFactory;->parseNewSessionKeyResponse(Landroid/accounts/Account;Ljava/lang/String;Lorg/apache/http/HttpEntity;[B)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v5

    .line 263
    .local v5, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    sget-boolean v16, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v16, :cond_0

    .line 264
    const-string v16, "SessionKeyFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "requestNewSessionKey() created new _id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    return-object v5

    .line 268
    .end local v5           #data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .end local v11           #requestBody:[B
    .end local v12           #requestUri:Landroid/net/Uri;
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 269
    .local v6, e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :try_start_1
    new-instance v16, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported root key version: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .end local v6           #e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :catchall_0
    move-exception v16

    if-eqz v7, :cond_2

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v16

    .line 271
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 275
    .local v6, e:Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Problem during K_s handshake"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public decryptWithSessionKeyMaybeUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)[B
    .locals 7
    .parameter "payload"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgradeHelper([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .locals 16
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v2

    int-to-long v8, v2

    .line 205
    .local v8, K_rVersion:J
    const-string v12, "account_name=? AND volume_id=?"

    .line 207
    .local v12, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v3, v0

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object p2, v6, v2

    .line 209
    .local v6, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "account_name=? AND volume_id=?"

    const-string v7, "session_key_version DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 212
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 213
    const-string v2, "SessionKeyFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">1 session key rows for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 220
    .local v13, sessionKeyId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, K_sVersion:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v15

    .line 222
    .local v15, sessionKeyUri:Landroid/net/Uri;
    sget-boolean v2, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "SessionKeyFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findValidSessionKey() found valid _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    new-instance v2, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    invoke-direct {v2, v10, v15}, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    .end local v10           #K_sVersion:Ljava/lang/String;
    .end local v13           #sessionKeyId:J
    .end local v15           #sessionKeyUri:Landroid/net/Uri;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 228
    :cond_2
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 233
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v2

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #K_rVersion:J
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #selection:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter "sessionKeyUri"
    .parameter "volumeId"

    .prologue
    const-string v4, "Problem wiping data for "

    .line 175
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 178
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, clearUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 180
    .local v3, oper:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.google.android.apps.books"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    monitor-exit p0

    return-void

    .line 185
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 186
    .local v2, e:Landroid/content/OperationApplicationException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem wiping data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .end local v0           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v1           #clearUri:Landroid/net/Uri;
    .end local v2           #e:Landroid/content/OperationApplicationException;
    .end local v3           #oper:Landroid/content/ContentProviderOperation$Builder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 187
    .restart local v0       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v1       #clearUri:Landroid/net/Uri;
    .restart local v3       #oper:Landroid/content/ContentProviderOperation$Builder;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 188
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem wiping data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    .locals 23
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 357
    .local p2, keysToUpgrade:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonce()J

    move-result-wide v7

    .line 358
    .local v7, nonce:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v14, v0

    .line 360
    .local v14, timestamp:I
    invoke-static {v7, v8}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeLongString(J)[B

    move-result-object v9

    .line 361
    .local v9, nonceBytes:[B
    invoke-static {v14}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v15

    .line 364
    .local v15, timestampBytes:[B
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v21, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    const/16 v20, 0x3

    sget-object v21, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v21, v19, v20

    const/16 v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/util/EncryptionUtils;->E_r([B)[B

    move-result-object v11

    .line 367
    .local v11, requestBody:[B
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->getSessionKeyInfo(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 368
    .local v18, upgradeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->buildSessionKeyUpgradeRequest(Landroid/accounts/Account;Ljava/util/List;)[B

    move-result-object v17

    .line 369
    .local v17, upgradeBody:[B
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v11

    .line 371
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    const-string v20, "books"

    invoke-virtual/range {v19 .. v20}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    const-string v20, "cp_activate"

    invoke-static {v11}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 373
    .local v12, requestUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 374
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 376
    .local v10, numFailedKeys:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 377
    .local v13, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/util/SessionKeyFactory;->parseUpgradeSessionKeyResponse(Landroid/accounts/Account;Ljava/util/List;Lorg/apache/http/HttpEntity;[B)Ljava/util/List;

    move-result-object v16

    .line 380
    .local v16, updatedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    sub-int v10, v10, v19

    .line 381
    sget-boolean v19, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v19, :cond_0

    .line 382
    const-string v19, "SessionKeyFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "parseUpgradeSessionKeyResponse() upgraded "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " keys"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 392
    :cond_1
    return v10

    .line 385
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #updatedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 386
    .local v5, eKeyExpired:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :try_start_1
    new-instance v19, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unsupported root key version: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .end local v5           #eKeyExpired:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :catchall_0
    move-exception v19

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v19
.end method
