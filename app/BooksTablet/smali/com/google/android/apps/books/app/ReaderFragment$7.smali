.class Lcom/google/android/apps/books/app/ReaderFragment$7;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessDenied(I)V
    .locals 1
    .parameter "maxDevices"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showConcurrentAccessDeniedDialog(I)V

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    .line 950
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$7;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1400(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/service/ContentFetchService;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 962
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    move-object v1, v2

    .line 957
    goto :goto_0

    .line 959
    .end local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/util/concurrent/ExecutionException;
    move-object v1, v2

    .line 960
    goto :goto_0

    .line 961
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v2

    .line 962
    goto :goto_0
.end method
