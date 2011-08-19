.class Lcom/android/videoeditor/VideoEditorActivity$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/VideoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$1;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutComplete()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$1;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$1;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$1;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->access$000(Lcom/android/videoeditor/VideoEditorActivity;J)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->appScrollTo(IZ)V

    .line 147
    return-void
.end method
