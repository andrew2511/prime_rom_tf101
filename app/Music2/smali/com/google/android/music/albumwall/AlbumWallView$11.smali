.class Lcom/google/android/music/albumwall/AlbumWallView$11;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->onScale(Landroid/view/ScaleGestureDetector;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$copy:Landroid/view/MotionEvent;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Landroid/view/MotionEvent;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->val$copy:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->val$copy:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$11;->val$scale:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 319
    return-void
.end method
