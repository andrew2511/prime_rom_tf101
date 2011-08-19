.class public Lcom/google/android/youtube/app/adapter/CommentListAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->resources:Landroid/content/res/Resources;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "commentsView"
    .parameter "parent"

    .prologue
    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    .local v1, holder:Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Comment;

    .line 41
    .local v0, comment:Lcom/google/android/youtube/core/model/Comment;
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;->author:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Comment;->author:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Comment;->publishedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/CommentListAdapter;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/google/android/youtube/app/utils/TimeUtil;->getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, timeAgo:Ljava/lang/String;
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object p2

    .line 38
    .end local v0           #comment:Lcom/google/android/youtube/core/model/Comment;
    .end local v1           #holder:Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;
    .end local v2           #timeAgo:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/google/android/youtube/app/adapter/CommentListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
