.class public Lcom/android/exchange/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
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
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "dirtyColumn"

    .prologue
    const/4 v4, 0x0

    .line 88
    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
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
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, cr:Landroid/content/ContentResolver;
    const-string p0, "upload"

    .end local p0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 109
    sget-object p0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "account_name"

    .end local p2
    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "account_type"

    const-string p3, "com.android.exchange"

    invoke-virtual {p0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 114
    .local p2, uri:Landroid/net/Uri;
    const-string p0, "dirty"

    invoke-static {v0, p2, p0}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    .line 115
    .local p0, changed:Z
    if-nez p0, :cond_0

    .line 116
    sget-object p0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .end local p0           #changed:Z
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "account_name"

    .end local p2           #uri:Landroid/net/Uri;
    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "account_type"

    const-string p3, "com.android.exchange"

    invoke-virtual {p0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 121
    .restart local p2       #uri:Landroid/net/Uri;
    const-string p0, "dirty"

    invoke-static {v0, p2, p0}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    .line 123
    .restart local p0       #changed:Z
    :cond_0
    if-nez p0, :cond_1

    .line 124
    const-string p0, "EAS ContactsSyncAdapterService"

    .end local p0           #changed:Z
    const-string p1, "Upload sync; no changes"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local p2           #uri:Landroid/net/Uri;
    .end local p4
    .end local p5
    :goto_0
    return-void

    .line 130
    .restart local p1
    .restart local p4
    .restart local p5
    :cond_1
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 134
    .local p0, accountCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 137
    .local p2, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=66"

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

    .line 140
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 141
    const-string p3, "EAS ContactsSyncAdapterService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Contact sync requested for "

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

    .line 143
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const/4 p1, 0x0

    invoke-static {p3, p4, p1}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_2
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 147
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
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
    .line 84
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 79
    :cond_0
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
