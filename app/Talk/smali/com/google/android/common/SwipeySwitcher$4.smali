.class Lcom/google/android/common/SwipeySwitcher$4;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 583
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const/4 v4, 0x0

    .local v4, viewslot:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 587
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v5

    aget-object v1, v5, v4

    .line 588
    .local v1, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$1100(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 590
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_3

    .line 586
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 594
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$1200(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v5

    add-int/2addr v5, v4

    sub-int v3, v5, v8

    .line 595
    .local v3, viewPosition:I
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v6, v3}, Lcom/google/android/common/SwipeySwitcher;->access$1300(Lcom/google/android/common/SwipeySwitcher;I)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-interface {v5, v6, v7}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v2

    .line 597
    .local v2, newVh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v2, :cond_2

    .line 604
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v5}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 605
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 606
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v5, v4}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 610
    :cond_4
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    const/4 v6, 0x0

    invoke-static {v5, v2, v4, v6}, Lcom/google/android/common/SwipeySwitcher;->access$1400(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IViewHolder;IZ)V

    goto :goto_2

    .line 615
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v2           #newVh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v3           #viewPosition:I
    :cond_5
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v5

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 616
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v5}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-interface {v5}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->focus()V

    goto :goto_0
.end method
