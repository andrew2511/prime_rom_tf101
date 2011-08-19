.class public Lcom/asus/reader/ui/VibeFunctionBar;
.super Landroid/widget/RelativeLayout;
.source "VibeFunctionBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadingId:I

.field private mMainId:I

.field private mSPId:I

.field private mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

.field private mSubId:I

.field private mSubSelector:Lcom/asus/reader/ui/DropDownMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    .line 29
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    .line 30
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 31
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    .line 35
    iput-object p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x2

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    .line 29
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    .line 30
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 31
    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    .line 40
    iput-object p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public checkSetting()V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    if-gez v0, :cond_0

    .line 117
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    if-ltz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    goto :goto_0
.end method

.method public getLoadingPosition()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    return v0
.end method

.method public getMainPosition()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    return v0
.end method

.method public getSPPosition()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    return v0
.end method

.method public getSubPosition()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    return v0
.end method

.method public initView(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 44
    new-instance v1, Lcom/asus/reader/ui/DropDownMenu;

    iget-object v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {v1, v2, v0, p1}, Lcom/asus/reader/ui/DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    .line 45
    new-instance v1, Lcom/asus/reader/ui/DropDownMenu;

    iget-object v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {v1, v2, v0, p1}, Lcom/asus/reader/ui/DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    .line 46
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 147
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 148
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 149
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0700ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iput v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    .line 152
    iput v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    .line 153
    iput v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 154
    iput v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    .line 155
    return-void
.end method

.method public setLoadingPosition(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 102
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 103
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    move v0, v3

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/vibe2/VibeAgent;->getSubCategoryCount(II)I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 107
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    move v0, v3

    .line 109
    goto :goto_0
.end method

.method public setMainPosition(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 54
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 55
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    move v1, v5

    .line 68
    :goto_0
    return v1

    .line 58
    :cond_0
    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/VibeAgent;->getMainCategoryCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 59
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    .line 61
    iput v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    .line 62
    iput v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 63
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/vibe2/VibeAgent;->getServiceProviderCount(I)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x457

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    iget v4, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    invoke-virtual {v3, v4, v0}, Lcom/asus/reader/vibe2/VibeAgent;->getServiceProviderName(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 66
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    iget-object v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v5

    .line 68
    goto :goto_0
.end method

.method public setSPPosition(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 76
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    iget-object v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    move v1, v6

    .line 94
    :goto_0
    return v1

    .line 81
    :cond_0
    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/vibe2/VibeAgent;->getServiceProviderCount(I)I

    move-result v1

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    :cond_1
    move v1, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    iget-object v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v2}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 84
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 85
    :cond_3
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    .line 86
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 87
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    iget v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v4, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-virtual {v2, v3, v4}, Lcom/asus/reader/vibe2/VibeAgent;->getServiceProviderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, -0x2

    iput v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 89
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/vibe2/VibeAgent;->getSubCategoryCount(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 91
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x8ae

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    iget v4, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v5, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/asus/reader/vibe2/VibeAgent;->getSubCategoryName(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    move v1, v6

    .line 94
    goto/16 :goto_0
.end method

.method public setSubPosition(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 126
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 127
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 128
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 139
    :goto_0
    return v0

    .line 131
    :cond_0
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/vibe2/VibeAgent;->getSubCategoryCount(II)I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    move v0, v3

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    iget-object v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 135
    :cond_3
    iput p1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    .line 136
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DropDownMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    iget-object v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubSelector:Lcom/asus/reader/ui/DropDownMenu;

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mMainId:I

    iget v3, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSPId:I

    iget v4, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mSubId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/vibe2/VibeAgent;->getSubCategoryName(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v0, -0x2

    iput v0, p0, Lcom/asus/reader/ui/VibeFunctionBar;->mLoadingId:I

    move v0, v5

    .line 139
    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const v3, 0x7f0b00b3

    const v0, 0x7f0b00b2

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/VibeFunctionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
