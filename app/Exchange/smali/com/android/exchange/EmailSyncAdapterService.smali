.class public Lcom/android/exchange/EmailSyncAdapterService;
.super Landroid/app/Service;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/EmailSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, cr:Landroid/content/ContentResolver;
    const-string p0, "EAS EmailSyncAdapterService"

    .end local p0
    const-string p2, "performSync"

    .end local p2
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 101
    .local p0, accountCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 104
    .end local p3
    .local p2, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=0"

    const/4 p4, 0x1

    new-array v4, p4, [Ljava/lang/String;

    .end local p4
    const/4 p4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .end local p2           #accountId:J
    aput-object p2, v4, p4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p2

    .line 107
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 108
    const-string p3, "EAS EmailSyncAdapterService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Mail sync requested for "

    .end local p5
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const/4 p1, 0x4

    invoke-static {p3, p4, p1}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :cond_0
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    return-void

    .line 114
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 82
    sget-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    sget-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/EmailSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    .line 77
    :cond_0
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
