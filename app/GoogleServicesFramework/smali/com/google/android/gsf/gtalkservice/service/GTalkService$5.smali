.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V
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
    .line 1090
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1096
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1098
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    .local v4, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;>;"
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1104
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1106
    .local v1, connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 1107
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    .line 1108
    .local v2, currentAccount:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 1112
    .local v6, username:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v5

    .line 1113
    .local v5, newAccount:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v2, v5}, Lcom/google/android/gsf/gtalkservice/Account;->connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1114
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1115
    const-string v7, "resetOnGservicesChange: cycle connection"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Ljava/lang/String;)V

    .line 1116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetOnGservicesChange: old "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Ljava/lang/String;)V

    .line 1117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetOnGservicesChange: new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Ljava/lang/String;)V

    .line 1150
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeConnection(ZZZ)V

    .line 1151
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1152
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1159
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v2           #currentAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v5           #newAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v6           #username:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1100
    .end local v1           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 1157
    .restart local v0       #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .restart local v1       #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .restart local v2       #currentAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;>;"
    .restart local v5       #newAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .restart local v6       #username:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1162
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v1           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v2           #currentAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v5           #newAccount:Lcom/google/android/gsf/gtalkservice/Account;
    .end local v6           #username:Ljava/lang/String;
    :cond_3
    return-void
.end method
