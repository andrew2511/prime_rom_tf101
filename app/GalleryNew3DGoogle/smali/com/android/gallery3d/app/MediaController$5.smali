.class Lcom/android/gallery3d/app/MediaController$5;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MediaController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController$5;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$5;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 578
    .local v0, pos:I
    add-int/lit16 v0, v0, -0x1388

    .line 579
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$5;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 580
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$5;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$100(Lcom/android/gallery3d/app/MediaController;)I

    .line 582
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$5;->this$0:Lcom/android/gallery3d/app/MediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 583
    return-void
.end method
