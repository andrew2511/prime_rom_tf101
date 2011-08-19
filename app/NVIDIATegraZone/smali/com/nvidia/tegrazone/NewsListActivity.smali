.class public Lcom/nvidia/tegrazone/NewsListActivity;
.super Landroid/app/Activity;
.source "NewsListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/NewsListActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/NewsListActivity;->openArticle(Landroid/view/View;)V

    return-void
.end method

.method private openArticle(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->newsBlocker:Ljava/lang/Boolean;

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nvidia/tegrazone/ArticleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/nvidia/tegrazone/NewsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v13, 0x99

    const/16 v12, 0xf8

    const/16 v11, 0x78

    const/4 v10, 0x0

    const/16 v9, 0xff

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v7, 0x7f03002a

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/NewsListActivity;->setContentView(I)V

    .line 41
    const v7, 0x7f0a0087

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/NewsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 42
    .local v5, l:Landroid/widget/LinearLayout;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/NewsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 43
    .local v6, linflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v7, 0xf

    if-lt v4, v7, :cond_0

    .line 68
    return-void

    .line 44
    :cond_0
    const v7, 0x7f030029

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, customView:Landroid/view/View;
    const v7, 0x7f0a00a6

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    .local v3, firstLine:Landroid/widget/TextView;
    const v7, 0x7f0a00a7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, dateLine:Landroid/widget/TextView;
    const v7, 0x7f0a00a8

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, btn:Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 49
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 50
    rem-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_1

    .line 51
    invoke-static {v9, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    const-string v7, "Sed ut perspiciatis unde omnis iste natus error sit."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_1
    new-instance v7, Lcom/nvidia/tegrazone/NewsListActivity$1;

    invoke-direct {v7, p0}, Lcom/nvidia/tegrazone/NewsListActivity$1;-><init>(Lcom/nvidia/tegrazone/NewsListActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    invoke-static {v9, v12, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    invoke-static {v9, v12, v12, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    const-string v7, "Lorem ipsum dolor sit amet, consectetur adipisicing elit."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
