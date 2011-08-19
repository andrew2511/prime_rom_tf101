.class Lcom/android/gallery3d/app/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$5;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$5;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0, p2}, Lcom/android/gallery3d/app/VideoView;->access$1802(Lcom/android/gallery3d/app/VideoView;I)I

    .line 407
    return-void
.end method
