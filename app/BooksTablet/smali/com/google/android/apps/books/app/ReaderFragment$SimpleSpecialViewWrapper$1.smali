.class Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

.field final synthetic val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

.field final synthetic val$reuseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->access$700(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$800(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    .line 655
    return-void
.end method
