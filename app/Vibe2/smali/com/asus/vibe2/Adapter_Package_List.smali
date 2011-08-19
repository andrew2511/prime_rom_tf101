.class public Lcom/asus/vibe2/Adapter_Package_List;
.super Ljava/lang/Object;
.source "Adapter_Package_List.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Package;>;"
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    .line 27
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/asus/vibe2/Adapter_Package_List;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/asus/vibe/item/VibeItem_Package;
    .locals 1
    .parameter "pos"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe/item/VibeItem_Package;

    move-object v0, p0

    .line 43
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/asus/vibe2/Adapter_Package_List;->getItem(I)Lcom/asus/vibe/item/VibeItem_Package;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 48
    int-to-long v0, p1

    .line 50
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 60
    .local v0, line1:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 61
    .local v1, line2:Landroid/widget/TextView;
    if-nez p2, :cond_1

    .line 62
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Package_List;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x1090004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 67
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #line1:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .restart local v0       #line1:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #line2:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 69
    .restart local v1       #line2:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Package;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v3, p0, Lcom/asus/vibe/item/VibeItem_Package;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-object v2

    .line 64
    .restart local p0
    :cond_1
    move-object v2, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Package_List;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 91
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 93
    return-void
.end method
