.class Lcom/google/android/apps/books/service/SyncAdapter$1;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$1;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$1;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    check-cast p2, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->getService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;->access$002(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService;

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$1;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$100(Lcom/google/android/apps/books/service/SyncAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 306
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$1;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;->access$002(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService;

    .line 310
    return-void
.end method
