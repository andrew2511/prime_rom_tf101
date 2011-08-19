.class public Lcom/layar/ui/prefs/MultipleChoiceListPreference;
.super Landroid/preference/DialogPreference;
.source "MultipleChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChecked:[Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryIconUrls:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummaryAll:Ljava/lang/String;

.field private mSummaryEmpty:Ljava/lang/String;

.field private mSummaryMore:Ljava/lang/String;

.field private mSummaryOne:Ljava/lang/String;

.field private mSummaryTwo:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object v1, Lcom/layar/R$styleable;->MultiplyChoiseListPreference:[I

    .line 57
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryEmpty:Ljava/lang/String;

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    .line 66
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    .line 68
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setPositiveButtonText(I)V

    .line 72
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setNegativeButtonText(I)V

    .line 73
    return-void
.end method

.method private _generateSummary()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryEmpty:Ljava/lang/String;

    .line 246
    :goto_0
    return-object v3

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 223
    const/4 v3, 0x0

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_getCount()I

    move-result v0

    .line 226
    .local v0, count:I
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryAll:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_3
    if-le v0, v6, :cond_4

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 229
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    .line 230
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_getSelectedList()[Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v3, "%1%"

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v3, "%n%"

    sub-int v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v2           #selectedValues:[Ljava/lang/String;
    :goto_1
    move-object v3, v1

    .line 246
    goto :goto_0

    .line 234
    .end local v1           #result:Ljava/lang/String;
    :cond_4
    if-ne v0, v6, :cond_5

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 235
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryTwo:Ljava/lang/String;

    .line 236
    .restart local v1       #result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_getSelectedList()[Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2       #selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v3, "%1%"

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 239
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #selectedValues:[Ljava/lang/String;
    :cond_5
    if-eq v0, v5, :cond_6

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryOne:Ljava/lang/String;

    .line 241
    .restart local v1       #result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_getSelectedList()[Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2       #selectedValues:[Ljava/lang/String;
    const-string v3, "%0%"

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 244
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #selectedValues:[Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mSummaryMore:Ljava/lang/String;

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private _getCount()I
    .locals 3

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 254
    return v1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getSelectedList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_getCount()I

    move-result v0

    .line 259
    .local v0, count:I
    if-nez v0, :cond_0

    .line 260
    const/4 v4, 0x0

    .line 271
    :goto_0
    return-object v4

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 262
    .local v2, position:I
    new-array v3, v0, [Ljava/lang/String;

    .line 263
    .local v3, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-lt v1, v4, :cond_1

    move-object v4, v3

    .line 271
    goto :goto_0

    .line 264
    :cond_1
    iget-object v4, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    if-ne v2, v0, :cond_2

    move-object v4, v3

    .line 268
    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private _refreshChecks()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 185
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    if-nez v7, :cond_0

    move v2, v10

    .line 186
    .local v2, empty:Z
    :goto_0
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v7

    .line 187
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v1, :cond_1

    .line 216
    return-void

    .end local v1           #count:I
    .end local v2           #empty:Z
    .end local v5           #i:I
    :cond_0
    move v2, v11

    .line 185
    goto :goto_0

    .line 188
    .restart local v1       #count:I
    .restart local v2       #empty:Z
    .restart local v5       #i:I
    :cond_1
    if-nez v2, :cond_6

    .line 190
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    iget-object v8, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 191
    .local v4, equals:Z
    if-eqz v4, :cond_2

    .line 192
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v10, v7, v5

    .line 193
    const/4 v2, 0x1

    .line 187
    .end local v4           #equals:Z
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    .restart local v4       #equals:Z
    :cond_2
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 197
    .local v0, contains:Z
    if-eqz v0, :cond_3

    .line 198
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v10, v7, v5

    goto :goto_2

    .line 201
    :cond_3
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 202
    .local v6, starts:Z
    if-eqz v6, :cond_4

    .line 203
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v10, v7, v5

    goto :goto_2

    .line 206
    :cond_4
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 207
    .local v3, ends:Z
    if-eqz v3, :cond_5

    .line 208
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v10, v7, v5

    goto :goto_2

    .line 211
    :cond_5
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v11, v7, v5

    goto :goto_2

    .line 213
    .end local v0           #contains:Z
    .end local v3           #ends:Z
    .end local v4           #equals:Z
    .end local v6           #starts:Z
    :cond_6
    iget-object v7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aput-boolean v11, v7, v5

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryIconUrls:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private createListView()Landroid/view/View;
    .locals 10

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 292
    .local v2, context:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 293
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v7

    .line 294
    .local v7, imageCache:Lcom/layar/data/ImageCache;
    sget-boolean v1, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    move v8, v1

    .line 295
    .local v8, iconSize:I
    :goto_0
    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v9, listView:Landroid/widget/ListView;
    const v1, 0x106000b

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 298
    new-instance v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    .line 299
    const v3, 0x7f030015

    const v4, 0x7f070025

    iget-object v5, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    move-object v1, p0

    .line 298
    invoke-direct/range {v0 .. v9}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;-><init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/view/LayoutInflater;Lcom/layar/data/ImageCache;ILandroid/widget/ListView;)V

    .line 371
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 373
    new-instance v1, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;

    invoke-direct {v1, p0, v9}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;-><init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference;Landroid/widget/ListView;)V

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 391
    return-object v9

    .line 294
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #iconSize:I
    .end local v9           #listView:Landroid/widget/ListView;
    :cond_0
    const/16 v1, 0x30

    move v8, v1

    goto :goto_0
.end method

.method private updateValue()V
    .locals 4

    .prologue
    .line 395
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v2, valueBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v3

    .line 398
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 407
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #valueBuilder:Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 399
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #valueBuilder:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_3

    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_2
    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 404
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setValue(Ljava/lang/String;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->updateValue()V

    .line 415
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 419
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 278
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    if-nez v0, :cond_1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 280
    const-string v1, "MultiChoiseListPreference requires an entries array and an entryValues array."

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_refreshChecks()V

    .line 284
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->createListView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 287
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;

    move-object v1, v0

    .line 449
    .local v1, myState:Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;
    invoke-virtual {v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 450
    iget-object v2, v1, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 430
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 437
    :goto_0
    return-object v2

    .line 435
    :cond_0
    new-instance v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 436
    .local v0, myState:Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;
    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$SavedState;->value:Ljava/lang/String;

    move-object v2, v0

    .line 437
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 424
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setValue(Ljava/lang/String;)V

    .line 425
    return-void

    .line 424
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "entries"

    .prologue
    .line 102
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 103
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntries:[Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEntriesIcons([Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "icons"

    .prologue
    .line 84
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryIconUrls:[Ljava/lang/CharSequence;

    .line 85
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryIconUrls:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 89
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryIconUrls:[Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "entryValues"

    .prologue
    .line 134
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 135
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mChecked:[Z

    .line 141
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_refreshChecks()V

    .line 142
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_generateSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->mValue:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->persistString(Ljava/lang/String;)Z

    .line 171
    invoke-direct {p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->_generateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method
