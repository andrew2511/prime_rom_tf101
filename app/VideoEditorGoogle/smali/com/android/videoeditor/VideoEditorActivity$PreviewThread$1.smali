.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$1;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1877
    :goto_0
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$1;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1600(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1878
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1880
    :cond_0
    return-void
.end method
