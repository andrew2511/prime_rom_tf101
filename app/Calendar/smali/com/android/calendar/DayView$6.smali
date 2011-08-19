.class Lcom/android/calendar/DayView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 3420
    iput-object p1, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3423
    iget-object v0, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$1800(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3425
    iget-object v0, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$1902(Lcom/android/calendar/DayView;I)I

    .line 3426
    iget-object v0, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-static {}, Lcom/android/calendar/DayView;->access$2100()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2002(Lcom/android/calendar/DayView;Z)Z

    .line 3428
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, v3}, Lcom/android/calendar/DayView;->access$1502(Lcom/android/calendar/DayView;Z)Z

    .line 3429
    iget-object v0, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3430
    return-void

    :cond_1
    move v1, v2

    .line 3426
    goto :goto_0
.end method
