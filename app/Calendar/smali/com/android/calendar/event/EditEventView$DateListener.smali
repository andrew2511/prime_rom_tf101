.class Lcom/android/calendar/event/EditEventView$DateListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    .line 263
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 14
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 266
    const-string v11, "EditEvent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDateSet: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v11}, Lcom/android/calendar/event/EditEventView;->access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v9

    .line 269
    .local v9, startTime:Landroid/text/format/Time;
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v11}, Lcom/android/calendar/event/EditEventView;->access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;

    move-result-object v4

    .line 276
    .local v4, endTime:Landroid/text/format/Time;
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->mView:Landroid/view/View;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, v12, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    if-ne v11, v12, :cond_1

    .line 278
    iget v11, v4, Landroid/text/format/Time;->year:I

    iget v12, v9, Landroid/text/format/Time;->year:I

    sub-int v10, v11, v12

    .line 279
    .local v10, yearDuration:I
    iget v11, v4, Landroid/text/format/Time;->month:I

    iget v12, v9, Landroid/text/format/Time;->month:I

    sub-int v6, v11, v12

    .line 280
    .local v6, monthDuration:I
    iget v11, v4, Landroid/text/format/Time;->monthDay:I

    iget v12, v9, Landroid/text/format/Time;->monthDay:I

    sub-int v5, v11, v12

    .line 282
    .local v5, monthDayDuration:I
    move/from16 v0, p2

    move-object v1, v9

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 283
    move/from16 v0, p3

    move-object v1, v9

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 284
    move/from16 v0, p4

    move-object v1, v9

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 285
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 288
    .local v7, startMillis:J
    add-int v11, p2, v10

    iput v11, v4, Landroid/text/format/Time;->year:I

    .line 289
    add-int v11, p3, v6

    iput v11, v4, Landroid/text/format/Time;->month:I

    .line 290
    add-int v11, p4, v5

    iput v11, v4, Landroid/text/format/Time;->monthDay:I

    .line 291
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 294
    .local v2, endMillis:J
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v11}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;)V

    .line 311
    .end local v5           #monthDayDuration:I
    .end local v6           #monthDuration:I
    .end local v10           #yearDuration:I
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, v12, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-static {v11, v12, v7, v8}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 312
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, v12, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-static {v11, v12, v2, v3}, Lcom/android/calendar/event/EditEventView;->access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 313
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v12, v12, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-static {v11, v12, v2, v3}, Lcom/android/calendar/event/EditEventView;->access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V

    .line 315
    iget-object v11, p0, Lcom/android/calendar/event/EditEventView$DateListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v11}, Lcom/android/calendar/event/EditEventView;->access$400(Lcom/android/calendar/event/EditEventView;)V

    .line 316
    return-void

    .line 297
    .end local v2           #endMillis:J
    .end local v7           #startMillis:J
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 298
    .restart local v7       #startMillis:J
    move/from16 v0, p2

    move-object v1, v4

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 299
    move/from16 v0, p3

    move-object v1, v4

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 300
    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 301
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 305
    .restart local v2       #endMillis:J
    invoke-virtual {v4, v9}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 306
    invoke-virtual {v4, v9}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 307
    move-wide v2, v7

    goto :goto_0
.end method
