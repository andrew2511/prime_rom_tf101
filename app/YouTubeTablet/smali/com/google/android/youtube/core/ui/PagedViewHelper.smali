.class public Lcom/google/android/youtube/core/ui/PagedViewHelper;
.super Ljava/lang/Object;
.source "PagedViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;
.implements Lcom/google/android/youtube/core/utils/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<TT;>;>;",
        "Lcom/google/android/youtube/core/utils/Predicate",
        "<TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private final activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/adapter/FootedAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private initialRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private nextUri:Landroid/net/Uri;

.field private final pagedView:Lcom/google/android/youtube/core/ui/PagedView;

.field protected realLastIndex:I

.field private final requester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final statusErrorTextView:Landroid/widget/TextView;

.field private final statusErrorView:Landroid/view/View;

.field private final statusLoadingView:Landroid/view/View;

.field private final statusRetryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<TT;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    .local p3, targetAdapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p4, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->activity:Landroid/app/Activity;

    .line 85
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/ui/PagedView;

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    .line 86
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/Requester;

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->requester:Lcom/google/android/youtube/core/async/Requester;

    .line 87
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {p2}, Lcom/google/android/youtube/core/ui/PagedView;->getStatusView()Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, footer:Landroid/view/View;
    new-instance v1, Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-direct {v1, p3, v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;-><init>(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    .line 91
    const-string v1, "progressbar"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusLoadingView:Landroid/view/View;

    .line 92
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusErrorView:Landroid/view/View;

    .line 93
    const-string v1, "error_message"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusErrorTextView:Landroid/widget/TextView;

    .line 94
    const-string v1, "retry_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusRetryButton:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/ui/PagedView;->setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v1, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnScrollListener(Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v1, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    .line 102
    new-instance v1, Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-direct {v1, p1, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 103
    return-void
.end method

.method private makeNextInitialRequest()V
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 266
    :cond_0
    return-void
.end method

.method private makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 269
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 270
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->showLoading()V

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->requester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 272
    return-void
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 295
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showLoading()V

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->showFooter()V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showItems()V

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    .local p1, input:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public final getLastRequest()Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1

    .prologue
    .line 275
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method public final varargs init([Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 5
    .parameter "requests"

    .prologue
    .line 115
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    const-string v1, "requests cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "requests cannot be empty"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->reset()V

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    .restart local v0       #i:I
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->makeNextInitialRequest()V

    .line 123
    return-void
.end method

.method public final initEmpty()V
    .locals 1

    .prologue
    .line 137
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->reset()V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showEmpty()V

    .line 139
    return-void
.end method

.method public final initLoading()V
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->reset()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showLoading()V

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 248
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 0
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<TT;>;"
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 222
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    .line 224
    .local v2, isEmpty:Z
    instance-of v3, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v3, :cond_0

    .line 225
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    move-object v1, v0

    .line 226
    .local v1, httpException:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_0

    .line 227
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->activity:Landroid/app/Activity;

    const v4, 0x7f0d001c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->showError(Ljava/lang/String;ZZ)V

    .line 232
    .end local v1           #httpException:Lorg/apache/http/client/HttpResponseException;
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->activity:Landroid/app/Activity;

    invoke-static {v3, p2}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->showError(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onNoEntries()V
    .locals 1

    .prologue
    .line 217
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showEmpty()V

    .line 218
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 8
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<TT;>;"
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eq p1, v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 156
    .local v4, responseEntries:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    iget v7, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 159
    .local v2, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 160
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, entry:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v1           #entry:Ljava/lang/Object;,"TT;"
    :cond_3
    iget v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    iget v6, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries; after filtering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; realLastIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 170
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v5, v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->add(Ljava/lang/Iterable;)V

    .line 171
    iget-object v5, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iput-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 178
    :goto_2
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->onNoEntries()V

    .line 185
    :goto_3
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->makeNextInitialRequest()V

    goto/16 :goto_0

    .line 175
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    goto :goto_2

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->hideFooter()V

    .line 182
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v5}, Lcom/google/android/youtube/core/ui/PagedView;->showItems()V

    goto :goto_3
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method public onScroll(Lcom/google/android/youtube/core/ui/PagedView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 236
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    add-int v0, p2, p3

    .line 237
    .local v0, lastVisibleItem:I
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    if-eq v2, v3, :cond_0

    if-ne v0, p4, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->getMaxItems()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 242
    .local v1, request:Lcom/google/android/youtube/core/async/GDataRequest;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    .line 243
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 245
    .end local v1           #request:Lcom/google/android/youtube/core/async/GDataRequest;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->nextUri:Landroid/net/Uri;

    .line 143
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->lastRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->realLastIndex:I

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->initialRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->clear()V

    .line 147
    return-void
.end method

.method protected showError(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "msg"
    .parameter "canRetry"
    .parameter "isEmpty"

    .prologue
    .line 279
    .local p0, this:Lcom/google/android/youtube/core/ui/PagedViewHelper;,"Lcom/google/android/youtube/core/ui/PagedViewHelper<TT;>;"
    if-eqz p3, :cond_1

    .line 280
    if-eqz p2, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/PagedView;->showRecoverableError(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/PagedView;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->statusErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->adapter:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->showFooter()V

    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedViewHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showItems()V

    goto :goto_0
.end method
