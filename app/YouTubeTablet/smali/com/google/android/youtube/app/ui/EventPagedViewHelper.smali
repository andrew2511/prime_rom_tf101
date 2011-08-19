.class public Lcom/google/android/youtube/app/ui/EventPagedViewHelper;
.super Lcom/google/android/youtube/core/ui/PagedViewHelper;
.source "EventPagedViewHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/EventPagedViewHelper$1;,
        Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/PagedViewHelper",
        "<",
        "Lcom/google/android/youtube/core/model/Event;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/android/youtube/app/adapter/EventListAdapter;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final navigation:Lcom/google/android/youtube/app/Navigation;

.field private final requests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private final videoRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/EventListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 3
    .parameter "activity"
    .parameter "navigation"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .parameter "analytics"
    .parameter "logCategory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/Navigation;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/app/adapter/EventListAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;",
            "Lcom/google/android/youtube/core/Analytics;",
            "Lcom/google/android/youtube/core/Analytics$VideoCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p5, eventPageRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    .local p6, videoRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 61
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 62
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->adapter:Lcom/google/android/youtube/app/adapter/EventListAdapter;

    .line 63
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 64
    const-string v0, "analytics may not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 65
    const-string v0, "logCategory may not be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;-><init>(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;Lcom/google/android/youtube/app/ui/EventPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->videoCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 68
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->requests:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)Lcom/google/android/youtube/app/adapter/EventListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->adapter:Lcom/google/android/youtube/app/adapter/EventListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->requests:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Event;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 75
    .local v0, event:Lcom/google/android/youtube/core/model/Event;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    .line 77
    .local v2, videoRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->requests:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->videoCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v3, v2, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 81
    .end local v0           #event:Lcom/google/android/youtube/core/model/Event;
    .end local v2           #videoRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->adapter:Lcom/google/android/youtube/app/adapter/EventListAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 95
    .local v0, event:Lcom/google/android/youtube/core/model/Event;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->adapter:Lcom/google/android/youtube/app/adapter/EventListAdapter;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->getVideo(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    .line 97
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-interface {v2, v3, p3}, Lcom/google/android/youtube/core/Analytics;->trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 99
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/youtube/app/Navigation;->toWatch(Ljava/lang/String;)V

    .line 104
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/youtube/app/Navigation;->toChannel(Ljava/lang/String;)V

    goto :goto_0
.end method
