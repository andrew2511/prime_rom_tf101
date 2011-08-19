.class public Lcom/layar/ui/AudioView;
.super Landroid/widget/LinearLayout;
.source "AudioView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/AudioView$MediaLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioView"


# instance fields
.field private btnClose:Landroid/view/View;

.field private btnPlay:Landroid/widget/ImageView;

.field private buffer:I

.field private duration:Landroid/widget/TextView;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private timeline:Landroid/widget/SeekBar;

.field private updateProgress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    iput v3, p0, Lcom/layar/ui/AudioView;->buffer:I

    .line 202
    new-instance v1, Lcom/layar/ui/AudioView$1;

    invoke-direct {v1, p0}, Lcom/layar/ui/AudioView$1;-><init>(Lcom/layar/ui/AudioView;)V

    iput-object v1, p0, Lcom/layar/ui/AudioView;->updateProgress:Ljava/lang/Runnable;

    .line 40
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/layar/ui/AudioView;->setVisibility(I)V

    .line 43
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/layar/ui/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/layar/ui/AudioView;->btnPlay:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lcom/layar/ui/AudioView;->btnPlay:Landroid/widget/ImageView;

    new-instance v2, Lcom/layar/ui/AudioView$2;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$2;-><init>(Lcom/layar/ui/AudioView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/layar/ui/AudioView;->btnPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 64
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/layar/ui/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/AudioView;->btnClose:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/layar/ui/AudioView;->btnClose:Landroid/view/View;

    new-instance v2, Lcom/layar/ui/AudioView$3;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$3;-><init>(Lcom/layar/ui/AudioView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/layar/ui/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    .line 73
    iget-object v1, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    .line 74
    new-instance v2, Lcom/layar/ui/AudioView$4;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$4;-><init>(Lcom/layar/ui/AudioView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 90
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/layar/ui/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/layar/ui/AudioView;->duration:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/AudioView;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/layar/ui/AudioView;->buffer:I

    return v0
.end method

.method static synthetic access$3(Lcom/layar/ui/AudioView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$4(Lcom/layar/ui/AudioView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/layar/ui/AudioView;->buffer:I

    return-void
.end method

.method static synthetic access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/layar/ui/AudioView;->btnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/ui/AudioView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/layar/ui/AudioView;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/ui/AudioView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/layar/ui/AudioView;->updateProgress:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public play(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 4
    .parameter "i"
    .parameter "owner"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    iput v3, p0, Lcom/layar/ui/AudioView;->buffer:I

    .line 100
    iget-object v0, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setIndeterminate(Z)V

    .line 104
    iget-object v0, p0, Lcom/layar/ui/AudioView;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    iget-object v0, p0, Lcom/layar/ui/AudioView;->duration:Landroid/widget/TextView;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/layar/ui/AudioView;->btnPlay:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    new-instance v0, Lcom/layar/ui/AudioView$MediaLoader;

    invoke-direct {v0, p0, p2}, Lcom/layar/ui/AudioView$MediaLoader;-><init>(Lcom/layar/ui/AudioView;Landroid/app/Activity;)V

    new-array v1, v2, [Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/layar/ui/AudioView$MediaLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    invoke-virtual {p0, v3}, Lcom/layar/ui/AudioView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/layar/ui/AudioView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 118
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/layar/ui/AudioView;->setVisibility(I)V

    .line 119
    return-void
.end method
