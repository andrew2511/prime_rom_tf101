.class Lcom/asus/DLNA/DLNA$DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNowSelectedPOS:I

.field private mResdevicelayout:I

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method public constructor <init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iChildItemLayoutRes"

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1300
    iput-object p2, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mcontext:Landroid/content/Context;

    .line 1301
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1302
    iput p3, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mResdevicelayout:I

    .line 1303
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mNowSelectedPOS:I

    .line 1304
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3400(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/ServerList;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 1313
    .local v0, iCount:I
    :goto_0
    return v0

    .line 1311
    .end local v0           #iCount:I
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3400(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0       #iCount:I
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1321
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNowPOS()I
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mNowSelectedPOS:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f080019

    .line 1327
    if-nez p2, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mResdevicelayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1329
    new-instance v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;-><init>(Lcom/asus/DLNA/DLNA$DeviceListAdapter;)V

    .line 1330
    .local v0, holder:Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;
    const v1, 0x7f08001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;->devicename:Landroid/widget/TextView;

    .line 1331
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1336
    :goto_0
    if-nez p1, :cond_1

    .line 1338
    iget-object v2, v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;->devicename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3400(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    :goto_1
    iget v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mNowSelectedPOS:I

    if-ne v1, p1, :cond_3

    .line 1348
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1353
    :goto_2
    return-object p2

    .line 1333
    .end local v0           #holder:Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;
    goto :goto_0

    .line 1341
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1342
    iget-object v2, v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;->devicename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v1

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-virtual {v1, v3}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1344
    :cond_2
    iget-object v1, v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter$ViewHolder;->devicename:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1350
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public isSourceLocalDeviceNow()Z
    .locals 1

    .prologue
    .line 1372
    iget v0, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mNowSelectedPOS:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNowPlayingIndicator(I)V
    .locals 5
    .parameter "NowPOS"

    .prologue
    .line 1357
    iput p1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->mNowSelectedPOS:I

    .line 1358
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/DLNA;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, strServerTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1361
    if-nez p1, :cond_1

    .line 1362
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3400(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

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

    .line 1366
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->notifyDataSetChanged()V

    .line 1367
    return-void

    .line 1364
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$3500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;

    move-result-object v1

    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-virtual {v1, v4}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
