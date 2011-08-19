.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "GTalkService.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAndSettingsMonitor"
.end annotation


# instance fields
.field private final mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 406
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditGTalkConnections(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/util/Map;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->auditGTalkConnections(Ljava/util/Map;Z)V

    return-void
.end method

.method private asyncAuditGTalkConnections(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 557
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 575
    return-void
.end method

.method private auditGTalkConnections(Ljava/util/Map;Z)V
    .locals 12
    .parameter
    .parameter "stopConnections"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/Account;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, accounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/Account;>;"
    const/4 v11, 0x3

    .line 588
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->shouldTryToConnect()Z

    move-result v6

    .line 589
    .local v6, shouldConnect:Z
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/Set;

    move-result-object v2

    .line 591
    .local v2, activeSessionUsernames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "GTalkService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 592
    const-string v8, "GTalkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "auditGTalkConnections: shouldTryToConnect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    if-eqz v6, :cond_2

    .line 599
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 600
    .local v5, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 601
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 602
    .local v7, username:Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Account;

    .line 604
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    const-string v8, "GTalkService"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 605
    const-string v8, "GTalkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AcctMonitor.auditGTalkConnections: create connection for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v8, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    goto :goto_0

    .line 610
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v5           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #username:Ljava/lang/String;
    :cond_2
    const-string v8, "GTalkService"

    const-string v9, "AcctMonitor.auditGTalkConnections: not starting any connections since shouldTryToConnect is false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_3
    if-nez p2, :cond_4

    .line 632
    :goto_1
    return-void

    .line 619
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 620
    .restart local v7       #username:Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    move v1, v8

    .line 621
    .local v1, accountDoesntExist:Z
    :goto_3
    if-eqz v6, :cond_6

    if-eqz v1, :cond_5

    .line 622
    :cond_6
    const-string v8, "GTalkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AcctMonitor.auditGTalkConnections: stopping connection for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", accountDoesntExist is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v8, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 626
    .local v3, conn:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    if-eqz v3, :cond_5

    .line 627
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->logout()V

    goto :goto_2

    .line 620
    .end local v1           #accountDoesntExist:Z
    .end local v3           #conn:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :cond_7
    const/4 v8, 0x0

    move v1, v8

    goto :goto_3

    .line 631
    .end local v7           #username:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_1
.end method

.method private getConnection(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .locals 5
    .parameter "username"

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v2, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 467
    .local v1, connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### getConnection for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Ljava/lang/String;)V

    .line 468
    :cond_0
    if-nez v1, :cond_1

    .line 469
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v2, p1, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 470
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    .end local v1           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 472
    .restart local v1       #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 478
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    goto :goto_0
.end method

.method private handleBackgroundDataSettingChange()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0
.end method

.method private logNoAccountError()V
    .locals 1

    .prologue
    .line 547
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 548
    return-void
.end method


# virtual methods
.method public accountMissing()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->logNoAccountError()V

    .line 544
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 5
    .parameter "username"

    .prologue
    .line 524
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "GTalkService"

    const-string v2, "authFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getConnection(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 528
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-nez v0, :cond_1

    .line 529
    const-string v1, "GTalkService"

    const-string v2, "authFailed: getConnection() returned null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionStateAndError(IIZ)V

    goto :goto_0
.end method

.method public authTokenFetched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "username"
    .parameter "authToken"

    .prologue
    .line 482
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authTokenFetched("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ") token is empty!"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v1, accountsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/Account;>;"
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v2, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 489
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->auditGTalkConnections(Ljava/util/Map;Z)V

    .line 493
    :cond_1
    return-void

    .line 482
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v1           #accountsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/Account;>;"
    :cond_2
    const-string v4, ")"

    goto :goto_0
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 499
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "GTalkService"

    const-string v2, "fetchAuthTokenLater..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getConnection(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 503
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-nez v0, :cond_1

    .line 504
    const-string v1, "GTalkService"

    const-string v2, "fetchAuthTokenLater: getConnection() returned null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, action:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v1

    .line 418
    .local v1, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 424
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 461
    .end local v1           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    :cond_2
    :goto_0
    return-void

    .line 427
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v1

    .line 432
    .restart local v1       #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 434
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 436
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 437
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    goto :goto_0

    .line 440
    .end local v1           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    :cond_4
    const-string v3, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 441
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 442
    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditGTalkConnections(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 443
    :cond_5
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 444
    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditGTalkConnections(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 445
    :cond_6
    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 446
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 448
    .local v2, manager:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 449
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->handleBackgroundDataSettingChange()V

    goto :goto_0

    .line 450
    .end local v2           #manager:Landroid/net/ConnectivityManager;
    :cond_7
    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 451
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesSettingChanged()V

    goto :goto_0

    .line 452
    :cond_8
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 453
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageLow()V

    goto/16 :goto_0

    .line 454
    :cond_9
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 455
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageOk()V

    goto/16 :goto_0

    .line 456
    :cond_a
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 457
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 458
    :cond_b
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
