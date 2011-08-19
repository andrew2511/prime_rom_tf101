.class Lcom/asus/DLNA/DLNA$RenderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNowSelectedPOS:I

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method public constructor <init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1391
    iput-object p2, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mcontext:Landroid/content/Context;

    .line 1392
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mNowSelectedPOS:I

    .line 1394
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1400
    const/4 v1, 0x0

    .line 1407
    :goto_0
    return v1

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/RendererList;->size()I

    move-result v2

    add-int v0, v1, v2

    .local v0, iCount:I
    :goto_1
    move v1, v0

    .line 1407
    goto :goto_0

    .line 1405
    .end local v0           #iCount:I
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0       #iCount:I
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1411
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1415
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNowPOS()I
    .locals 1

    .prologue
    .line 1462
    iget v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mNowSelectedPOS:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0xf

    .line 1421
    if-nez p2, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1427
    .local v1, v:Landroid/view/View;
    :goto_0
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1428
    .local v0, tv:Landroid/widget/TextView;
    const/high16 v2, 0x4190

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1429
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1430
    if-nez p1, :cond_1

    .line 1431
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {p0}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    :goto_1
    return-object v1

    .line 1424
    .end local v0           #tv:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    .restart local p0
    :cond_0
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 1433
    .restart local v0       #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v2

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isRenderLocalDeviceNow()Z
    .locals 1

    .prologue
    .line 1465
    iget v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mNowSelectedPOS:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToAnotherRender(I)V
    .locals 4
    .parameter "NowPOS"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$3800(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    int-to-long v2, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1460
    return-void
.end method

.method public updateNowPlayingIndicator(I)V
    .locals 6
    .parameter "NowPOS"

    .prologue
    const/4 v5, 0x1

    .line 1441
    iput p1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->mNowSelectedPOS:I

    .line 1442
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/DLNA;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, strRenderTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1444
    if-nez p1, :cond_2

    .line 1445
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 1451
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;

    move-result-object v1

    sub-int v2, p1, v5

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/SendServerCMD;->cpRenderer(I)V

    .line 1454
    :cond_1
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->notifyDataSetChanged()V

    .line 1455
    return-void

    .line 1447
    :cond_2
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RenderListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;

    move-result-object v1

    sub-int v4, p1, v5

    invoke-virtual {v1, v4}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
