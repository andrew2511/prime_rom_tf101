.class Lcom/android/calendar/DayView$AccessibilityRunnable;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityRunnable"
.end annotation


# instance fields
.field mEventType:I

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 1
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/calendar/DayView$AccessibilityRunnable;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/DayView$AccessibilityRunnable;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$AccessibilityRunnable;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/calendar/DayView$AccessibilityRunnable;->this$0:Lcom/android/calendar/DayView;

    iget v1, p0, Lcom/android/calendar/DayView$AccessibilityRunnable;->mEventType:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->sendAccessibilityEvent(I)V

    .line 1450
    return-void
.end method
