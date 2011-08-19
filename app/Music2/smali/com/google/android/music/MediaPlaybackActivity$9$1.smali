.class Lcom/google/android/music/MediaPlaybackActivity$9$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MediaPlaybackActivity$9;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$9$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$9;

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->finish()V

    .line 1530
    return-void
.end method
