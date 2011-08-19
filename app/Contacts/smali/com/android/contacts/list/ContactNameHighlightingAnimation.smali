.class public Lcom/android/contacts/list/ContactNameHighlightingAnimation;
.super Lcom/android/contacts/widget/TextHighlightingAnimation;
.source "ContactNameHighlightingAnimation.java"


# instance fields
.field private final mListView:Landroid/widget/ListView;

.field private mSavedScrollingCacheEnabledFlag:Z


# direct methods
.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 0
    .parameter "listView"
    .parameter "duration"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/android/contacts/widget/TextHighlightingAnimation;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    .line 34
    return-void
.end method


# virtual methods
.method protected invalidate()V
    .locals 6

    .prologue
    .line 41
    iget-object v5, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 42
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 43
    iget-object v5, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 44
    .local v3, itemView:Landroid/view/View;
    instance-of v5, v3, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v5, :cond_0

    .line 45
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v4, v0

    .line 46
    .local v4, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v4}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 42
    .end local v4           #view:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v3           #itemView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onAnimationEnded()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mSavedScrollingCacheEnabledFlag:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 60
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isScrollingCacheEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mSavedScrollingCacheEnabledFlag:Z

    .line 54
    iget-object v0, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 55
    return-void
.end method
