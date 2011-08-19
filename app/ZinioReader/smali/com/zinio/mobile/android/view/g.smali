.class final Lcom/zinio/mobile/android/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zinio/mobile/android/view/g;->a:Lcom/zinio/mobile/android/view/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zinio/mobile/android/view/g;->a:Lcom/zinio/mobile/android/view/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/VideoPlayerActivity;->finish()V

    .line 57
    return-void
.end method
