.class Lcom/asus/DLNA/DLNA$35;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 2668
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 2672
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 2673
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 2674
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2800(Lcom/asus/DLNA/DLNA;)V

    .line 2676
    if-nez p2, :cond_0

    .line 2684
    :goto_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$3800(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 2687
    const/4 v3, -0x1

    .line 2688
    .local v3, iItemPOS:I
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2689
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v3

    .line 2693
    :goto_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    const-wide/16 v4, -0x1

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->access$8000(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2695
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2696
    return-void

    .line 2681
    .end local v3           #iItemPOS:I
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v0

    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-virtual {v0, v2}, Lcom/asus/DLNA/SendServerCMD;->cpRenderer(I)V

    goto :goto_0

    .line 2691
    .restart local v3       #iItemPOS:I
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$35;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v3

    goto :goto_1
.end method
