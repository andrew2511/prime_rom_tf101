.class Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;
.super Landroid/widget/CursorAdapter;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/model/LoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchWithinVolumeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/CursorAdapter;",
        "Lcom/google/android/apps/books/model/LoaderListener",
        "<",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyLoading:Z

.field private mEmptyView:Landroid/view/View;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2629
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    .line 2630
    return-void
.end method

.method private updateEmptyLoading()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2648
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2654
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2649
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2651
    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    .line 2697
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2698
    .local v1, pageId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v7, :cond_0

    move v0, v8

    .line 2700
    .local v0, isPageEnabled:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2702
    const v7, 0x1020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2703
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2705
    .local v6, text2:Landroid/widget/TextView;
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2706
    .local v4, snippetRaw:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 2707
    .local v3, snippetHtml:Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2709
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2710
    .local v2, pageTitle:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2711
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    :goto_1
    return-void

    .line 2698
    .end local v0           #isPageEnabled:Z
    .end local v2           #pageTitle:Ljava/lang/String;
    .end local v3           #snippetHtml:Ljava/lang/CharSequence;
    .end local v4           #snippetRaw:Ljava/lang/String;
    .end local v5           #text1:Landroid/widget/TextView;
    .end local v6           #text2:Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v7, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->isPageEnabled(Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 2713
    .restart local v0       #isPageEnabled:Z
    .restart local v2       #pageTitle:Ljava/lang/String;
    .restart local v3       #snippetHtml:Ljava/lang/CharSequence;
    .restart local v4       #snippetRaw:Ljava/lang/String;
    .restart local v5       #text1:Landroid/widget/TextView;
    .restart local v6       #text2:Landroid/widget/TextView;
    :cond_1
    const v7, 0x7f0b0081

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 2658
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 2659
    .local v0, count:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 2669
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2670
    .local v0, footer:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v1

    :goto_1
    return v1

    .line 2669
    .end local v0           #footer:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2670
    .restart local v0       #footer:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 2675
    if-nez p1, :cond_1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 2676
    .local v0, emptyView:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2677
    if-nez p2, :cond_0

    .line 2678
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2679
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000e

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2681
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    .line 2682
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->updateEmptyLoading()V

    move-object v2, p2

    .line 2685
    :goto_1
    return-object v2

    .end local v0           #emptyView:Z
    :cond_1
    move v0, v3

    .line 2675
    goto :goto_0

    .line 2685
    .restart local v0       #emptyView:Z
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2664
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2691
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2692
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2634
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 2635
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2621
    check-cast p2, Lcom/google/android/apps/books/model/VolumeMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2639
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 2640
    return-void
.end method

.method public setEmptyLoading(Z)V
    .locals 0
    .parameter "emptyLoading"

    .prologue
    .line 2643
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    .line 2644
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->updateEmptyLoading()V

    .line 2645
    return-void
.end method
