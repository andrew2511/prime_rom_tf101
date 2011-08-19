.class Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller$ThumbBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbBarTracker"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller$ThumbBar;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->setOverlayVisible(Z)V

    .line 224
    return-void
.end method

.method private endTracking()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->access$302(Lcom/google/android/opengl/glview/Scroller$ThumbBar;F)F

    .line 246
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->updateThumbPosition()V

    .line 247
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->setOverlayVisible(Z)V

    .line 249
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

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 230
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->endTracking()V

    goto :goto_1

    .line 233
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->endTracking()V

    goto :goto_1

    .line 237
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;->this$1:Lcom/google/android/opengl/glview/Scroller$ThumbBar;

    invoke-static {v0, p3}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->access$200(Lcom/google/android/opengl/glview/Scroller$ThumbBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
