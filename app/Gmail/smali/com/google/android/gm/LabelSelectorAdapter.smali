.class public Lcom/google/android/gm/LabelSelectorAdapter;
.super Landroid/widget/SimpleAdapter;
.source "LabelSelectorAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private final mColorBlockCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/PaintDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "data"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/provider/LabelList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, initiallySelected:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v5, 0x2

    .line 46
    invoke-static {p2, p3}, Lcom/google/android/gm/LabelSelectorAdapter;->processLabelList(Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f040020

    new-array v4, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "label-is-present"

    aput-object v1, v4, v0

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/google/android/gm/LabelSelectorAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/LabelSelectorAdapter$1;-><init>(Lcom/google/android/gm/LabelSelectorAdapter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSelectorAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 68
    return-void

    .line 46
    nop

    :array_0
    .array-data 0x4
        0x62t 0x0t 0xet 0x7ft
        0x62t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method private static processLabelList(Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7
    .parameter "labels"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/LabelList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, initiallySelected:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v4

    .line 114
    .local v4, numLabels:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v2

    .line 118
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "^i"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 122
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "label"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v5, "system-name"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v5, "name"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v5, "color"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v5, "background-color"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v5, "label-is-present"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/LabelSelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, result:Landroid/view/View;
    const v6, 0x7f0e0062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 82
    .local v1, cb:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 84
    const v6, 0x7f0e0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, colorBlock:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 86
    .local v3, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "background-color"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, backgroundColor:I
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getDefaultLabelBackgroundColor()I

    move-result v6

    if-ne v0, v6, :cond_0

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .end local p0
    :goto_0
    return-object v5

    .line 89
    .restart local p0
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    iget-object v6, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 92
    .restart local p0
    :cond_1
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 93
    .local v4, pd:Landroid/graphics/drawable/PaintDrawable;
    iget-object v6, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
