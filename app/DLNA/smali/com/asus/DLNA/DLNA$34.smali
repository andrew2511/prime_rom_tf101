.class Lcom/asus/DLNA/DLNA$34;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iLastPOS:I

.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 1
    .parameter

    .prologue
    .line 2622
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2623
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/DLNA/DLNA$34;->iLastPOS:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 2627
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/SendServerCMD;->cpStopQueryingContent()V

    .line 2628
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA;->fnClearBitmapItems()V

    .line 2629
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->doClearAllQueuedCMD()V

    .line 2630
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->updateNowPlayingIndicator(I)V

    .line 2633
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 2634
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 2635
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2800(Lcom/asus/DLNA/DLNA;)V

    .line 2637
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 2638
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/asus/DLNA/MediaControl;->updateRenderDevice(I)V

    .line 2639
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2640
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2642
    const/4 v0, 0x0

    .line 2643
    .local v0, deviceName:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 2645
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/DLNA/DLNA;->access$6700(Lcom/asus/DLNA/DLNA;Landroid/content/Intent;)V

    .line 2646
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2647
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2660
    :goto_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$6600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/PathUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/asus/DLNA/PathUtils;->resetRootPath(Ljava/lang/String;)V

    .line 2662
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2663
    return-void

    .line 2649
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1, v3}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    .line 2650
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2651
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 2655
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v1

    sub-int v2, p3, v3

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/SendServerCMD;->cpServer(I)V

    .line 2656
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/SendServerCMD;->cpTop()V

    .line 2657
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2658
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$34;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v1

    sub-int v2, p3, v3

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
