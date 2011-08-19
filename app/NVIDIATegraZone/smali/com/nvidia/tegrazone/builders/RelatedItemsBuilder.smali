.class public Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;
.super Ljava/lang/Object;
.source "RelatedItemsBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->openApp(Landroid/view/View;)V

    return-void
.end method

.method private openApp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public buildRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V
    .locals 9
    .parameter "relatedItems"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 20
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 23
    .local v3, relatedLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 25
    .local v2, individualItem:Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 61
    return-void

    .line 26
    :cond_0
    aget-object v4, p1, v1

    if-eqz v4, :cond_1

    .line 28
    aget-object v2, p1, v1

    .line 32
    iget-object v4, v2, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->itemType:Ljava/lang/String;

    sget-object v5, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->GAME_TYPE:Ljava/lang/String;

    if-ne v4, v5, :cond_2

    .line 34
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->getGame()Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    move-result-object v5

    invoke-static {v4, v5, v1, v6}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildAppCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallGameVO;IZ)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, customView:Landroid/view/View;
    new-instance v4, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$1;

    invoke-direct {v4, p0}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    :goto_1
    invoke-virtual {v3, v8, v7, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 25
    .end local v0           #customView:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_2
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->getNews()Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    move-result-object v5

    invoke-static {v4, v5, v1, v6}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildNewsCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;IZ)Landroid/view/View;

    move-result-object v0

    .line 48
    .restart local v0       #customView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 49
    new-instance v4, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$2;

    invoke-direct {v4, p0}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v4, v2, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->news:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onNewsClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchNews(Landroid/app/Activity;Ljava/lang/String;)V

    .line 72
    return-void
.end method
