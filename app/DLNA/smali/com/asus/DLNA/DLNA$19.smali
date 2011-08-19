.class Lcom/asus/DLNA/DLNA$19;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 2273
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2275
    const-string v0, "DLNA"

    const-string v1, "Back button - OnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/PathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->getLevelNumber()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpStopQueryingContent()V

    .line 2279
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA;->fnClearBitmapItems()V

    .line 2280
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2283
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$6700(Lcom/asus/DLNA/DLNA;Landroid/content/Intent;)V

    .line 2284
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2296
    :goto_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/PathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->removeLastNodeFromPathList()Z

    .line 2297
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2300
    :cond_0
    return-void

    .line 2287
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0, v2}, Lcom/asus/DLNA/DLNA;->access$1900(Lcom/asus/DLNA/DLNA;Z)V

    .line 2288
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2289
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpUp()V

    .line 2292
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 2293
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 2294
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$19;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2800(Lcom/asus/DLNA/DLNA;)V

    goto :goto_0
.end method
