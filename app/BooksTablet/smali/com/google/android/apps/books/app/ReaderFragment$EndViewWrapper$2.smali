.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/MotionEvent;Lcom/google/android/apps/books/util/ConcurrentMutable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->val$event:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 789
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 790
    .local v0, handled:Z
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    .line 791
    return-void
.end method
