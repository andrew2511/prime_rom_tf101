.class public Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;
.source "PlaceholderViewFactory.java"


# instance fields
.field private final mSeparatorHeight:I

.field private final mSuggestionHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    const-string v1, "placeholder"

    const v2, 0x7f040004

    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;->mSuggestionHeight:F

    .line 51
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;->mSeparatorHeight:I

    .line 52
    return-void
.end method

.method private getPixelHeightForSpan(I)I
    .locals 3
    .parameter "span"

    .prologue
    .line 55
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;->mSuggestionHeight:F

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;->mSeparatorHeight:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isPlaceholder()Z

    move-result v0

    return v0
.end method

.method public getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "entry"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, updating:Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isPlaceholderSpinner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getPlaceholderSpan()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;->getPixelHeightForSpan(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    return-object v1

    .line 66
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
