.class Lcom/google/android/apps/books/service/SyncAdapter$2;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
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

.field final synthetic val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$volumeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

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
    .line 628
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$volumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->access$400(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 631
    const/4 v0, 0x0

    return-object v0
.end method
