.class Lcom/google/android/music/store/MediaStoreImportService$2;
.super Ljava/lang/Object;
.source "MediaStoreImportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MediaStoreImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MediaStoreImportService;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 97
    const/4 v2, 0x1

    .line 99
    .local v2, waitForPauseInChanges:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, now:J
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$400(Lcom/google/android/music/store/MediaStoreImportService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$400(Lcom/google/android/music/store/MediaStoreImportService;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 109
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/Worker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/Worker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_1
    return-void

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v3, v0, v1}, Lcom/google/android/music/store/MediaStoreImportService;->access$402(Lcom/google/android/music/store/MediaStoreImportService;J)J

    goto :goto_0
.end method
