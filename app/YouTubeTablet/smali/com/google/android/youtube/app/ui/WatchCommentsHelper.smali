.class public Lcom/google/android/youtube/app/ui/WatchCommentsHelper;
.super Ljava/lang/Object;
.source "WatchCommentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final addCommentRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final commentEdit:Landroid/widget/EditText;

.field private final comments:Lcom/google/android/youtube/core/ui/PagedListView;

.field private final commentsAdapter:Lcom/google/android/youtube/app/adapter/CommentListAdapter;

.field private final commentsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/ui/PagedViewHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private final commentsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Z)V
    .locals 4
    .parameter "activity"
    .parameter "comments"
    .parameter "requesters"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "useCommentDialog"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    .line 72
    invoke-interface {p3}, Lcom/google/android/youtube/app/Requesters;->getCommentsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/Requester;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 73
    invoke-interface {p3}, Lcom/google/android/youtube/app/Requesters;->getAddCommentRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/Requester;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->addCommentRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 74
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 75
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 76
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->comments:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, commentsHeader:Landroid/view/View;
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    .line 80
    if-eqz p6, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;->addHeaderView(Landroid/view/View;)V

    .line 86
    new-instance v1, Lcom/google/android/youtube/app/adapter/CommentListAdapter;

    invoke-direct {v1, p1}, Lcom/google/android/youtube/app/adapter/CommentListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsAdapter:Lcom/google/android/youtube/app/adapter/CommentListAdapter;

    .line 87
    new-instance v1, Lcom/google/android/youtube/core/ui/PagedViewHelper;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsAdapter:Lcom/google/android/youtube/app/adapter/CommentListAdapter;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    .line 89
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/Analytics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->addCommentRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Lcom/google/android/youtube/app/adapter/CommentListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsAdapter:Lcom/google/android/youtube/app/adapter/CommentListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$4;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$4;-><init>(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 157
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 160
    if-eqz p3, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, comment:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;

    invoke-direct {v3, p0, v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$AddCommentVideoAction;-><init>(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v1, 0x1

    .line 168
    .end local v0           #comment:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->reset(Lcom/google/android/youtube/core/model/Video;)V

    .line 93
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;)V
    .locals 4
    .parameter "video"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    .line 97
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getCommentsRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->comments:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->showEmpty(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->commentsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initEmpty()V

    goto :goto_0
.end method
