.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;
.super Landroid/database/ContentObserver;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    return-void
.end method
