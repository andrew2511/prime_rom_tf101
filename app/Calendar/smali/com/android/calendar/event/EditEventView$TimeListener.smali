.class Lcom/android/calendar/event/EditEventView$TimeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    .line 183
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v10, 0x1

    .line 187
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v7

    .line 188
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v2

    .line 195
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    if-ne v8, v9, :cond_1

    .line 197
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 198
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 200
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 201
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 202
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 205
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 206
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 220
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    :cond_0
    :goto_0
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 222
    .local v0, endMillis:J
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 223
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-static {v8, v9, v5, v6}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 224
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 225
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView$TimeListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v8}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;)V

    .line 226
    return-void

    .line 209
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_1
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 210
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 211
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 215
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 216
    iget v8, v7, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method
