.class public Lcom/layar/AudioActivity;
.super Landroid/app/Activity;
.source "AudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/AudioActivity$MediaLoader;
    }
.end annotation


# instance fields
.field private btnPlay:Landroid/widget/ImageButton;

.field private buffer:I

.field private current:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private timeline:Landroid/widget/SeekBar;

.field private updateProgress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/AudioActivity;->buffer:I

    .line 190
    new-instance v0, Lcom/layar/AudioActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/AudioActivity$1;-><init>(Lcom/layar/AudioActivity;)V

    iput-object v0, p0, Lcom/layar/AudioActivity;->updateProgress:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/AudioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/layar/AudioActivity;->current:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/layar/AudioActivity;->timeline:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/AudioActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/layar/AudioActivity;->buffer:I

    return v0
.end method

.method static synthetic access$4(Lcom/layar/AudioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/AudioActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/AudioActivity;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$6(Lcom/layar/AudioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/layar/AudioActivity;->buffer:I

    return-void
.end method

.method static synthetic access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/layar/AudioActivity;->btnPlay:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/layar/AudioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/layar/AudioActivity;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/AudioActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/layar/AudioActivity;->updateProgress:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/layar/AudioActivity;->finish()V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/AudioActivity;->handler:Landroid/os/Handler;

    .line 42
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/layar/AudioActivity;->btnPlay:Landroid/widget/ImageButton;

    .line 45
    iget-object v0, p0, Lcom/layar/AudioActivity;->btnPlay:Landroid/widget/ImageButton;

    new-instance v1, Lcom/layar/AudioActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/AudioActivity$2;-><init>(Lcom/layar/AudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/layar/AudioActivity;->btnPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 62
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/layar/AudioActivity;->timeline:Landroid/widget/SeekBar;

    .line 63
    iget-object v0, p0, Lcom/layar/AudioActivity;->timeline:Landroid/widget/SeekBar;

    new-instance v1, Lcom/layar/AudioActivity$3;

    invoke-direct {v1, p0}, Lcom/layar/AudioActivity$3;-><init>(Lcom/layar/AudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/layar/AudioActivity;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 74
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/AudioActivity;->current:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/AudioActivity;->duration:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 111
    invoke-virtual {p0}, Lcom/layar/AudioActivity;->finish()V

    .line 112
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 82
    iput v3, p0, Lcom/layar/AudioActivity;->buffer:I

    .line 84
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/layar/AudioActivity;->btnPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/layar/AudioActivity;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/layar/AudioActivity;->current:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/layar/AudioActivity;->duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    new-instance v0, Lcom/layar/AudioActivity$MediaLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/AudioActivity$MediaLoader;-><init>(Lcom/layar/AudioActivity;Lcom/layar/AudioActivity$MediaLoader;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/layar/AudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/layar/AudioActivity$MediaLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 104
    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/AudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 105
    :cond_0
    return-void
.end method
