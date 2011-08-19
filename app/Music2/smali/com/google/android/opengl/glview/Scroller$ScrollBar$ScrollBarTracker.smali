.class Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller$ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollBarTracker"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller$ScrollBar;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setOverlayVisible(Z)V

    .line 338
    return-void
.end method

.method private endTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 360
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 361
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 362
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setOverlayVisible(Z)V

    .line 363
    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .locals 1
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x3

    .line 342
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 344
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->endTracking()V

    goto :goto_1

    .line 347
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->endTracking()V

    goto :goto_1

    .line 351
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-static {v0, p3}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->access$500(Lcom/google/android/opengl/glview/Scroller$ScrollBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
