.class Lcom/android/videoeditor/VideoEditorActivity$22;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->initializeFromProject(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ATTEMPTS:I

.field private final DELAY:J

.field private mAttempts:I

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x14

    .line 1685
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->DELAY:J

    .line 1687
    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->ATTEMPTS:I

    .line 1688
    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1694
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    if-ltz v0, :cond_1

    .line 1701
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    .line 1702
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->mAttempts:I

    if-ltz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$22;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1706
    :cond_1
    return-void
.end method
