.class Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;
.super Ljava/lang/Object;
.source "FeedCursor.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/content/FeedCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedFeedCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feeds/core/content/FeedCursor;


# direct methods
.method private constructor <init>(Lcom/google/android/feeds/core/content/FeedCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/feeds/core/content/FeedCursor;Lcom/google/android/feeds/core/content/FeedCursor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;-><init>(Lcom/google/android/feeds/core/content/FeedCursor;)V

    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public get()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    return-object v0
.end method

.method public getType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursor;->access$100(Lcom/google/android/feeds/core/content/FeedCursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursor;->access$200(Lcom/google/android/feeds/core/content/FeedCursor;)I

    move-result v0

    return v0
.end method

.method public reopen()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursor;->access$300(Lcom/google/android/feeds/core/content/FeedCursor;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->access$402(Lcom/google/android/feeds/core/content/FeedCursor;Z)Z

    .line 663
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    invoke-virtual {v1}, Lcom/google/android/feeds/core/content/FeedCursor;->requery()Z

    .line 664
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
