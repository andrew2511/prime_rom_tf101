.class Lcom/android/videoeditor/VideoEditorActivity$23;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V
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
    .line 1823
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1828
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->cancelExportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object v3, v0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 1831
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0, v3}, Lcom/android/videoeditor/VideoEditorActivity;->access$1502(Lcom/android/videoeditor/VideoEditorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1832
    return-void
.end method
