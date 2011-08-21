.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mProgress:Z

.field private oldView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    .line 30
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0f00ae

    const v5, 0x7f0f00ad

    const/16 v4, 0x8

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, textView:Landroid/view/View;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    .line 40
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    .line 49
    return-void

    .line 39
    .end local v2           #visibility:I
    :cond_1
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 55
    return-void
.end method
