.class public Lcom/layar/FilterSettingsActivity;
.super Landroid/app/Activity;
.source "FilterSettingsActivity.java"

# interfaces
.implements Lcom/layar/ui/LayerFilterType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/FilterSettingsActivity$ButtonControl;,
        Lcom/layar/FilterSettingsActivity$CheckboxListControl;,
        Lcom/layar/FilterSettingsActivity$FilterUIControl;,
        Lcom/layar/FilterSettingsActivity$FilterUISection;,
        Lcom/layar/FilterSettingsActivity$FilterUISections;,
        Lcom/layar/FilterSettingsActivity$OnFilterChangedListener;,
        Lcom/layar/FilterSettingsActivity$RadioControl;,
        Lcom/layar/FilterSettingsActivity$SearchBoxControl;,
        Lcom/layar/FilterSettingsActivity$SliderControl;
    }
.end annotation


# static fields
.field private static final KEY_BUNDLE_FILTERS:Ljava/lang/String; = "KEY_BUNDLE_FILTERS"

.field private static final KEY_BUNDLE_LAYERNAME:Ljava/lang/String; = "KEY_BUNDLE_LAYERNAME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public cancelButtonListener:Landroid/view/View$OnClickListener;

.field private filterChanged:Z

.field private filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

.field public layer:Lcom/layar/data/layer/Layer20;

.field public mLayerHandler:Lcom/layar/data/layer/LayerHandler;

.field public mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private rangeChanged:Z

.field public saveButtonListener:Landroid/view/View$OnClickListener;

.field private shownOnStartup:Z

.field private viewRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/layar/FilterSettingsActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/FilterSettingsActivity;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    .line 230
    new-instance v0, Lcom/layar/FilterSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/FilterSettingsActivity$1;-><init>(Lcom/layar/FilterSettingsActivity;)V

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->saveButtonListener:Landroid/view/View$OnClickListener;

    .line 296
    new-instance v0, Lcom/layar/FilterSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/FilterSettingsActivity$2;-><init>(Lcom/layar/FilterSettingsActivity;)V

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/FilterSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/layar/FilterSettingsActivity;->filterChanged:Z

    return v0
.end method

.method static synthetic access$2(Lcom/layar/FilterSettingsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/layar/FilterSettingsActivity;->filterChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/layar/FilterSettingsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/layar/FilterSettingsActivity;->rangeChanged:Z

    return-void
.end method

.method static synthetic access$4(Lcom/layar/FilterSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/layar/FilterSettingsActivity;->shownOnStartup:Z

    return v0
.end method

.method static synthetic access$5(Lcom/layar/FilterSettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/layar/FilterSettingsActivity;->rangeChanged:Z

    return v0
.end method

.method static synthetic access$6(Lcom/layar/FilterSettingsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-static {p0, p1, p2}, Lcom/layar/FilterSettingsActivity;->addHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static addHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "viewRoot"
    .parameter "inflater"
    .parameter "text"

    .prologue
    .line 345
    const v1, 0x7f030007

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    .local v0, v:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    .line 315
    return-void
.end method


# virtual methods
.method public initWithJson(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 129
    const v16, 0x7f03001d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->setContentView(I)V

    .line 132
    const v16, 0x7f07000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    const v16, 0x7f07000f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 134
    .local v13, layerTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    move/from16 v16, v0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v16, 0x7f07000e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 137
    .local v12, layerLogo:Landroid/widget/ImageView;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v16

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "banner_icon"

    const/16 v19, 0x0

    .line 137
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v12

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 141
    const v16, 0x7f07005c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 142
    .local v5, btn:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->saveButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v16, 0x7f09001e

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 145
    const v16, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #btn:Landroid/widget/Button;
    check-cast v5, Landroid/widget/Button;

    .line 146
    .restart local v5       #btn:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v16, 0x7f07005e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/layar/FilterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    .line 151
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    .line 152
    .local v6, bundledFilters:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 153
    const-string v16, "KEY_BUNDLE_FILTERS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 154
    const-string v16, "KEY_BUNDLE_FILTERS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 155
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 156
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    .line 159
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/layar/FilterSettingsActivity;->clear()V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    move-object v9, v0

    .line 162
    .local v9, filters:[Lcom/layar/data/Filter;
    array-length v14, v9

    .line 163
    .local v14, size:I
    move v0, v14

    new-array v0, v0, [Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    .line 164
    new-instance v8, Lcom/layar/FilterSettingsActivity$FilterUISections;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/FilterSettingsActivity$FilterUISections;-><init>(Lcom/layar/FilterSettingsActivity;)V

    .line 165
    .local v8, filterSections:Lcom/layar/FilterSettingsActivity$FilterUISections;
    invoke-virtual/range {p0 .. p0}, Lcom/layar/FilterSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 167
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v14, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 210
    new-instance v16, Lcom/layar/FilterSettingsActivity$ButtonControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$ButtonControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/layar/data/layer/Layer20;)V

    .line 211
    const/16 v17, 0x1

    .line 210
    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V

    .line 227
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->buildViews(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 228
    return-void

    .line 168
    :cond_1
    aget-object v16, v9, v10

    invoke-static/range {v16 .. v16}, Lcom/layar/data/Filter;->isReservedFilter(Lcom/layar/data/Filter;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 167
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 172
    :cond_3
    :try_start_0
    aget-object v16, v9, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    move-object v7, v0

    .line 173
    .local v7, filterDetails:Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    .line 175
    new-instance v7, Lorg/json/JSONObject;

    .end local v7           #filterDetails:Lorg/json/JSONObject;
    aget-object v16, v6, v10

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v7       #filterDetails:Lorg/json/JSONObject;
    :cond_4
    const-string v16, "type"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, type:Ljava/lang/String;
    const-string v16, "SEARCHBOX"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    new-instance v17, Lcom/layar/FilterSettingsActivity$SearchBoxControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$SearchBoxControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    aput-object v17, v16, v10

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x1

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V

    goto :goto_2

    .line 202
    .end local v7           #filterDetails:Lorg/json/JSONObject;
    .end local v15           #type:Ljava/lang/String;
    :catch_0
    move-exception v16

    goto :goto_2

    .line 183
    .restart local v7       #filterDetails:Lorg/json/JSONObject;
    .restart local v15       #type:Ljava/lang/String;
    :cond_5
    const-string v16, "RADIOLIST"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    new-instance v17, Lcom/layar/FilterSettingsActivity$RadioControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$RadioControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    aput-object v17, v16, v10

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x1

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V

    goto/16 :goto_2

    .line 186
    :cond_6
    const-string v16, "CUSTOM_SLIDER"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    new-instance v17, Lcom/layar/FilterSettingsActivity$SliderControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$SliderControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    aput-object v17, v16, v10

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x1

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V

    goto/16 :goto_2

    .line 189
    :cond_7
    const-string v16, "RANGE_SLIDER"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 190
    if-nez v6, :cond_8

    .line 191
    const-string v16, "value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/layar/data/layer/Layer20;->scope:I

    move/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    new-instance v17, Lcom/layar/FilterSettingsActivity$SliderControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$SliderControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    aput-object v17, v16, v10

    .line 193
    const/16 v16, 0x0

    const-string v17, "label"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->setTitle(ILjava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V

    goto/16 :goto_2

    .line 195
    :cond_9
    const-string v16, "CHECKBOXLIST"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    new-instance v17, Lcom/layar/FilterSettingsActivity$CheckboxListControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->viewRoot:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;-><init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    aput-object v17, v16, v10

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x1

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/layar/FilterSettingsActivity$FilterUISections;->addFilter(Lcom/layar/FilterSettingsActivity$FilterUIControl;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 213
    .end local v7           #filterDetails:Lorg/json/JSONObject;
    .end local v15           #type:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    new-instance v16, Lcom/layar/FilterSettingsActivity$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/FilterSettingsActivity$3;-><init>(Lcom/layar/FilterSettingsActivity;)V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 224
    :cond_b
    const/16 v16, 0x8

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 65
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 66
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "KEY_BUNDLE_LAYERNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "KEY_BUNDLE_LAYERNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/layar/FilterSettingsActivity;->initWithJson(Landroid/os/Bundle;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    if-nez v6, :cond_0

    .line 121
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v6, "KEY_BUNDLE_LAYERNAME"

    iget-object v7, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v7, v7, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v6, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    .line 90
    .local v2, filters:[Lcom/layar/data/Filter;
    array-length v4, v2

    .line 91
    .local v4, size:I
    new-array v0, v4, [Ljava/lang/String;

    .line 93
    .local v0, bundledFilters:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 120
    const-string v6, "KEY_BUNDLE_FILTERS"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    aget-object v6, v2, v3

    invoke-static {v6}, Lcom/layar/data/Filter;->isReservedFilter(Lcom/layar/data/Filter;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, filterDetails:Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, type:Ljava/lang/String;
    const-string v6, "SEARCHBOX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    .line 115
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_2

    .line 116
    .end local v1           #filterDetails:Lorg/json/JSONObject;
    .end local v5           #type:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 103
    .restart local v1       #filterDetails:Lorg/json/JSONObject;
    .restart local v5       #type:Ljava/lang/String;
    :cond_4
    const-string v6, "RADIOLIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    goto :goto_3

    .line 105
    :cond_5
    const-string v6, "CUSTOM_SLIDER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    goto :goto_3

    .line 107
    :cond_6
    const-string v6, "CHECKBOXLIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    goto :goto_3

    .line 109
    :cond_7
    const-string v6, "RANGE_SLIDER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity;->filterControls:[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 321
    invoke-virtual {p0}, Lcom/layar/FilterSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 322
    const-string v1, "shownOnStartup"

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/layar/FilterSettingsActivity;->shownOnStartup:Z

    .line 325
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    .line 327
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/layar/FilterSettingsActivity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    iput-boolean v2, p0, Lcom/layar/FilterSettingsActivity;->filterChanged:Z

    .line 333
    iput-boolean v2, p0, Lcom/layar/FilterSettingsActivity;->rangeChanged:Z

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/FilterSettingsActivity;->initWithJson(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 342
    return-void
.end method
