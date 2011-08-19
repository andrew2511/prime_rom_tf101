.class Lcom/google/android/music/store/MediaStoreImportService$1;
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
    .line 80
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$1;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    .local v2, now:J
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$1;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$000(Lcom/google/android/music/store/MediaStoreImportService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    sub-long v0, v4, v6

    .line 85
    .local v0, importDelay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$1;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$100(Lcom/google/android/music/store/MediaStoreImportService;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$1;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MediaStoreImportService$1;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v5}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/music/Worker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
