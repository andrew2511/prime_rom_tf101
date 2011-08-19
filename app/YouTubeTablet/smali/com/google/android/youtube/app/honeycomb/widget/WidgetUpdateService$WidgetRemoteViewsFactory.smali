.class Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;
.super Ljava/lang/Object;
.source "WidgetUpdateService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetRemoteViewsFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;-><init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->access$100(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newTeaserLoadingRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 181
    .local v0, views:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "position"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->access$100(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->access$100(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->access$100(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/app/widget/Teaser;

    invoke-static {v2, p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newTeaserRemoteView(Landroid/content/Context;Lcom/google/android/youtube/app/widget/Teaser;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 189
    .local v0, views:Landroid/widget/RemoteViews;
    monitor-exit v1

    move-object v1, v0

    .line 195
    .end local v0           #views:Landroid/widget/RemoteViews;
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 197
    .end local p0
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;->this$0:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->access$200(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V

    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
