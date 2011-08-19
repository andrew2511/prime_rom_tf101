.class Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

.field downloadIndicator:Landroid/widget/ImageView;

.field downloadType:Landroid/widget/ImageView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field progressBar:Landroid/widget/SeekBar;

.field final synthetic this$1:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->this$1:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;Lcom/google/android/music/DownloadQueueActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;-><init>(Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;)V

    return-void
.end method
