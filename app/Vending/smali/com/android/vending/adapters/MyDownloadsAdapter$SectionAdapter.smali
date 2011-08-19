.class Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

.field private final mHeaderTextId:I

.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;ILcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V
    .locals 1
    .parameter
    .parameter "headerTextId"
    .parameter "headerAction"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 106
    iput p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderTextId:I

    .line 107
    iput-object p3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    .line 109
    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderTextId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    return-object v0
.end method


# virtual methods
.method addAsset(Lcom/android/vending/model/Asset;)V
    .locals 1
    .parameter "asset"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method clearAssets()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getItemViewType(I)I

    move-result v0

    .line 156
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .line 158
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset;

    invoke-static {v1, p0, p2, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->access$100(Lcom/android/vending/adapters/MyDownloadsAdapter;Lcom/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 160
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-static {v1, p1, p2, p3, p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->access$200(Lcom/android/vending/adapters/MyDownloadsAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x2

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sortAssets()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-static {}, Lcom/android/vending/adapters/MyDownloadsAdapter;->access$000()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    return-void
.end method
