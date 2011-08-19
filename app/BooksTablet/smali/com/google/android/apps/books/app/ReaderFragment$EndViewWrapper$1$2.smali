.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->val$volumeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;)V

    .line 763
    return-void
.end method
