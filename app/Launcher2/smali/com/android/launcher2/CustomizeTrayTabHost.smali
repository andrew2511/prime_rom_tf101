.class public Lcom/android/launcher2/CustomizeTrayTabHost;
.super Landroid/widget/TabHost;
.source "CustomizeTrayTabHost.java"

# interfaces
.implements Lcom/android/launcher2/LauncherTransitionable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

.field private mFirstLayout:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mVerticalFillPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mFirstLayout:Z

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CustomizeTrayTabHost;)Lcom/android/launcher2/CustomizePagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    return-object v0
.end method


# virtual methods
.method getCustomizeFilterForTabTag(Ljava/lang/String;)Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    .locals 1
    .parameter "tag"

    .prologue
    .line 190
    const-string v0, "widgets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 199
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-string v0, "applications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ApplicationCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "wallpapers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WallpaperCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    goto :goto_0

    .line 196
    :cond_2
    const-string v0, "shortcuts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ShortcutCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    goto :goto_0

    .line 199
    :cond_3
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f030010

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizeTrayTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizeTrayTabHost;->setup()V

    .line 64
    const v4, 0x7f080019

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CustomizePagedView;

    iput-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    .line 68
    new-instance v0, Lcom/android/launcher2/CustomizeTrayTabHost$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CustomizeTrayTabHost$1;-><init>(Lcom/android/launcher2/CustomizeTrayTabHost;)V

    .line 75
    .local v0, contentFactory:Landroid/widget/TabHost$TabContentFactory;
    const v4, 0x1020013

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    .line 77
    .local v3, tabWidget:Landroid/widget/TabWidget;
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mContext:Landroid/content/Context;

    const v5, 0x7f0e000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v4, "widgets"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 82
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #tabView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 84
    .restart local v2       #tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v4, "applications"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 87
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #tabView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 89
    .restart local v2       #tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mContext:Landroid/content/Context;

    const v5, 0x7f0e000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v4, "wallpapers"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 92
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #tabView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 94
    .restart local v2       #tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mContext:Landroid/content/Context;

    const v5, 0x7f0e000c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v4, "shortcuts"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 98
    const v4, 0x7f0a0029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mVerticalFillPercentage:F

    .line 101
    new-instance v4, Lcom/android/launcher2/CustomizeTrayTabHost$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/CustomizeTrayTabHost$2;-><init>(Lcom/android/launcher2/CustomizeTrayTabHost;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizeTrayTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 129
    return-void
.end method

.method public onLauncherTransitionEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CustomizeTrayTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CustomizeTrayTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizeTrayTabHost;->buildLayer()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v8, 0x1020013

    const/4 v7, 0x0

    .line 169
    iget-boolean v6, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mFirstLayout:Z

    if-eqz v6, :cond_2

    .line 170
    iput-boolean v7, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mFirstLayout:Z

    .line 172
    const v6, 0x7f080019

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CustomizeTrayTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CustomizePagedView;

    .line 174
    .local v1, customizePagedView:Lcom/android/launcher2/CustomizePagedView;
    invoke-virtual {p0, v8}, Lcom/android/launcher2/CustomizeTrayTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    .line 176
    .local v4, tabWidget:Landroid/widget/TabWidget;
    invoke-virtual {v1}, Lcom/android/launcher2/CustomizePagedView;->getPageContentWidth()I

    move-result v3

    .line 177
    .local v3, pageWidth:I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/CustomizeTrayTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    .line 178
    .local v2, customizeTabBar:Landroid/widget/TabWidget;
    if-nez v2, :cond_0

    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v6}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v6

    .line 179
    :cond_0
    const/4 v5, 0x0

    .line 180
    .local v5, tabWidgetPadding:I
    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 181
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 182
    invoke-virtual {v4, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 184
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v3, v5

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    .end local v0           #childCount:I
    .end local v1           #customizePagedView:Lcom/android/launcher2/CustomizePagedView;
    .end local v2           #customizeTabBar:Landroid/widget/TabWidget;
    .end local v3           #pageWidth:I
    .end local v4           #tabWidget:Landroid/widget/TabWidget;
    .end local v5           #tabWidgetPadding:I
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 187
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 156
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 157
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 158
    .local v0, availableHeight:I
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizeTrayTabHost;->getMeasuredHeight()I

    move-result v2

    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/CustomizeTrayTabHost;->mVerticalFillPercentage:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 162
    .local v1, finalHeight:I
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 165
    .end local v0           #availableHeight:I
    .end local v1           #finalHeight:I
    :cond_0
    return-void
.end method
