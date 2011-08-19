.class public abstract Lcom/google/android/youtube/core/ui/BasePagedView;
.super Landroid/widget/LinearLayout;
.source "BasePagedView.java"

# interfaces
.implements Lcom/google/android/youtube/core/ui/PagedView;


# instance fields
.field protected adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field protected final emptyText:Ljava/lang/String;

.field protected final emptyTextView:Landroid/widget/TextView;

.field protected final emptyView:Landroid/view/ViewGroup;

.field protected final errorTextView:Landroid/widget/TextView;

.field protected final errorView:Landroid/view/ViewGroup;

.field protected itemsView:Landroid/view/View;

.field private layout:Landroid/widget/FrameLayout;

.field protected final loadingView:Landroid/view/View;

.field protected final mainView:Landroid/view/ViewGroup;

.field protected final maxItems:I

.field protected onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

.field protected final retryButton:Landroid/widget/Button;

.field protected final statusView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "mainViewId"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    sget-object v0, Lcom/google/android/youtube/R$styleable;->BasePagedView:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 63
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyText:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOrientation(I)V

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    .line 67
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    .local v8, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v8}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 72
    .local v7, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 77
    .local v9, statusViewId:I
    if-lez v9, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v7, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->statusView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    .line 87
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->maxItems:I

    .line 89
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingLeft()I

    move-result v2

    .line 90
    .local v2, l:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingTop()I

    move-result v3

    .line 91
    .local v3, t:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingRight()I

    move-result v4

    .line 92
    .local v4, r:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingBottom()I

    move-result v5

    .line 93
    .local v5, b:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->addPadding(Landroid/view/View;IIII)V

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/ui/BasePagedView;->setPadding(IIII)V

    .line 98
    .end local v2           #l:I
    .end local v3           #t:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void

    .line 77
    .end local v4           #r:I
    .end local v5           #b:I
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private addPadding(Landroid/view/View;IIII)V
    .locals 4
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    return-void
.end method

.method private switchTo(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    if-ne v1, p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    if-ne v1, p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void

    :cond_0
    move v1, v3

    .line 167
    goto :goto_0

    :cond_1
    move v1, v3

    .line 168
    goto :goto_1

    :cond_2
    move v1, v3

    .line 169
    goto :goto_2

    :cond_3
    move v1, v3

    .line 170
    goto :goto_3
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;I)V

    .line 107
    return-void
.end method

.method public final getAdapter()Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    return-object v0
.end method

.method public getEmptyText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getItemsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    return-object v0
.end method

.method public final getLoadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method protected getMainView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->mainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getRetryButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getStatusView()Landroid/view/View;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->statusView:Landroid/view/View;

    return-object v0
.end method

.method public setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<*>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    .line 111
    iget v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->maxItems:I

    if-lez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->maxItems:I

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->setMaxItems(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 130
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 134
    return-void
.end method

.method public final setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public final setOnScrollListener(Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    .line 122
    return-void
.end method

.method public final showEmpty()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method public final showEmpty(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->emptyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public final showItems()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->itemsView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public final showLoading()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->loadingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public final showRecoverableError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->retryButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->errorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->switchTo(Landroid/view/View;)V

    .line 160
    return-void
.end method
