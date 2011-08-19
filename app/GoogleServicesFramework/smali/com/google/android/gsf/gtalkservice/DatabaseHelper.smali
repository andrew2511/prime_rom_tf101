.class public Lcom/google/android/gsf/gtalkservice/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DeleteContactsOperationRunable;,
        Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

.field public static final OTR_PROJECTION:[Ljava/lang/String;

.field private static final STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static sAddAcccountLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "nickname"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "groupId"

    aput-object v1, v0, v2

    const-string v1, "nickname"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "last_login_state"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "username"

    aput-object v1, v0, v2

    const-string v1, "otr"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->OTR_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->sAddAcccountLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static final addAccount(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 8
    .parameter "resolver"
    .parameter "username"

    .prologue
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount (in Talk db) username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 124
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v5, values:Landroid/content/ContentValues;
    move-object v2, p1

    .line 127
    .local v2, accountName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v6, "username"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    sget-object v6, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 132
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 133
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .local v0, accountId:J
    move-wide v6, v0

    .line 140
    .end local v0           #accountId:J
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-wide v6

    .line 136
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 137
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "GTalkService"

    const-string v7, "addAccount caught "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v3           #e:Landroid/database/SQLException;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static final addAccountIfNotExist(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 10
    .parameter "resolver"
    .parameter "username"

    .prologue
    const/4 v2, 0x0

    .line 81
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccountIfNotExist: username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 83
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 84
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v2

    .line 85
    const-wide/16 v6, 0x0

    .line 87
    .local v6, accountId:J
    sget-object v9, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->sAddAcccountLock:Ljava/lang/Object;

    monitor-enter v9

    .line 88
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "username=?"

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 94
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 96
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 99
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccountIfNotExist: found account for username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 112
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 113
    invoke-static {p0, p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->addAccount(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 115
    :cond_2
    monitor-exit v9

    .line 117
    return-wide v6

    .line 105
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 115
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 108
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_3
    const-string v0, "addAccountIfNotExist"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public static addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "accountId"
    .parameter "contactList"
    .parameter "username"
    .parameter "nickname"
    .parameter "type"
    .parameter "subscriptionStatus"
    .parameter "subscriptionType"

    .prologue
    .line 263
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "username"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v2, "nickname"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v2, "contactList"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v2, "type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v2, "subscriptionStatus"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v2, "subscriptionType"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 279
    :goto_0
    return-object v2

    .line 277
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 278
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "addContact caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static applyDatabaseOperationOnRosterEntries(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;)V
    .locals 6
    .parameter
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, count:I
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyDatabaseOperationOnRosterEntries for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", runnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    if-nez v0, :cond_2

    .line 413
    :cond_1
    return-void

    .line 403
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;->getMaxSelectionArgs()I

    move-result v1

    .line 404
    .local v1, maxSelectionArgs:I
    const/4 v2, 0x0

    .line 406
    .local v2, offset:I
    :goto_0
    if-lez v0, :cond_1

    .line 407
    if-le v0, v1, :cond_3

    move v3, v1

    .line 408
    .local v3, subCount:I
    :goto_1
    invoke-static {p1, p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->applyDatabaseOperationOnSubsetOfRosterEntries(Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;Ljava/util/ArrayList;II)V

    .line 410
    add-int/2addr v2, v3

    .line 411
    sub-int/2addr v0, v3

    .line 412
    goto :goto_0

    .end local v3           #subCount:I
    :cond_3
    move v3, v0

    .line 407
    goto :goto_1
.end method

.method private static applyDatabaseOperationOnSubsetOfRosterEntries(Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;Ljava/util/ArrayList;II)V
    .locals 7
    .parameter "runnable"
    .parameter
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    const/4 v6, 0x1

    .line 419
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyDatabaseOperationOnSubsetOfRosterEntries: offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 424
    :cond_0
    new-array v3, p3, [Ljava/lang/String;

    .line 425
    .local v3, selectionArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v0, buf:Ljava/lang/StringBuilder;
    if-le p3, v6, :cond_1

    .line 430
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sub-int v4, p3, v6

    if-ge v2, v4, :cond_1

    .line 431
    add-int v4, v2, p2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 432
    .local v1, entry:Lorg/jivesoftware/smack/RosterEntry;
    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v1           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v2           #i:I
    :cond_1
    sub-int v2, p3, v6

    .line 438
    .restart local v2       #i:I
    add-int v4, v2, p2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 439
    .restart local v1       #entry:Lorg/jivesoftware/smack/RosterEntry;
    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;->setSelection(Ljava/lang/String;)V

    .line 443
    invoke-interface {p0, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;->setSelectionArgs([Ljava/lang/String;)V

    .line 444
    invoke-interface {p0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;->run()V

    .line 445
    return-void
.end method

.method public static final clearAllChats(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-static {p0, p1, p2, v1, v1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 866
    .local v0, numChatsCleared:I
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteGroupchatContacts(Landroid/content/ContentResolver;J)V

    .line 867
    return v0
.end method

.method static final clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 821
    const/4 v1, 0x0

    .line 822
    .local v1, numChatsCleared:I
    sget-object v3, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 824
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0, v2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 825
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearChatsForAccount: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 828
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 829
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GTalkService"

    const-string v4, "clearChatsForAccount caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeChatForContactId(Landroid/content/ContentResolver;J)V
    .locals 4
    .parameter "resolver"
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 808
    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 809
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 810
    .local v0, result:I
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeChatForContactId, contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 813
    :cond_0
    return-void
.end method

.method private static constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, whereClause:Ljava/lang/StringBuilder;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    if-eqz p0, :cond_0

    .line 461
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 467
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 310
    invoke-static {p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, whereClause:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 315
    :goto_0
    return v2

    .line 313
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 314
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "deleteContact caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteContacts(Landroid/content/ContentResolver;JLjava/util/ArrayList;)V
    .locals 6
    .parameter "resolver"
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v0, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DeleteContactsOperationRunable;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x64

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DeleteContactsOperationRunable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 387
    .local v0, runnable:Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DeleteContactsOperationRunable;
    invoke-static {p3, v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->applyDatabaseOperationOnRosterEntries(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/DatabaseHelper$DatabaseOperationRunnable;)V

    .line 388
    return-void
.end method

.method static final deleteGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 8
    .parameter "resolver"
    .parameter "groupId"
    .parameter "nickname"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nickname"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .local v4, whereClause:Ljava/lang/StringBuilder;
    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    new-array v2, v6, [Ljava/lang/String;

    .line 634
    .local v2, selectionArgs:[Ljava/lang/String;
    aput-object p3, v2, v7

    .line 636
    sget-object v5, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 638
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    .local v1, result:I
    if-lez v1, :cond_0

    move v5, v6

    .line 643
    .end local v1           #result:I
    :goto_0
    return v5

    .restart local v1       #result:I
    :cond_0
    move v5, v7

    .line 640
    goto :goto_0

    .line 641
    .end local v1           #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 642
    .local v0, e:Landroid/database/SQLException;
    const-string v5, "GTalkService"

    const-string v6, "deleteGroupMember caught "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 643
    goto :goto_0
.end method

.method static final deleteGroupchatContacts(Landroid/content/ContentResolver;J)V
    .locals 7
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/16 v6, 0x3d

    .line 559
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "account"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 565
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    :try_start_0
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 570
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, count:I
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteGroupchatContacts: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1           #count:I
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 576
    .local v2, e:Landroid/database/SQLException;
    const-string v4, "GTalkService"

    const-string v5, "deleteGroupchatContacts caught "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final getContactTypeForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)I
    .locals 9
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x2

    .line 224
    const/4 v7, 0x0

    .line 226
    .local v7, retVal:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, "=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-array v4, v1, [Ljava/lang/String;

    .line 232
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 233
    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 235
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 243
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 247
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    return v7

    .line 247
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static final getGroupMemberList(Landroid/content/ContentResolver;J)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 649
    sget-object v0, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 651
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 655
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v8, retVal:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 658
    :try_start_0
    const-string v0, "nickname"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 659
    .local v7, nicknameCol:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 663
    .end local v7           #nicknameCol:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #nicknameCol:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 670
    .end local v7           #nicknameCol:I
    :goto_1
    return-object v8

    .line 666
    :cond_1
    const-string v0, "getGroupMemberList"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static final getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 10
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 146
    const-wide/16 v7, 0x0

    .line 148
    .local v7, pid:J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v0, "account"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 155
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 157
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 165
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 169
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :goto_0
    return-wide v7

    .line 169
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 172
    :cond_1
    const-string v0, "getIdForContact"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getNicknameCursor(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v7, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v0, "account"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/16 v0, 0x3d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 188
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 190
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static final getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 204
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getNicknameCursor(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 208
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 212
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_1
    return-object v1

    .line 212
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "resolver"
    .parameter "account"
    .parameter "contact"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "account"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v0, "username"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 762
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 763
    aput-object p3, v4, v9

    .line 765
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->OTR_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 773
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 774
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOffTheRecordCursor: query url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionArg: [0] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [1] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    return-object v7
.end method

.method public static getStatusMessage(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "resolver"
    .parameter "accountId"
    .parameter "from"

    .prologue
    const/4 v4, 0x0

    .line 957
    invoke-static {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 959
    .local v8, fromContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 981
    :goto_0
    return-object v0

    .line 963
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 965
    sget-object v1, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 971
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 973
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 977
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v4

    .line 981
    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static final insertGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 12
    .parameter "resolver"
    .parameter "groupId"
    .parameter "nickname"

    .prologue
    .line 583
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v0, "nickname"

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .local v11, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 587
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 589
    sget-object v0, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 591
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 597
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 599
    .local v7, doAdd:Z
    if-eqz v6, :cond_2

    .line 601
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const/4 v7, 0x1

    .line 605
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    :goto_0
    if-eqz v7, :cond_1

    .line 613
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 614
    .local v10, values1:Landroid/content/ContentValues;
    const-string v0, "nickname"

    invoke-virtual {v10, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object v9, v10

    .line 618
    .local v9, values:Landroid/content/ContentValues;
    :try_start_1
    invoke-virtual {p0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 624
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #values1:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return v7

    .line 605
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 608
    :cond_2
    const-string v0, "insertGroupMember"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    .restart local v9       #values:Landroid/content/ContentValues;
    .restart local v10       #values1:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 620
    .local v8, e:Landroid/database/SQLException;
    const-string v0, "GTalkService"

    const-string v2, "insertGroupMember caught "

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static isAccountLastOnline(Landroid/content/ContentResolver;J)Z
    .locals 11
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 685
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 688
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 694
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 696
    .local v8, lastOnline:Z
    if-eqz v6, :cond_2

    .line 698
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 700
    .local v7, lastLoginState:I
    if-lez v7, :cond_1

    move v8, v10

    .line 704
    .end local v7           #lastLoginState:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 710
    :goto_1
    return v8

    .line 700
    .restart local v7       #lastLoginState:I
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 704
    .end local v7           #lastLoginState:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 707
    :cond_2
    const-string v0, "isAccountLastOnline"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static isOffTheRecordWithContact(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 5
    .parameter "resolver"
    .parameter "account"
    .parameter "contact"

    .prologue
    const/4 v4, 0x1

    .line 741
    const/4 v2, 0x0

    .line 742
    .local v2, retVal:Z
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 744
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 746
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 747
    .local v1, otr:I
    if-nez v1, :cond_1

    const/4 v3, 0x0

    move v2, v3

    .line 749
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 753
    .end local v1           #otr:I
    :cond_0
    return v2

    .restart local v1       #otr:I
    :cond_1
    move v2, v4

    .line 747
    goto :goto_0

    .line 749
    .end local v1           #otr:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 985
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DbHelper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void
.end method

.method private static final logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 989
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DbHelper] "

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

    .line 990
    return-void
.end method

.method public static presenceHasUser(Landroid/content/ContentResolver;J)Z
    .locals 9
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    sget-object v1, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 486
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 488
    .local v7, exists:Z
    if-eqz v6, :cond_0

    .line 490
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    :goto_0
    return v7

    .line 492
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 495
    :cond_0
    const-string v0, "presenceHasUser"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final pruneChats(Landroid/content/ContentResolver;JJJJZZ)I
    .locals 10
    .parameter "resolver"
    .parameter "accountId"
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"
    .parameter "respectUnreadStatus"

    .prologue
    .line 885
    const/4 v4, 0x0

    .line 888
    .local v4, numChatsCleared:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v3, buf:Ljava/lang/StringBuilder;
    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in (select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v5, "contact_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from chats where ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v5, "groupchat"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=1 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string v5, "last_unread_message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is NULL AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v5, "local"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v5, "last_message_date"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 898
    const-string v5, "))"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 902
    .local v6, selection:Ljava/lang/String;
    sget-object v5, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 903
    .local v5, result:I
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pruneChats: delete temp contacts, selection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #selection:Ljava/lang/String;
    const-string v7, ", result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #result:I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 908
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 921
    if-eqz p9, :cond_1

    .line 922
    const-string p9, "last_message_date"

    .end local p9
    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    const-string v5, "=0 OR "

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_1
    const-string p9, "("

    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string p9, "local"

    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    const-string v5, "=0 AND ("

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string p9, "last_message_date"

    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    const-string v5, "<"

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    move-object/from16 v0, p9

    move-wide v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 928
    const-string p5, " OR ("

    .end local p5
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    if-eqz p10, :cond_2

    .line 930
    const-string p5, "last_unread_message"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " is NULL AND "

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_2
    const-string p5, "last_message_date"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "<"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 934
    const-string p3, ") OR ("

    .end local p3
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string p3, "otherClient"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "=1"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " AND "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string p3, "last_message_date"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "<"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object v0, p3

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 938
    const-string p3, ")))"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 941
    .local p3, selection:Ljava/lang/String;
    sget-object p4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 943
    .local p1, uriChatsByAccount:Landroid/net/Uri;
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 944
    .end local v4           #numChatsCleared:I
    .local p0, numChatsCleared:I
    :try_start_1
    const-string p2, "GTalkService"

    const/4 p4, 0x3

    invoke-static {p2, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 945
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "pruneChats: delete "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #uriChatsByAccount:Landroid/net/Uri;
    const-string p2, ", selection is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    .end local v3           #buf:Ljava/lang/StringBuilder;
    .end local p3           #selection:Ljava/lang/String;
    :cond_3
    :goto_0
    return p0

    .line 949
    .restart local v4       #numChatsCleared:I
    .local p0, resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception p0

    move p1, v4

    .line 950
    .end local v4           #numChatsCleared:I
    .local p0, e:Landroid/database/SQLException;
    .local p1, numChatsCleared:I
    :goto_1
    const-string p2, "GTalkService"

    const-string p3, "pruneChats caught "

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, p1

    .end local p1           #numChatsCleared:I
    .local p0, numChatsCleared:I
    goto :goto_0

    .line 949
    .restart local v3       #buf:Ljava/lang/StringBuilder;
    .restart local p3       #selection:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object v9, p1

    move p1, p0

    .end local p0           #numChatsCleared:I
    .restart local p1       #numChatsCleared:I
    move-object p0, v9

    goto :goto_1
.end method

.method public static final removeOldGroupchatsFromDb(Landroid/content/ContentResolver;J)V
    .locals 4
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 837
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "removeOldGroupchatsFromDb"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 840
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "is_muc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {p1, p2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByAccount(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 848
    const-string v1, "groupchat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I

    .line 853
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteGroupchatContacts(Landroid/content/ContentResolver;J)V

    .line 854
    return-void
.end method

.method public static final rosterHasContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 4
    .parameter "resolver"
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 256
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAccountStatus(Landroid/content/ContentResolver;JII)V
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "presenceStatus"
    .parameter "connectionStatus"

    .prologue
    .line 543
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    .line 544
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    const-string v3, "presenceStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v3, "connStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GTalkService"

    const-string v4, "setAccountStatus caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "resolver"
    .parameter "column"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 790
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update or insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 791
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 792
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v2, "account"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 799
    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :cond_1
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 802
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "setEtag caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setOtrEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 785
    const-string v0, "otr_etag"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V

    .line 786
    return-void
.end method

.method public static setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "contactId"
    .parameter "mode"

    .prologue
    .line 525
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 528
    const-string v2, "mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 533
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 536
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "setPresence caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setRosterEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 448
    const-string v0, "etag"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V

    .line 449
    return-void
.end method

.method public static updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I
    .locals 6
    .parameter "resolver"
    .parameter "accountId"
    .parameter "contactList"
    .parameter "username"
    .parameter "nickname"
    .parameter "type"
    .parameter "subscriptionStatus"
    .parameter "subscriptionType"

    .prologue
    .line 288
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "nickname"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v3, "contactList"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v3, "type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v3, "subscriptionStatus"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v3, "subscriptionType"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    invoke-static {p5, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, whereClause:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 304
    :goto_0
    return v3

    .line 302
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 303
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GTalkService"

    const-string v4, "updateContact caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "resolver"
    .parameter "value"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 715
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v7, :cond_0

    .line 716
    const-string v7, "updateOtrForContacts:"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    selection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 719
    const-string v7, "    selectionArgs:"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 720
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 721
    .local v5, s:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 726
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "otr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v6, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 731
    .local v4, result:I
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v7, :cond_1

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateOtrForContacts for value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v4           #result:I
    :cond_1
    :goto_1
    return-void

    .line 734
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 735
    .local v1, e:Landroid/database/SQLException;
    const-string v7, "GTalkService"

    const-string v8, "updateOtrForContacts caught "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
