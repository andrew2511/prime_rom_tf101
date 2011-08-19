.class Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcedSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 4
    .parameter "voids"

    .prologue
    .line 1079
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 1080
    .local v1, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    const/4 v2, 0x0

    .line 1086
    .end local v1           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    :goto_0
    return-object v2

    .line 1085
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v0

    .line 1086
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1074
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 12
    .parameter "result"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "syncError"

    .line 1093
    if-eqz p1, :cond_1

    move v1, v10

    .line 1094
    .local v1, backgroundError:Z
    :goto_0
    if-nez v1, :cond_2

    .line 1096
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksActivity;->requestManualSyncDownloadWithoutFetch(Landroid/accounts/Account;)V

    .line 1115
    :cond_0
    :goto_1
    return-void

    .end local v1           #backgroundError:Z
    :cond_1
    move v1, v9

    .line 1093
    goto :goto_0

    .line 1100
    .restart local v1       #backgroundError:Z
    :cond_2
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksActivity;->access$2300(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v8}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 1101
    .local v2, fetchTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    move v4, v10

    .line 1103
    .local v4, firstFetch:Z
    :goto_2
    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v7}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1104
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v7}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 1105
    .local v5, fm:Landroid/app/FragmentManager;
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 1107
    .local v6, ft:Landroid/app/FragmentTransaction;
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    .line 1108
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "syncError"

    invoke-static {v11, v5, v6}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 1109
    const-class v7, Lcom/google/android/apps/books/app/SyncErrorFragment;

    const-string v8, "syncError"

    invoke-static {v7, v11, v0, v6, v9}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 1112
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    .end local v0           #args:Landroid/os/Bundle;
    .end local v4           #firstFetch:Z
    .end local v5           #fm:Landroid/app/FragmentManager;
    .end local v6           #ft:Landroid/app/FragmentTransaction;
    :cond_3
    move v4, v9

    .line 1101
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1074
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
