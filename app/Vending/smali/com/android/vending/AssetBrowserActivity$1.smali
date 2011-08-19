.class Lcom/android/vending/AssetBrowserActivity$1;
.super Ljava/lang/Object;
.source "AssetBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetBrowserActivity;->startCarouselLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetBrowserActivity;

.field final synthetic val$carouselView:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity$1;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iput-object p2, p0, Lcom/android/vending/AssetBrowserActivity$1;->val$carouselView:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$1;->val$carouselView:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v1}, Lcom/android/vending/velvet/CarouselView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 419
    .local v0, p:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 420
    return-void
.end method
