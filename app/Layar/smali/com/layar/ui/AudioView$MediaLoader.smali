.class Lcom/layar/ui/AudioView$MediaLoader;
.super Landroid/os/AsyncTask;
.source "AudioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/AudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Landroid/media/MediaPlayer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOwner:Landroid/app/Activity;

.field final synthetic this$0:Lcom/layar/ui/AudioView;


# direct methods
.method public constructor <init>(Lcom/layar/ui/AudioView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "owner"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    .line 124
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/layar/ui/AudioView$MediaLoader;->mOwner:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ui/AudioView$MediaLoader;)Lcom/layar/ui/AudioView;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/layar/ui/AudioView$MediaLoader;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-virtual {v1}, Lcom/layar/ui/AudioView;->getContext()Landroid/content/Context;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/layar/ui/AudioView$MediaLoader;->publishProgress([Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    aget-object v2, p1, v5

    invoke-static {v1, v2}, Lcom/layar/ui/AudioView;->access$3(Lcom/layar/ui/AudioView;Landroid/media/MediaPlayer;)V

    .line 138
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->mOwner:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v2, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-virtual {v2}, Lcom/layar/ui/AudioView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900e7

    invoke-direct {v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 142
    invoke-virtual {v1, v6}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 143
    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 144
    const v2, 0x7f090016

    new-instance v3, Lcom/layar/ui/AudioView$MediaLoader$1;

    invoke-direct {v3, p0}, Lcom/layar/ui/AudioView$MediaLoader$1;-><init>(Lcom/layar/ui/AudioView$MediaLoader;)V

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/layar/ui/AudioView$MediaLoader$2;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$MediaLoader$2;-><init>(Lcom/layar/ui/AudioView$MediaLoader;)V

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/layar/ui/AudioView$MediaLoader$3;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$MediaLoader$3;-><init>(Lcom/layar/ui/AudioView$MediaLoader;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 169
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/layar/ui/AudioView$MediaLoader$4;

    invoke-direct {v2, p0}, Lcom/layar/ui/AudioView$MediaLoader$4;-><init>(Lcom/layar/ui/AudioView$MediaLoader;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 177
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setIndeterminate(Z)V

    .line 178
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v2}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 180
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 184
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 190
    .local v0, seconds:I
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$6(Lcom/layar/ui/AudioView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 191
    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 190
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$6(Lcom/layar/ui/AudioView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 198
    iget-object v1, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    iget-object v2, p0, Lcom/layar/ui/AudioView$MediaLoader;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v2}, Lcom/layar/ui/AudioView;->access$7(Lcom/layar/ui/AudioView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/ui/AudioView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/layar/ui/AudioView$MediaLoader;->onProgressUpdate([Landroid/media/MediaPlayer;)V

    return-void
.end method
