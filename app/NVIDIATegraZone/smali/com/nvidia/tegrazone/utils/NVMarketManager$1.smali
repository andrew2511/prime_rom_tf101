.class final Lcom/nvidia/tegrazone/utils/NVMarketManager$1;
.super Landroid/widget/ArrayAdapter;
.source "NVMarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/NVMarketManager;->manageMarketAction(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;",
        ">;"
    }
.end annotation


# instance fields
.field holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

.field final synthetic this$0:Lcom/nvidia/tegrazone/utils/NVMarketManager;

.field private final synthetic val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/NVMarketManager;Landroid/content/Context;I[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->this$0:Lcom/nvidia/tegrazone/utils/NVMarketManager;

    iput-object p5, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    .line 73
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->this$0:Lcom/nvidia/tegrazone/utils/NVMarketManager;

    iget-object v1, v1, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    const-string v2, "layout_inflater"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_2

    .line 90
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;-><init>(Lcom/nvidia/tegrazone/utils/NVMarketManager$1;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    .line 93
    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    .line 94
    const v1, 0x7f0a0090

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 95
    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    .line 96
    const v1, 0x7f0a0091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->title:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    iget-object v1, v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    iget-object v1, v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    iget-object v1, v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    iget-object v1, v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_1
    return-object p2

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    iput-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;->holder:Lcom/nvidia/tegrazone/utils/NVMarketManager$1$ViewHolder;

    goto :goto_0
.end method
