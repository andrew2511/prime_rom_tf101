.class public Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UiCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected m_nItemViewResourceId:I

.field protected m_oDndOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

.field protected m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;)V
    .locals 0
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oOwner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<TT;>;"
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_nItemViewResourceId:I

    .line 27
    iput-object p4, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_oDndOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oOwner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<TT;>;"
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_nItemViewResourceId:I

    .line 21
    iput-object p4, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    .local p0, this:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, oInflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_nItemViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    .end local v0           #oInflater:Landroid/view/LayoutInflater;
    :cond_0
    return-object p2
.end method

.method public setOwner(Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;)V
    .locals 0
    .parameter "a_oOwner"

    .prologue
    .line 35
    .local p0, this:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<TT;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_oDndOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    .line 36
    return-void
.end method

.method public setOwner(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter "a_oOwner"

    .prologue
    .line 31
    .local p0, this:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<TT;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->m_oOwner:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 32
    return-void
.end method
