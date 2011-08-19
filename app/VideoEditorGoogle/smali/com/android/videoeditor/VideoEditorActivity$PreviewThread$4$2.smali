.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V
    .locals 0
    .parameter

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2202(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;I)I

    .line 2129
    return-void
.end method
