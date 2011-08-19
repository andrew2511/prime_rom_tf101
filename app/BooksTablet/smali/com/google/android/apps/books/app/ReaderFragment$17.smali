.class Lcom/google/android/apps/books/app/ReaderFragment$17;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onFadeInComplete()V
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
    .line 1482
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1490
    .local v0, carousel:Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    goto :goto_0
.end method
