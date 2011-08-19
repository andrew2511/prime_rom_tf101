.class Lcom/android/calendar/DayView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
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
    .line 193
    iput-object p1, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Z)Z

    .line 202
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Z)Z

    .line 207
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$300(Lcom/android/calendar/DayView;)V

    .line 208
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Z)Z

    .line 197
    return-void
.end method
