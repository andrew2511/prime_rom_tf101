.class Lcom/android/calendar/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4348
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3200(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4335
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4336
    const/4 v0, 0x0

    .line 4342
    :goto_0
    return v0

    .line 4339
    :cond_0
    const/4 p4, 0x0

    .line 4341
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$3400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4342
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 4316
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4317
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 4321
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3200(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4322
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4323
    const/4 v0, 0x0

    .line 4329
    :goto_0
    return v0

    .line 4326
    :cond_0
    const/4 p4, 0x0

    .line 4328
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$3300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4329
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$3000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4311
    const/4 v0, 0x1

    return v0
.end method
