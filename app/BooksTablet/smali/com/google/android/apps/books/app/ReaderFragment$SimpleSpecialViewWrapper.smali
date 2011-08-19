.class Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSpecialViewWrapper"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->mView:Landroid/view/View;

    .line 647
    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "reuseBitmap"

    .prologue
    .line 650
    new-instance v0, Lcom/google/android/apps/books/util/ConcurrentMutable;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/util/ConcurrentMutable;-><init>(Ljava/lang/Object;)V

    .line 651
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$900(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
