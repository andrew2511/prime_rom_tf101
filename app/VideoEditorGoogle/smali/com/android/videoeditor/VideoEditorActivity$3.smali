.class Lcom/android/videoeditor/VideoEditorActivity$3;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 301
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$3;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAudioTrack()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$3;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    return-void
.end method
