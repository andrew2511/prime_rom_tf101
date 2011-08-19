.class Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;
.super Landroid/os/AsyncTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveGTalkAccounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDeviceAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V
    .locals 2
    .parameter
    .parameter "accounts"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 849
    iput-object p2, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrieveGTalkAccounts account count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 851
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 843
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 1
    .parameter "contentResolvers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 843
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$900(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeviceAccounts.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 862
    monitor-enter p1

    .line 866
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 869
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 870
    .local v2, gtalkAccounts:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v1, 0x0

    .line 871
    .local v1, gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v0, 0x0

    .line 872
    .local v0, found:Z
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 873
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    check-cast v1, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 874
    .restart local v1       #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gtalkAccount name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 875
    iget-object v4, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    const/4 v0, 0x1

    .line 880
    :cond_1
    if-nez v0, :cond_2

    .line 881
    new-instance v1, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v1           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 882
    .restart local v1       #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 884
    :cond_2
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$900(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 886
    .end local v0           #found:Z
    .end local v1           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #gtalkAccounts:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$1000(Lcom/google/android/talk/TalkApp;)V

    .line 891
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->access$1102(Lcom/google/android/talk/TalkApp;Z)Z

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetrieveGTalkAccountsonPostExecute mAccountList count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$900(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 894
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)V

    .line 896
    iget-object v4, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->access$1200(Lcom/google/android/talk/TalkApp;)V

    .line 897
    return-void

    .line 886
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
