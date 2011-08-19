.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->val$audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 659
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 663
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;->val$audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->removeAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method
