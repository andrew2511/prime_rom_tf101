.class Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;
.super Ljava/lang/Object;
.source "FeedCursorWrapper.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/content/FeedCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedFeedCursorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;


# direct methods
.method private constructor <init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Lcom/google/android/feeds/core/content/FeedCursorWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;-><init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)V

    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->access$101(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)V

    .line 510
    return-void
.end method

.method public get()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    return-object v0
.end method

.method public getType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->access$200(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->access$300(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)I

    move-result v0

    return v0
.end method

.method public reopen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-static {v0, v1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->access$402(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Z)Z

    .line 538
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-static {v0, v1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->access$502(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Z)Z

    .line 539
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    invoke-virtual {v0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->requery()Z

    .line 540
    return-void
.end method
