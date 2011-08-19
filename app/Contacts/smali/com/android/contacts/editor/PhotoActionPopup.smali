.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 11
    .parameter "context"
    .parameter "anchorView"
    .parameter "listener"
    .parameter "mode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v1, choices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    if-eq p3, v9, :cond_0

    if-ne p3, v10, :cond_1

    .line 49
    :cond_0
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v6, 0x0

    const v7, 0x7f0c015d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    if-eq p3, v8, :cond_2

    if-ne p3, v9, :cond_3

    .line 54
    :cond_2
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v6, 0x7f0c004f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    if-eqz p3, :cond_4

    if-eq p3, v9, :cond_4

    if-ne p3, v8, :cond_5

    .line 60
    :cond_4
    if-nez p3, :cond_8

    const v5, 0x7f0c0168

    move v4, v5

    .line 61
    .local v4, resId:I
    :goto_0
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v4           #resId:I
    :cond_5
    if-eqz p3, :cond_6

    if-eq p3, v9, :cond_6

    if-ne p3, v8, :cond_7

    .line 67
    :cond_6
    if-nez p3, :cond_9

    const v5, 0x7f0c016a

    move v4, v5

    .line 68
    .restart local v4       #resId:I
    :goto_1
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v4           #resId:I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090011

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 75
    .local v3, listPopupWindow:Landroid/widget/ListPopupWindow;
    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, v1, v3, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Landroid/widget/ListPopupWindow;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    .line 98
    .local v2, clickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v3, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 103
    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 104
    invoke-virtual {v3, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 105
    return-object v3

    .line 60
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #clickListener:Landroid/widget/AdapterView$OnItemClickListener;
    .end local v3           #listPopupWindow:Landroid/widget/ListPopupWindow;
    :cond_8
    const v5, 0x7f0c0169

    move v4, v5

    goto :goto_0

    .line 67
    :cond_9
    const v5, 0x7f0c016b

    move v4, v5

    goto :goto_1
.end method
