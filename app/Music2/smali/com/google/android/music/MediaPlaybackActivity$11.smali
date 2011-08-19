.class Lcom/google/android/music/MediaPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$finalAlbumName:Ljava/lang/String;

.field final synthetic val$finalArtistName:Ljava/lang/String;

.field final synthetic val$finalTotalTime:Ljava/lang/String;

.field final synthetic val$finalTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalArtistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalAlbumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalTrackName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalTotalTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$1700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$1800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$1900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$11;->val$finalTotalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    return-void
.end method
