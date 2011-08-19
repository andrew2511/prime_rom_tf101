.class public Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppGalleryAdapter.java"


# instance fields
.field public gameList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/tegrazone/model/vo/SmallGameVO;",
            ">;"
        }
    .end annotation
.end field

.field public pages:[Landroid/view/View;


# direct methods
.method public constructor <init>([Ljava/util/List;)V
    .locals 4
    .parameter "gameList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/tegrazone/model/vo/SmallGameVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->gameList:[Ljava/util/List;

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, pageCount:I
    const/4 v1, 0x0

    .line 29
    .local v1, incrementer:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 37
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 39
    :cond_0
    new-array v3, v2, [Landroid/view/View;

    iput-object v3, p0, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->pages:[Landroid/view/View;

    .line 40
    return-void

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    const/4 v1, 0x0

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getResourceID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 105
    .local v2, id:I
    :try_start_0
    new-instance v3, Lcom/nvidia/tegrazone/R;

    invoke-direct {v3}, Lcom/nvidia/tegrazone/R;-><init>()V

    .line 107
    .local v3, resourceClass:Lcom/nvidia/tegrazone/R;
    const-class v4, Lcom/nvidia/tegrazone/R$id;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 109
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 114
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #resourceClass:Lcom/nvidia/tegrazone/R;
    :goto_0
    return v2

    .line 110
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 111
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not find resource "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->gameList:[Ljava/util/List;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 45
    .local v4, linflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 56
    .local v5, tempView:Landroid/view/ViewGroup;
    const/4 v0, 0x1

    .local v0, cell:I
    :goto_0
    const/16 v6, 0x9

    if-le v0, v6, :cond_0

    .line 86
    return-object v5

    .line 57
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cell"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->getResourceID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, cellId:I
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 61
    .local v2, cellView:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->gameList:[Ljava/util/List;

    aget-object v6, v6, p1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v0, v6, :cond_1

    .line 62
    iget-object v6, p0, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;->gameList:[Ljava/util/List;

    aget-object v6, v6, p1

    const/4 v7, 0x1

    sub-int v7, v0, v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 64
    .local v3, game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-static {v2, v3}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->populateAppGalleryCell(Landroid/view/ViewGroup;Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V

    .line 66
    invoke-virtual {v3}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 68
    new-instance v6, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter$1;

    invoke-direct {v6, p0}, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter$1;-><init>(Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    .end local v3           #game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
