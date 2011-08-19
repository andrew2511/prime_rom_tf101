.class Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;
.super Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 3
    .parameter
    .parameter "menuType"

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1496
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 1497
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 4
    .parameter "position"

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1494
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$OverflowMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method
