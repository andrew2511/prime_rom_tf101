.class public Lcom/layar/RecentActivity;
.super Lcom/layar/LayerListActivity;
.source "RecentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final MENU_CLEAR:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/layar/RecentActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/RecentActivity;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLaunchOnClick()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapter()Lcom/layar/adapters/BaseLayersAdapter;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/layar/adapters/BaseLayersAdapter;

    invoke-direct {v0, p0}, Lcom/layar/adapters/BaseLayersAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "recent"

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/layar/RecentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/layar/RecentActivity;->showNoLayersMessage(I)V

    .line 22
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 36
    .local v0, menuId:I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/layar/RecentActivity;->cancelLoading()V

    .line 38
    iget-object v1, p0, Lcom/layar/RecentActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    const-string v2, "recent"

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->resetCache(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/layar/RecentActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 40
    const/4 v1, 0x1

    .line 42
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 27
    const/16 v0, 0x64

    const v1, 0x7f090057

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 28
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/layar/RecentActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 30
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 29
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/layar/LayerListActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/layar/RecentActivity;->reloadData()V

    .line 79
    return-void
.end method
