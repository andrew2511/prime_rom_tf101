.class Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;
.super Lcom/google/android/apps/books/app/FetchReadingPositionTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFetchReadingPositionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/net/ResponseGetter;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "responseGetter"
    .parameter "volumeId"
    .parameter "account"

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    .line 2499
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 2500
    return-void
.end method


# virtual methods
.method protected onFinished(Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 3
    .parameter "serverPosition"
    .parameter "serverAccess"
    .parameter "exception"

    .prologue
    .line 2504
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4600(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;J)V

    .line 2507
    :cond_0
    return-void
.end method
