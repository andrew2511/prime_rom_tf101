.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->onCardLongPress(I[ILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

.field final synthetic val$menuId:I

.field final synthetic val$n:I

.field final synthetic val$touchPosition:[I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;Landroid/view/View;[IIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$touchPosition:[I

    iput p4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$menuId:I

    iput p5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$n:I

    iput-object p6, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1258
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$view:Landroid/view/View;

    const v3, 0x7f0e0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1261
    .local v0, placement:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$touchPosition:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTop(I)V

    .line 1262
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$touchPosition:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setLeft(I)V

    .line 1263
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$touchPosition:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setRight(I)V

    .line 1265
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1266
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$menuId:I

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1267
    new-instance v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v3, v3, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$n:I

    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;->val$volumeId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1269
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1270
    return-void
.end method
