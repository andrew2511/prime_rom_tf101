.class Lcom/android/calendar/DayView$3;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;Z)V
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
    .line 876
    iput-object p1, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 879
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 880
    .local v2, start:I
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 881
    .local v0, end:I
    sub-int v3, v0, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v4, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 882
    .local v1, newValue:I
    iget-object v3, p0, Lcom/android/calendar/DayView$3;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3, v1}, Lcom/android/calendar/DayView;->setViewStartY(I)V

    .line 883
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v3
.end method
