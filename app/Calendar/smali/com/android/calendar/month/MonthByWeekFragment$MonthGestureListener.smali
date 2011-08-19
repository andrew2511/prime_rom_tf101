.class Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthByWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthByWeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonthGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
