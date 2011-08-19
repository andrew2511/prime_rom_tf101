.class Lcom/google/android/music/store/MediaStoreImportService$4;
.super Ljava/lang/Object;
.source "MediaStoreImportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/store/MediaStoreImportService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MediaStoreImportService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    iput p2, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v0}, Lcom/google/android/music/store/MediaStoreImportService;->access$100(Lcom/google/android/music/store/MediaStoreImportService;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v0}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-static {v1}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    iget v1, p0, Lcom/google/android/music/store/MediaStoreImportService$4;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImportService;->stopSelf(I)V

    .line 136
    return-void
.end method
