.class Lcom/google/android/apps/books/service/SyncAdapter$3;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->enqueueSection(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
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

.field final synthetic val$context:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

.field final synthetic val$priority:I

.field final synthetic val$sectionId:Ljava/lang/String;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$context:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    iput-object p3, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$volumeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$sectionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$account:Landroid/accounts/Account;

    iput p6, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$priority:I

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
    .line 978
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    .line 982
    .local v6, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$context:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->check()V

    .line 986
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$sectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 990
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$sectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$account:Landroid/accounts/Account;

    iget v4, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$priority:I

    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter$3;->val$context:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/service/SyncAdapter;->access$500(Lcom/google/android/apps/books/service/SyncAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 994
    const/4 v0, 0x0

    return-object v0

    .line 992
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
