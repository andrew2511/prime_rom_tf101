.class Lcom/google/android/music/DownloadQueueActivity$2$1;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/DownloadQueueActivity$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/DownloadQueueActivity$2;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/DownloadQueueActivity$2;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$2$1;->this$1:Lcom/google/android/music/DownloadQueueActivity$2;

    iput-object p2, p0, Lcom/google/android/music/DownloadQueueActivity$2$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$2$1;->this$1:Lcom/google/android/music/DownloadQueueActivity$2;

    iget-object v0, v0, Lcom/google/android/music/DownloadQueueActivity$2;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    iget-object v1, p0, Lcom/google/android/music/DownloadQueueActivity$2$1;->val$c:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/google/android/music/DownloadQueueActivity;->access$000(Lcom/google/android/music/DownloadQueueActivity;Landroid/database/Cursor;)V

    .line 102
    return-void
.end method
