.class Lcom/google/android/finsky/providers/SuggestionProvider$1;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/SuggestionProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/SuggestionProvider;

.field final synthetic val$listDocs:Ljava/util/List;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/SuggestionProvider;Ljava/util/List;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/finsky/providers/SuggestionProvider$1;->this$0:Lcom/google/android/finsky/providers/SuggestionProvider;

    iput-object p2, p0, Lcom/google/android/finsky/providers/SuggestionProvider$1;->val$listDocs:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/providers/SuggestionProvider$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;II)V
    .locals 7
    .parameter "response"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 137
    .local v0, bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_SUGGESTION:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v5, v6, v1}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 141
    .local v2, doc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    iget-object v5, p0, Lcom/google/android/finsky/providers/SuggestionProvider$1;->val$listDocs:Ljava/util/List;

    new-instance v6, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v6, v2, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0           #bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .end local v1           #cookie:Ljava/lang/String;
    .end local v2           #doc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/providers/SuggestionProvider$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 148
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    check-cast p1, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/providers/SuggestionProvider$1;->onResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;II)V

    return-void
.end method
