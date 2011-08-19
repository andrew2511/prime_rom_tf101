.class Lcom/google/android/music/store/MediaStoreImportService$3;
.super Landroid/database/ContentObserver;
.source "MediaStoreImportService.java"


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
.method constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$3;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/music/store/MediaStoreImportService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaStoreImportService"

    const-string v1, "Media Store Updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$3;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v0}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService$3;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v1}, Lcom/google/android/music/store/MediaStoreImportService;->access$600(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
