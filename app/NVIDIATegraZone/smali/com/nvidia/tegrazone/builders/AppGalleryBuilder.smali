.class public Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;
.super Ljava/lang/Object;
.source "AppGalleryBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private galleryPages:[Ljava/util/List;
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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->activity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->openApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->updateIndicator(I)V

    return-void
.end method

.method private generateGalleryColumns()V
    .locals 8

    .prologue
    .line 65
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iget-object v0, v6, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 67
    .local v0, games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    array-length v4, v0

    .line 68
    .local v4, numGames:I
    div-int/lit8 v5, v4, 0x9

    .line 69
    .local v5, pages:I
    rem-int/lit8 v6, v4, 0x9

    if-eqz v6, :cond_0

    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 72
    :cond_0
    new-array v6, v5, [Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->galleryPages:[Ljava/util/List;

    .line 73
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 82
    return-void

    .line 74
    :cond_1
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->galleryPages:[Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    aput-object v7, v6, v2

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x9

    if-lt v1, v6, :cond_2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_2
    mul-int/lit8 v6, v2, 0x9

    add-int v3, v6, v1

    .line 78
    .local v3, k:I
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 79
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->galleryPages:[Ljava/util/List;

    aget-object v6, v6, v2

    aget-object v7, v0, v3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private openApp(Ljava/lang/String;)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method private updateIndicator(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 85
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->activity:Landroid/app/Activity;

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 86
    .local v2, indicator:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 88
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->activity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 90
    .local v4, linflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->galleryPages:[Ljava/util/List;

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 103
    return-void

    .line 91
    :cond_0
    const v5, 0x7f03001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, dot:Landroid/view/View;
    const v5, 0x7f0a008c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 94
    .local v3, indicatorDot:Landroid/widget/ImageView;
    if-ne v1, p1, :cond_1

    .line 95
    const v5, 0x7f02002e

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const v5, 0x7f02002d

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public buildGallery()V
    .locals 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->activity:Landroid/app/Activity;

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 36
    .local v0, appGallery:Landroid/widget/Gallery;
    invoke-direct {p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->generateGalleryColumns()V

    .line 38
    new-instance v1, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->galleryPages:[Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;-><init>([Ljava/util/List;)V

    .line 40
    .local v1, appGalleryAdapter:Lcom/nvidia/tegrazone/adapters/AppGalleryAdapter;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 43
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$1;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;)V

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$2;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;)V

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    :cond_0
    return-void
.end method
