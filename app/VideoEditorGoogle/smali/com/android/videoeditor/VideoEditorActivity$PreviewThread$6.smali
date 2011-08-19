.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$6;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->run()V
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
    .line 2351
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$6;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$6;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$6;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2700(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2358
    return-void
.end method
