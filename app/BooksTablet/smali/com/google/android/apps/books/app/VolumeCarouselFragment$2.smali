.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 337
    return-void
.end method
