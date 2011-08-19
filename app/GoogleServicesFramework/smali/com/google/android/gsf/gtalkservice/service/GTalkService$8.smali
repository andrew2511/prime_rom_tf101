.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;
.super Lcom/google/android/gtalkservice/IGTalkService$Stub;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;-><init>()V

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    const-string v2, "Need GTalk_SERVICE permission"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    return-void
.end method

.method private getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 2035
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2037
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 2038
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 2039
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2040
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2044
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2046
    .end local v0           #conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v1           #connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :goto_0
    return-object v3

    .line 2044
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2046
    const/4 v3, 0x0

    goto :goto_0

    .line 2044
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method


# virtual methods
.method public createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .locals 2
    .parameter "username"
    .parameter "listener"

    .prologue
    .line 1955
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 1957
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1970
    return-void
.end method

.method public dismissAllNotifications()V
    .locals 1

    .prologue
    .line 2050
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2051
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissAllNotifications()V

    .line 2052
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;J)V
    .locals 2
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 2055
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2056
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 2058
    return-void
.end method

.method public dismissNotificationsForAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 2061
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2062
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 2064
    return-void
.end method

.method public getActiveConnections()Ljava/util/List;
    .locals 6

    .prologue
    .line 1974
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 1976
    const/4 v2, 0x0

    .line 1978
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1980
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1981
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1982
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1985
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1988
    return-object v3

    .line 1985
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2
    .parameter "username"

    .prologue
    .line 1992
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 1994
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1995
    const-string v0, "GTalkService"

    const-string v1, "getConnectionForUser: empty username"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/4 v0, 0x0

    .line 1999
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2006
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2008
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 2008
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2010
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2017
    const/4 v2, 0x0

    .line 2019
    .local v2, imSession:Lcom/google/android/gtalkservice/IImSession;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2021
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 2022
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2023
    if-eqz v2, :cond_0

    .line 2028
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2031
    return-object v2

    .line 2028
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public printDiagnostics()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2067
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->enforcePermission()V

    .line 2069
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2070
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2071
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3, v4, v0, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2073
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 2074
    return-object v1
.end method
