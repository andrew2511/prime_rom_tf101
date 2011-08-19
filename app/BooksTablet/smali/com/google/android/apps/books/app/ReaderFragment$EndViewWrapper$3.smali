.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

.field final synthetic val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

.field final synthetic val$reuseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$800(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    .line 803
    return-void
.end method
