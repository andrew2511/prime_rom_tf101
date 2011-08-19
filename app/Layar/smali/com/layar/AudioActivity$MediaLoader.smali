.class Lcom/layar/AudioActivity$MediaLoader;
.super Landroid/os/AsyncTask;
.source "AudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/AudioActivity;
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
.field final synthetic this$0:Lcom/layar/AudioActivity;


# direct methods
.method private constructor <init>(Lcom/layar/AudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/AudioActivity;Lcom/layar/AudioActivity$MediaLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/layar/AudioActivity$MediaLoader;-><init>(Lcom/layar/AudioActivity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/AudioActivity$MediaLoader;)Lcom/layar/AudioActivity;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/layar/AudioActivity$MediaLoader;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    aget-object v2, p1, v3

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/layar/AudioActivity$MediaLoader;->publishProgress([Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "values"

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-virtual {v1}, Lcom/layar/AudioActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    aget-object v2, p1, v5

    invoke-static {v1, v2}, Lcom/layar/AudioActivity;->access$5(Lcom/layar/AudioActivity;Landroid/media/MediaPlayer;)V

    .line 132
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    const v3, 0x7f0900e8

    invoke-virtual {v2, v3}, Lcom/layar/AudioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    const v3, 0x7f0900e7

    invoke-virtual {v2, v3}, Lcom/layar/AudioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Lcom/layar/AudioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/layar/AudioActivity$MediaLoader$1;

    invoke-direct {v3, p0}, Lcom/layar/AudioActivity$MediaLoader$1;-><init>(Lcom/layar/AudioActivity$MediaLoader;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/layar/AudioActivity$MediaLoader$2;

    invoke-direct {v2, p0}, Lcom/layar/AudioActivity$MediaLoader$2;-><init>(Lcom/layar/AudioActivity$MediaLoader;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/layar/AudioActivity$MediaLoader$3;

    invoke-direct {v2, p0}, Lcom/layar/AudioActivity$MediaLoader$3;-><init>(Lcom/layar/AudioActivity$MediaLoader;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 159
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/layar/AudioActivity$MediaLoader$4;

    invoke-direct {v2, p0}, Lcom/layar/AudioActivity$MediaLoader$4;-><init>(Lcom/layar/AudioActivity$MediaLoader;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 167
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v2}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x1080023

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 172
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/layar/AudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 179
    .local v0, seconds:I
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$8(Lcom/layar/AudioActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$8(Lcom/layar/AudioActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$1(Lcom/layar/AudioActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$1(Lcom/layar/AudioActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 186
    iget-object v1, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$4(Lcom/layar/AudioActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/AudioActivity$MediaLoader;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v2}, Lcom/layar/AudioActivity;->access$9(Lcom/layar/AudioActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/layar/AudioActivity$MediaLoader;->onProgressUpdate([Landroid/media/MediaPlayer;)V

    return-void
.end method
