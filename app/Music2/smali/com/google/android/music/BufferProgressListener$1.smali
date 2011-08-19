.class Lcom/google/android/music/BufferProgressListener$1;
.super Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.source "BufferProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BufferProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BufferProgressListener;


# direct methods
.method constructor <init>(Lcom/google/android/music/BufferProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/music/BufferProgressListener$1;->this$0:Lcom/google/android/music/BufferProgressListener;

    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(JIFI)V
    .locals 6
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/BufferProgressListener$1;->this$0:Lcom/google/android/music/BufferProgressListener;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/BufferProgressListener;->access$000(Lcom/google/android/music/BufferProgressListener;JIFI)V

    .line 78
    return-void
.end method
