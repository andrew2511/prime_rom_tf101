.class public Lcom/android/email/service/PopImapSyncAdapterService;
.super Landroid/app/Service;
.source "PopImapSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
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
    .line 37
    invoke-static/range {p0 .. p5}, Lcom/android/email/service/PopImapSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

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
    .line 86
    const-string p3, "force"

    .end local p3
    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .end local p4
    move-result p2

    .end local p2
    if-eqz p2, :cond_0

    .line 87
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 89
    .local p2, emailAddress:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    .end local p1
    const/4 p1, 0x0

    aput-object p2, v4, p1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 92
    .local p1, c:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 94
    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 95
    .local v1, accountId:J
    const/4 p1, 0x0

    invoke-static {p0, v1, v2, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    .end local p1           #c:Landroid/database/Cursor;
    move-result-wide v3

    .line 97
    .local v3, mailboxId:J
    const-wide/16 p3, 0x0

    cmp-long p1, v3, p3

    if-lez p1, :cond_0

    .line 98
    const-string p1, "PopImapSyncAdapterService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Starting manual sync for account "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #emailAddress:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    .line 103
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 77
    sget-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    sget-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/email/service/PopImapSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
