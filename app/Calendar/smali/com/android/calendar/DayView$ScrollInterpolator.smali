.class Lcom/android/calendar/DayView$ScrollInterpolator;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4363
    iput-object p1, p0, Lcom/android/calendar/DayView$ScrollInterpolator;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4364
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 4367
    sub-float/2addr p1, v2

    .line 4368
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float p1, v0, v2

    .line 4370
    sub-float v0, v2, p1

    iget-object v1, p0, Lcom/android/calendar/DayView$ScrollInterpolator;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$3600(Lcom/android/calendar/DayView;)F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 4371
    iget-object v0, p0, Lcom/android/calendar/DayView$ScrollInterpolator;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3700(Lcom/android/calendar/DayView;)V

    .line 4374
    :cond_0
    return p1
.end method
