.class public Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mMenuType:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 3
    .parameter
    .parameter "menuType"

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1448
    iput p2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    .line 1449
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 4
    .parameter "position"

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1444
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1470
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOffset()I
    .registers 3

    .prologue
    .line 1452
    iget v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1453
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #calls: Lcom/android/internal/view/menu/MenuBuilder;->getNumIconMenuItemsShown()I
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuBuilder;->access$400(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    .line 1455
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1474
    if-eqz p2, :cond_20

    .line 1475
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    move-object v2, v0

    .line 1476
    .local v2, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setItemView(ILcom/android/internal/view/menu/MenuView$ItemView;)V

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 1479
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 1480
    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setItemView(ILcom/android/internal/view/menu/MenuView$ItemView;)V

    move-object v3, p2

    .line 1485
    .end local v2           #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    :goto_1f
    return-object v3

    .line 1483
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 1484
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setItemView(ILcom/android/internal/view/menu/MenuView$ItemView;)V

    .line 1485
    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-virtual {v1, v3, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1f
.end method
