.class public Lcom/android/camera/ui/BasicSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "BasicSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v11, 0x2

    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 55
    .local v6, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v8

    .line 56
    .local v8, iconIds:[I
    if-nez v8, :cond_0

    .line 57
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v8

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v3, v6

    if-ge v7, v3, :cond_2

    .line 67
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz v8, :cond_1

    const-string v3, "image"

    aget v4, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 72
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04000c

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "text"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "image"

    aput-object v10, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 76
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicSettingPopup;->reloadPreference()V

    .line 80
    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0x29t 0x0t 0xat 0x7ft
        0x2at 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicSettingPopup;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, oldIndex:I
    if-eq v0, p3, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/BasicSettingPopup$Listener;->onSettingChanged()V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/camera/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 89
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/BasicSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingPopup;->mListener:Lcom/android/camera/ui/BasicSettingPopup$Listener;

    .line 93
    return-void
.end method
