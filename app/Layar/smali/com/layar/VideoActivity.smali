.class public Lcom/layar/VideoActivity;
.super Lcom/layar/OurActivity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_LOADING:I


# instance fields
.field videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 74
    invoke-virtual {p0}, Lcom/layar/VideoActivity;->finish()V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030065

    invoke-virtual {p0, v1}, Lcom/layar/VideoActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f0700e7

    invoke-virtual {p0, v1}, Lcom/layar/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    .line 32
    iget-object v1, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/layar/VideoActivity$1;

    invoke-direct {v2, p0}, Lcom/layar/VideoActivity$1;-><init>(Lcom/layar/VideoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 40
    .local v0, controller:Landroid/widget/MediaController;
    iget-object v1, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 41
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 62
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Lcom/layar/VideoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 65
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/layar/OurActivity;->onStart()V

    .line 47
    iget-object v0, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/layar/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/VideoActivity;->showDialog(I)V

    .line 49
    iget-object v0, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/layar/VideoActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/VideoActivity$2;-><init>(Lcom/layar/VideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 55
    iget-object v0, p0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 56
    return-void
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
