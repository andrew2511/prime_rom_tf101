.class Lcom/android/vending/FullImageGalleryActivity$1;
.super Ljava/lang/Object;
.source "FullImageGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/FullImageGalleryActivity;->setupDismissOnScreenControlRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FullImageGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/FullImageGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 204
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$100(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$200(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 206
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$100(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$100(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$300(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$400(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$300(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$300(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$500(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$600(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 218
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$500(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$1;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v1}, Lcom/android/vending/FullImageGalleryActivity;->access$500(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    return-void
.end method
