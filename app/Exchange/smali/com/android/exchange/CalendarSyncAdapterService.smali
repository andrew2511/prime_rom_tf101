.class public Lcom/android/exchange/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
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
    .line 39
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

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
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean p4, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 102
    .local p4, logging:Z
    const-string p0, "upload"

    .end local p0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 103
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p2, "_id"

    .end local p2
    aput-object p2, v2, p0

    const-string v3, "_sync_dirty=1 AND _sync_account=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 106
    .local p0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 107
    if-eqz p4, :cond_0

    .line 108
    const-string p2, "EAS CalendarSyncAdapterService"

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No changes for "

    .end local p4           #logging:Z
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p0           #c:Landroid/database/Cursor;
    .end local p5
    :goto_0
    return-void

    .line 113
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p1
    .restart local p3
    .restart local p4       #logging:Z
    .restart local p5
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 118
    .end local p0           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 123
    .local p0, accountCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 124
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 126
    .end local p3
    .local p2, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=65"

    const/4 p5, 0x1

    new-array v4, p5, [Ljava/lang/String;

    .end local p5
    const/4 p5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .end local p2           #accountId:J
    aput-object p2, v4, p5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object p2

    .line 129
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 130
    if-eqz p4, :cond_3

    .line 131
    const-string p3, "EAS CalendarSyncAdapterService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upload sync requested for "

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    .local p1, syncKey:Ljava/lang/String;
    if-eqz p1, :cond_4

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1           #syncKey:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 135
    :cond_4
    if-eqz p4, :cond_5

    .line 136
    const-string p1, "EAS CalendarSyncAdapterService"

    const-string p3, "Can\'t sync; mailbox in initial state"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    :cond_5
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    .end local p4           #logging:Z
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .local p0, c:Landroid/database/Cursor;
    .restart local p5
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 141
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p5
    .local p0, accountCursor:Landroid/database/Cursor;
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    .restart local p4       #logging:Z
    :cond_6
    const/4 p1, 0x0

    :try_start_4
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const/4 p1, 0x0

    invoke-static {p3, p4, p1}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :cond_7
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 149
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 145
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 149
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 88
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 83
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
