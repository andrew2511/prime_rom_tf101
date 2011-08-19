.class Lcom/google/android/apps/books/service/SyncAdapter$4;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->enqueueResource(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$resId:Ljava/lang/String;

.field final synthetic val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    iput-object p3, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$volumeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$resId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-static {v1}, Lcom/google/android/apps/books/service/SyncAdapter;->access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1009
    .local v0, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    invoke-virtual {v1}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->check()V

    .line 1012
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-static {v1}, Lcom/google/android/apps/books/service/SyncAdapter;->access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$volumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$resId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/service/SyncAdapter$4;->val$account:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1016
    const/4 v1, 0x0

    return-object v1

    .line 1014
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
