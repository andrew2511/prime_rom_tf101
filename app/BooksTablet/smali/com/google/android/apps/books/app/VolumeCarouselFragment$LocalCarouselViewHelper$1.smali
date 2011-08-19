.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->onExternalStorageException()V

    .line 933
    :cond_0
    return-void
.end method
