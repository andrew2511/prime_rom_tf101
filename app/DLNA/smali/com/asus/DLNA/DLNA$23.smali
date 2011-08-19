.class Lcom/asus/DLNA/DLNA$23;
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
    .line 2446
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 2449
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_6

    .line 2450
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2451
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v3

    .line 2452
    .local v3, iItemPOS:I
    if-ne v2, v3, :cond_1

    .line 2453
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$7500(Lcom/asus/DLNA/DLNA;)I

    move-result v3

    .line 2454
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$600(Lcom/asus/DLNA/DLNA;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2480
    .end local v3           #iItemPOS:I
    :cond_0
    :goto_0
    return-void

    .line 2458
    .restart local v3       #iItemPOS:I
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->access$7600(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2461
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->access$7700(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2465
    .end local v3           #iItemPOS:I
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v3

    .line 2466
    .restart local v3       #iItemPOS:I
    if-ne v2, v3, :cond_4

    .line 2467
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$7500(Lcom/asus/DLNA/DLNA;)I

    move-result v3

    .line 2468
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$600(Lcom/asus/DLNA/DLNA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2473
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->access$7800(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2475
    :cond_5
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->access$7900(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2479
    .end local v3           #iItemPOS:I
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$23;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    goto :goto_0
.end method
