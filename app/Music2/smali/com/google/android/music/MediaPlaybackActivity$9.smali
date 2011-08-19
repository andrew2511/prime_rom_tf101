.class Lcom/google/android/music/MediaPlaybackActivity$9;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1510
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1539
    :goto_0
    :pswitch_0
    return-void

    .line 1512
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 1513
    .local v0, next:J
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 1517
    .end local v0           #next:J
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1523
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c007e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c007f

    new-instance v4, Lcom/google/android/music/MediaPlaybackActivity$9$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/MediaPlaybackActivity$9$1;-><init>(Lcom/google/android/music/MediaPlaybackActivity$9;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
