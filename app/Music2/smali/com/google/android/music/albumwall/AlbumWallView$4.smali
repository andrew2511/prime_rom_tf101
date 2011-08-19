.class Lcom/google/android/music/albumwall/AlbumWallView$4;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$arg1:F

.field final synthetic val$arg2:F

.field final synthetic val$copy1:Landroid/view/MotionEvent;

.field final synthetic val$copy2:Landroid/view/MotionEvent;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$tag:I

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy1:Landroid/view/MotionEvent;

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy2:Landroid/view/MotionEvent;

    iput p5, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$arg1:F

    iput p6, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$arg2:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$tag:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy1:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy2:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$arg1:F

    iget v5, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$arg2:F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 217
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy1:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy2:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$4;->val$copy2:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 223
    :cond_1
    return-void
.end method
