.class Lcom/android/calendar/DayView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 3924
    iput-object p1, p0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3924
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 27
    .parameter "item"

    .prologue
    .line 3926
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3972
    :pswitch_0
    const/4 v2, 0x0

    .line 3975
    :goto_0
    return v2

    .line 3928
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 3975
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3936
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/android/calendar/Event;->endMillis:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_1

    .line 3944
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_1

    .line 3949
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_1

    .line 3954
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 3955
    .local v8, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 3956
    .local v10, endMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_1

    .line 3961
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v26

    .line 3963
    .local v26, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v18, v0

    .line 3964
    .local v18, begin:J
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v20, v0

    .line 3965
    .local v20, end:J
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v16, v0

    .line 3966
    .local v16, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView$ContextMenuHandler;->this$0:Lcom/android/calendar/DayView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v12

    const-wide/16 v14, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_1

    .line 3926
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
