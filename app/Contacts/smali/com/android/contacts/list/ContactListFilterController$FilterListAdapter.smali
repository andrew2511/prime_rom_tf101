.class Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListFilterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/list/ContactListFilterController;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 331
    invoke-static {p1}, Lcom/android/contacts/list/ContactListFilterController;->access$000(Lcom/android/contacts/list/ContactListFilterController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 332
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->access$100(Lcom/android/contacts/list/ContactListFilterController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->access$100(Lcom/android/contacts/list/ContactListFilterController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->access$100(Lcom/android/contacts/list/ContactListFilterController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 351
    if-eqz p2, :cond_0

    .line 352
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/list/ContactListFilterView;

    move-object v2, v0

    .line 357
    .local v2, view:Lcom/android/contacts/list/ContactListFilterView;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListFilterController;->access$200(Lcom/android/contacts/list/ContactListFilterController;)I

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 358
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListFilterController;->access$100(Lcom/android/contacts/list/ContactListFilterController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilter;

    .line 359
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 360
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->this$0:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListFilterController;->access$300(Lcom/android/contacts/list/ContactListFilterController;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    .line 361
    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactListFilterView;->bindView(Z)V

    .line 362
    return-object v2

    .line 354
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v2           #view:Lcom/android/contacts/list/ContactListFilterView;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040023

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListFilterView;

    .restart local v2       #view:Lcom/android/contacts/list/ContactListFilterView;
    goto :goto_0

    :cond_1
    move v3, v6

    .line 357
    goto :goto_1
.end method
