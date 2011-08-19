.class public Lcom/layar/ui/prefs/CategoryChoiceListPreference;
.super Landroid/preference/DialogPreference;
.source "CategoryChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mChecked:[Z

.field private mSummaryAll:Ljava/lang/String;

.field private mSummaryEmpty:Ljava/lang/String;

.field private mSummaryMore:Ljava/lang/String;

.field private mSummaryOne:Ljava/lang/String;

.field private mSummaryTwo:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field manager:Lcom/layar/data/category/CategoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->manager:Lcom/layar/data/category/CategoryManager;

    .line 55
    sget-object v1, Lcom/layar/R$styleable;->MultiplyChoiseListPreference:[I

    .line 54
    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryEmpty:Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    .line 65
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setPositiveButtonText(I)V

    .line 69
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setNegativeButtonText(I)V

    .line 70
    return-void
.end method

.method private _generateSummary()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryEmpty:Ljava/lang/String;

    .line 159
    :goto_0
    return-object v3

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_getCount()I

    move-result v0

    .line 140
    .local v0, count:I
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_2
    if-le v0, v6, :cond_3

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 143
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    .line 144
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_getSelectedList(I)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v3, "%1%"

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v3, "%n%"

    sub-int v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v2           #selectedValues:[Ljava/lang/String;
    :goto_1
    move-object v3, v1

    .line 159
    goto :goto_0

    .line 148
    .end local v1           #result:Ljava/lang/String;
    :cond_3
    if-ne v0, v6, :cond_4

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 149
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    .line 150
    .restart local v1       #result:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_getSelectedList(I)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2       #selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v3, "%1%"

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 153
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #selectedValues:[Ljava/lang/String;
    :cond_4
    if-ne v0, v5, :cond_5

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 154
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    .line 155
    .restart local v1       #result:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_getSelectedList(I)[Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2       #selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 158
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #selectedValues:[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private _getCount()I
    .locals 3

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 167
    return v1

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getSelectedList(I)[Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v3, 0x0

    .line 183
    :goto_0
    return-object v3

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, position:I
    new-array v2, p1, [Ljava/lang/String;

    .line 175
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    move-object v3, v2

    .line 183
    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/data/category/Category;

    iget-object v3, v3, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    if-ne v1, p1, :cond_2

    move-object v3, v2

    .line 180
    goto :goto_0

    .line 175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private _refreshChecks()V
    .locals 6

    .prologue
    .line 113
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([ZZ)V

    .line 132
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, sValues:[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [I

    .line 120
    .local v3, values:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_3

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, j:I
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layar/data/category/Category;

    iget v4, v4, Lcom/layar/data/category/Category;->id:I

    aget v5, v3, v1

    if-ne v4, v5, :cond_2

    .line 128
    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v1           #j:I
    :cond_3
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_4
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    return-object v0
.end method

.method private createListView()Landroid/view/View;
    .locals 12

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 199
    .local v2, context:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 200
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v7

    .line 201
    .local v7, imageCache:Lcom/layar/data/ImageCache;
    sget-boolean v1, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    move v8, v1

    .line 202
    .local v8, iconSize:I
    :goto_0
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v11, v1, [I

    .line 203
    .local v11, ids:[I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_1
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_1

    .line 206
    invoke-virtual {v7, v8, v11}, Lcom/layar/data/ImageCache;->loadAllFromFileCache(I[I)V

    .line 207
    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v9, listView:Landroid/widget/ListView;
    const v1, 0x106000b

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 211
    new-instance v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    .line 212
    const v3, 0x7f030015

    const v4, 0x7f070025

    iget-object v5, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    move-object v1, p0

    .line 211
    invoke-direct/range {v0 .. v9}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;-><init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;Lcom/layar/data/ImageCache;ILandroid/widget/ListView;)V

    .line 291
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 293
    new-instance v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$2;

    invoke-direct {v1, p0, v9}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$2;-><init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference;Landroid/widget/ListView;)V

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    return-object v9

    .line 201
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #iconSize:I
    .end local v9           #listView:Landroid/widget/ListView;
    .end local v10           #i:I
    .end local v11           #ids:[I
    :cond_0
    const/16 v1, 0x30

    move v8, v1

    goto :goto_0

    .line 204
    .restart local v8       #iconSize:I
    .restart local v10       #i:I
    .restart local v11       #ids:[I
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/category/Category;

    iget v1, v1, Lcom/layar/data/category/Category;->id:I

    aput v1, v11, v10

    .line 203
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private updateValue()V
    .locals 4

    .prologue
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v2, valueBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 325
    return-void

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_1
    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/data/category/Category;

    iget v3, v3, Lcom/layar/data/category/Category;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 330
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v0

    .line 331
    .local v0, imgCache:Lcom/layar/data/ImageCache;
    invoke-virtual {v0}, Lcom/layar/data/ImageCache;->clearMemoryCache()V

    .line 332
    invoke-virtual {v0}, Lcom/layar/data/ImageCache;->clearCategoryMemoryCache()V

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->updateValue()V

    .line 335
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 339
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 190
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_refreshChecks()V

    .line 191
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->createListView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 194
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;

    move-object v1, v0

    .line 369
    .local v1, myState:Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;
    invoke-virtual {v1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 370
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 349
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 350
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 357
    :goto_0
    return-object v2

    .line 355
    :cond_0
    new-instance v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 356
    .local v0, myState:Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$SavedState;->value:Ljava/lang/String;

    move-object v2, v0

    .line 357
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 344
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setValue(Ljava/lang/String;)V

    .line 345
    return-void

    .line 344
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public setCategories(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/data/category/Category;

    const/4 v2, -0x1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09019d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/data/category/Category;-><init>(ILjava/lang/String;I)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mChecked:[Z

    .line 86
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_refreshChecks()V

    .line 87
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_generateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->mValue:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->persistString(Ljava/lang/String;)Z

    .line 99
    invoke-direct {p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->_generateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
