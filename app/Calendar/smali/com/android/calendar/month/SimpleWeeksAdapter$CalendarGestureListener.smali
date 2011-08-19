.class public Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleWeeksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/SimpleWeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/SimpleWeeksAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/month/SimpleWeeksAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;->this$0:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method
