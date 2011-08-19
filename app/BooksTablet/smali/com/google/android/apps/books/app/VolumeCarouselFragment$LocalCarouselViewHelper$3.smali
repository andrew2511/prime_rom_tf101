.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->onDetailSelected(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iput p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;->val$n:I

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;I)V

    .line 1226
    :cond_0
    return-void
.end method
