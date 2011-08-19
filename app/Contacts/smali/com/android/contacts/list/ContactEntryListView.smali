.class public Lcom/android/contacts/list/ContactEntryListView;
.super Lcom/android/contacts/widget/PinnedHeaderListView;
.source "ContactEntryListView.java"


# instance fields
.field private mHighlightNamesWhenScrolling:Z

.field private final mHighlightingAnimation:Lcom/android/contacts/widget/TextHighlightingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactEntryListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/ContactEntryListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;

    const/16 v1, 0x15e

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ContactNameHighlightingAnimation;-><init>(Landroid/widget/ListView;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightingAnimation:Lcom/android/contacts/widget/TextHighlightingAnimation;

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/PinnedHeaderListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 78
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightNamesWhenScrolling:Z

    if-eqz v0, :cond_0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightingAnimation:Lcom/android/contacts/widget/TextHighlightingAnimation;

    invoke-virtual {v0}, Lcom/android/contacts/widget/TextHighlightingAnimation;->startHighlighting()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightingAnimation:Lcom/android/contacts/widget/TextHighlightingAnimation;

    invoke-virtual {v0}, Lcom/android/contacts/widget/TextHighlightingAnimation;->stopHighlighting()V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/android/contacts/list/ContactEntryListAdapter;

    .end local p1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightingAnimation:Lcom/android/contacts/widget/TextHighlightingAnimation;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setHighlightNamesWhenScrolling(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListView;->mHighlightNamesWhenScrolling:Z

    .line 64
    return-void
.end method
