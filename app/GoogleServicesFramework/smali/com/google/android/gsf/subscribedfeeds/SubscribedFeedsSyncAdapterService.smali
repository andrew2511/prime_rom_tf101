.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;
.super Landroid/app/Service;
.source "SubscribedFeedsSyncAdapterService.java"


# instance fields
.field private mContentProviderClient:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 40
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    .line 41
    .local v1, contentProvider:Landroid/content/ContentProvider;
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 42
    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v2, v0

    .line 43
    .local v2, syncableContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTempProviderSyncAdapter()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v3

    return-object v3
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 37
    return-void
.end method
