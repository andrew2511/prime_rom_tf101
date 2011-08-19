.class Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;
.super Ljava/lang/Object;
.source "SubscriptionPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentItemsCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<TT;>;>;"
    }
.end annotation


# instance fields
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

.field private final initialRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final isRecentPredicate:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TT;>;"
        }
    .end annotation
.end field

.field private recentCount:I

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

.field private final subscription:Lcom/google/android/youtube/core/model/Subscription;

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/model/Subscription;)V
    .locals 2
    .parameter
    .parameter
    .parameter "initialRequest"
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;>;",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TT;>;",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    .local p2, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<TT;>;>;"
    .local p4, isRecentPredicate:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TT;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->requester:Lcom/google/android/youtube/core/async/Requester;

    .line 162
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->initialRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 163
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->isRecentPredicate:Lcom/google/android/youtube/core/utils/Predicate;

    .line 164
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->subscription:Lcom/google/android/youtube/core/model/Subscription;

    .line 165
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-static {p1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$500(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 166
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 169
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->requester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->initialRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 170
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 193
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error retrieving new item count for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->subscription:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->subscription:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 7
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
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<TT;>;"
    const/16 v5, 0xa

    .line 173
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, item:Ljava/lang/Object;,"TT;"
    iget v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->isRecentPredicate:Lcom/google/android/youtube/core/utils/Predicate;

    invoke-interface {v4, v1}, Lcom/google/android/youtube/core/utils/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->subscription:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->setRecentCount(Ljava/lang/String;I)V

    .line 190
    .end local v1           #item:Ljava/lang/Object;,"TT;"
    :goto_1
    return-void

    .line 179
    .restart local v1       #item:Ljava/lang/Object;,"TT;"
    :cond_1
    iget v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    goto :goto_0

    .line 182
    .end local v1           #item:Ljava/lang/Object;,"TT;"
    :cond_2
    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    .line 183
    .local v3, nextUri:Landroid/net/Uri;
    iget v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    if-gt v4, v5, :cond_3

    if-nez v3, :cond_4

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->this$0:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->subscription:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->recentCount:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;->setRecentCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 188
    :cond_4
    invoke-static {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    .line 189
    .local v2, nextPageRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->requester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v4, v2, v5}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    .local p0, this:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<TT;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
