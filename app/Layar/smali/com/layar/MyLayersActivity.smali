.class public Lcom/layar/MyLayersActivity;
.super Lcom/layar/LayerListActivity;
.source "MyLayersActivity.java"

# interfaces
.implements Lcom/layar/ui/drag/DragListView$DragListener;
.implements Lcom/layar/ui/drag/DragListView$DropListener;
.implements Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/MyLayersActivity$DeleteEditLayer;,
        Lcom/layar/MyLayersActivity$OrderEditLayer;
    }
.end annotation


# static fields
.field protected static final MENU_ADD:I = 0x6e

.field protected static final MENU_EDIT:I = 0x78

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isEditing:Z

.field private final mEditList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/MyLayersActivity$DeleteEditLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

.field private viewEditPanel:Landroid/widget/LinearLayout;

.field private viewList:Lcom/layar/ui/drag/FavoriteDragListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/layar/MyLayersActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/MyLayersActivity;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/layar/MyLayersActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/MyLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/layar/MyLayersActivity;->commit()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/MyLayersActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/layar/MyLayersActivity;->setEditMode(Z)V

    return-void
.end method

.method private commit()V
    .locals 7

    .prologue
    .line 260
    iget-object v3, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    iget-object v3, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 271
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->reloadData()V

    .line 272
    return-void

    .line 260
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/MyLayersActivity$DeleteEditLayer;

    .line 262
    .local v1, editLayer:Lcom/layar/MyLayersActivity$DeleteEditLayer;
    iget v4, v1, Lcom/layar/MyLayersActivity$DeleteEditLayer;->state:I

    if-nez v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/layar/MyLayersActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v5, v1, Lcom/layar/MyLayersActivity$DeleteEditLayer;->layerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/layar/data/layer/LayerManager;->removeBookmark(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    iget v4, v1, Lcom/layar/MyLayersActivity$DeleteEditLayer;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 265
    move-object v0, v1

    check-cast v0, Lcom/layar/MyLayersActivity$OrderEditLayer;

    move-object v2, v0

    .line 266
    .local v2, orderLayer:Lcom/layar/MyLayersActivity$OrderEditLayer;
    iget-object v4, p0, Lcom/layar/MyLayersActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 267
    iget-object v5, v2, Lcom/layar/MyLayersActivity$OrderEditLayer;->layerName:Ljava/lang/String;

    iget-object v6, v2, Lcom/layar/MyLayersActivity$OrderEditLayer;->anchorName:Ljava/lang/String;

    .line 266
    invoke-virtual {v4, v5, v6}, Lcom/layar/data/layer/LayerManager;->moveBookmarkBefore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEditMode(Z)V
    .locals 2
    .parameter "editMode"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    .line 105
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-virtual {v0, p1}, Lcom/layar/adapters/FavoriteLayersAdapter;->showEditBar(Z)V

    .line 106
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->viewList:Lcom/layar/ui/drag/FavoriteDragListView;

    invoke-virtual {v0, p1}, Lcom/layar/ui/drag/FavoriteDragListView;->setDragEnabled(Z)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/FavoriteLayersAdapter;->removeAddItem()V

    .line 109
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/MyLayersActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->viewEditPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->reloadData()V

    .line 117
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->viewEditPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/MyLayersActivity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showEditAlert()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/layar/MyLayersActivity;->showEditAlert(Lcom/layar/ui/navigationbar/NavigationBar;I)V

    .line 240
    return-void
.end method

.method private showEditAlert(Lcom/layar/ui/navigationbar/NavigationBar;I)V
    .locals 3
    .parameter "bar"
    .parameter "id"

    .prologue
    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const v1, 0x7f09001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    const v1, 0x7f09001c

    new-instance v2, Lcom/layar/MyLayersActivity$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/layar/MyLayersActivity$3;-><init>(Lcom/layar/MyLayersActivity;Lcom/layar/ui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 257
    return-void
.end method


# virtual methods
.method public addFavoriteLayer()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/layar/MyLayersActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method protected doLaunchOnClick()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public drag(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/layar/adapters/FavoriteLayersAdapter;->drag(II)V

    .line 236
    return-void
.end method

.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/FavoriteLayersAdapter;->getDragable()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 225
    .local v1, movableName:Lcom/layar/data/layer/Layer20;
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/layar/adapters/FavoriteLayersAdapter;->get(I)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 226
    .local v0, anchorName:Lcom/layar/data/layer/Layer20;
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/layar/adapters/FavoriteLayersAdapter;->drop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    new-instance v3, Lcom/layar/MyLayersActivity$OrderEditLayer;

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 228
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    :goto_0
    invoke-direct {v3, p0, v4, v5}, Lcom/layar/MyLayersActivity$OrderEditLayer;-><init>(Lcom/layar/MyLayersActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    return-void

    .line 228
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected getAdapter()Lcom/layar/adapters/BaseLayersAdapter;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/layar/adapters/FavoriteLayersAdapter;

    invoke-direct {v0, p0}, Lcom/layar/adapters/FavoriteLayersAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    .line 100
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mFavoriteAdapter:Lcom/layar/adapters/FavoriteLayersAdapter;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f03001b

    return v0
.end method

.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-eqz v0, :cond_0

    const-string v0, "my"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "my+purchased"

    goto :goto_0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/layar/MyLayersActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected needUpdateOnResume()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 151
    .local v1, viewId:I
    iget-boolean v2, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-eqz v2, :cond_1

    .line 152
    const v2, 0x7f070051

    if-ne v1, v2, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/Layer20;

    .line 155
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v2, v0}, Lcom/layar/adapters/BaseLayersAdapter;->remove(Lcom/layar/data/layer/Layer20;)V

    .line 156
    iget-object v2, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    new-instance v3, Lcom/layar/MyLayersActivity$DeleteEditLayer;

    iget-object v4, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/layar/MyLayersActivity$DeleteEditLayer;-><init>(Lcom/layar/MyLayersActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0           #layer:Lcom/layar/data/layer/Layer20;
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const v2, 0x1020019

    if-ne v1, v2, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->addFavoriteLayer()V

    goto :goto_0

    .line 164
    :cond_2
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/layar/ui/drag/FavoriteDragListView;

    iput-object v1, p0, Lcom/layar/MyLayersActivity;->viewList:Lcom/layar/ui/drag/FavoriteDragListView;

    .line 52
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/layar/MyLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/layar/MyLayersActivity;->viewEditPanel:Landroid/widget/LinearLayout;

    .line 53
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Lcom/layar/MyLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/layar/MyLayersActivity$1;

    invoke-direct {v2, p0}, Lcom/layar/MyLayersActivity$1;-><init>(Lcom/layar/MyLayersActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/layar/MyLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/layar/MyLayersActivity$2;

    invoke-direct {v2, p0}, Lcom/layar/MyLayersActivity$2;-><init>(Lcom/layar/MyLayersActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/drag/DragListView;

    .line 69
    .local v0, viewList:Lcom/layar/ui/drag/DragListView;
    invoke-virtual {v0, p0}, Lcom/layar/ui/drag/DragListView;->setDragListener(Lcom/layar/ui/drag/DragListView$DragListener;)V

    .line 70
    invoke-virtual {v0, p0}, Lcom/layar/ui/drag/DragListView;->setDropListener(Lcom/layar/ui/drag/DragListView$DropListener;)V

    .line 72
    const-string v1, "favorites"

    iput-object v1, p0, Lcom/layar/MyLayersActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/layar/MyLayersActivity;->setEditMode(Z)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 121
    const/16 v0, 0x6e

    const v1, 0x7f090043

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    const/16 v0, 0x78

    const v1, 0x7f090042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 124
    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onItemDownloaded(Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    .line 93
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0, p1}, Lcom/layar/adapters/BaseLayersAdapter;->add(Lcom/layar/data/layer/Layer20;)V

    .line 94
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 170
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 171
    iget-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1, p2}, Lcom/layar/LayerListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/MyLayersActivity;->setEditMode(Z)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/layar/LayerListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/layar/MyLayersActivity;->showEditAlert()V

    move v0, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/layar/LayerListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
    .locals 1
    .parameter "bar"
    .parameter "id"

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/layar/MyLayersActivity;->isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/MyLayersActivity;->mEditList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/layar/MyLayersActivity;->showEditAlert(Lcom/layar/ui/navigationbar/NavigationBar;I)V

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNavigationBarPopupMenuClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
    .locals 1
    .parameter "bar"
    .parameter "id"

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 132
    :sswitch_0
    invoke-virtual {p0}, Lcom/layar/MyLayersActivity;->addFavoriteLayer()V

    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/layar/MyLayersActivity;->setEditMode(Z)V

    move v0, v1

    .line 136
    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareNavigationBar(Lcom/layar/ui/navigationbar/NavigationBar;)Z
    .locals 1
    .parameter "bar"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareNavigationBarPopupMenu(Lcom/layar/ui/navigationbar/NavigationBar;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Z
    .locals 1
    .parameter "bar"
    .parameter "menu"

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    .line 80
    invoke-super {p0}, Lcom/layar/LayerListActivity;->onResume()V

    .line 81
    return-void
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
