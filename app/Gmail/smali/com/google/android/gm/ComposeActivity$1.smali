.class Lcom/google/android/gm/ComposeActivity$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity;->asyncInitFromSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    .line 978
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$000(Lcom/google/android/gm/ComposeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/google/android/gm/AccountHelper;->mergeAccountLists(Ljava/util/List;[Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gm/ComposeActivity;->access$002(Lcom/google/android/gm/ComposeActivity;Ljava/util/List;)Ljava/util/List;

    .line 980
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$100(Lcom/google/android/gm/ComposeActivity;)V

    .line 984
    new-instance v2, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v3}, Lcom/google/android/gm/ComposeActivity;->access$000(Lcom/google/android/gm/ComposeActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->execute()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 992
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$1;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivity;->access$200(Lcom/google/android/gm/ComposeActivity;)V

    .line 993
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 986
    .local v1, e:Landroid/accounts/OperationCanceledException;
    goto :goto_0

    .line 987
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 988
    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 989
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 990
    .local v1, e:Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method
