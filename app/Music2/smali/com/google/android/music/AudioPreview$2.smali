.class Lcom/google/android/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/google/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$500(Lcom/google/android/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 272
    :goto_0
    return-void

    .line 252
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 271
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$800(Lcom/google/android/music/AudioPreview;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 255
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_1

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 261
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_1

    .line 265
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$600(Lcom/google/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 267
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$700(Lcom/google/android/music/AudioPreview;)V

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
