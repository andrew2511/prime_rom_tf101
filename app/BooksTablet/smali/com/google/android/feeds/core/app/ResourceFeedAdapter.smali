.class public Lcom/google/android/feeds/core/app/ResourceFeedAdapter;
.super Lcom/google/android/feeds/core/app/BaseFeedAdapter;
.source "ResourceFeedAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mErrorLayout:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadingLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/widget/BaseAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "loadingLayout"
    .parameter "errorLayout"
    .parameter "adapter"

    .prologue
    .line 61
    invoke-direct {p0, p4}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 62
    iput-object p1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLoadingLayout:I

    .line 64
    iput p3, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mErrorLayout:I

    .line 66
    iget-object v1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, service:Ljava/lang/Object;
    check-cast v0, Landroid/view/LayoutInflater;

    .end local v0           #service:Ljava/lang/Object;
    iput-object v0, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    return-void
.end method


# virtual methods
.method protected getErrorView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mErrorLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLoadingLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
