.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "view"
    .parameter "e"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    new-instance v1, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v1, v2, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "area"
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0
.end method
