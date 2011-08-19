.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackActionModeCallback"
.end annotation


# instance fields
.field private final mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 0
    .parameter
    .parameter "audioTrack"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 95
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 149
    .restart local p0
    :pswitch_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppDuckingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 150
    .local v1, duck:Z
    :goto_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppDucking(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/android/videoeditor/service/ApiService;->setAudioTrackDuck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 149
    .end local v1           #duck:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 160
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "audio_track_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7f080004
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v3, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 103
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040001

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, titleBarView:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 107
    const v3, 0x7f080009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, titleView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieAudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v3, 0x7f080006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v3, 0x7f080004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x7f080008

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 114
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 115
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppVolume()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 117
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$200(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, audioTrackView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 206
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 127
    .local v0, duckBtn:Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppDuckingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const v2, 0x7f02004c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 133
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 130
    :cond_0
    const v2, 0x7f020044

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 177
    if-eqz p3, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppVolume(I)V

    .line 179
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/videoeditor/service/ApiService;->setAudioTrackVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 188
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 194
    return-void
.end method
