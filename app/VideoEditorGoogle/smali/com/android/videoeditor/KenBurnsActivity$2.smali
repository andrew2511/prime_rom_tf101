.class Lcom/android/videoeditor/KenBurnsActivity$2;
.super Ljava/lang/Object;
.source "KenBurnsActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/KenBurnsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 361
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$2;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$1300(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 367
    goto :goto_0
.end method
