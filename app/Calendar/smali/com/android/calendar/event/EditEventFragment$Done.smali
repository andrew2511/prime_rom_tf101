.class Lcom/android/calendar/event/EditEventFragment$Done;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Done"
.end annotation


# instance fields
.field private mCode:I

.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 645
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v5, v13}, Lcom/android/calendar/event/EditEventFragment;->access$602(Lcom/android/calendar/event/EditEventFragment;Z)Z

    .line 647
    iget v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v5}, Lcom/android/calendar/event/EditEventFragment;->isEmptyNewEvent()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v10, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v5, v10}, Lcom/android/calendar/CalendarEventModel;->isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v10, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v11, v11, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v12, v12, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/calendar/event/EditEventHelper;->saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 654
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 655
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 656
    const v9, 0x7f0a002c

    .line 667
    .local v9, stringResource:I
    :goto_0
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 670
    .end local v9           #stringResource:I
    :cond_1
    iget v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 672
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v5, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 673
    .local v1, begin:J
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v5, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 674
    .local v3, end:J
    const/4 v6, -0x1

    .line 677
    .local v6, which:I
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v8

    .line 678
    .local v8, isPCSyncAccount:Z
    if-eqz v8, :cond_8

    .line 679
    const/4 v6, 0x2

    .line 695
    :goto_1
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v10, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v10}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v11}, Lcom/android/calendar/event/EditEventFragment;->access$800(Lcom/android/calendar/event/EditEventFragment;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-direct {v0, v5, v10, v11}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 697
    .local v0, deleteHelper:Lcom/android/calendar/DeleteEventHelper;
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/CalendarEventModel;I)V

    .line 700
    .end local v0           #deleteHelper:Lcom/android/calendar/DeleteEventHelper;
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v6           #which:I
    .end local v8           #isPCSyncAccount:Z
    :cond_2
    iget v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 703
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v5}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 708
    :cond_3
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    .line 709
    .local v7, focusedView:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 710
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v5}, Lcom/android/calendar/event/EditEventFragment;->access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v5, v10, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 711
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 713
    :cond_4
    return-void

    .line 658
    .end local v7           #focusedView:Landroid/view/View;
    :cond_5
    const v9, 0x7f0a002b

    .restart local v9       #stringResource:I
    goto/16 :goto_0

    .line 661
    .end local v9           #stringResource:I
    :cond_6
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 662
    const v9, 0x7f0a002a

    .restart local v9       #stringResource:I
    goto/16 :goto_0

    .line 664
    .end local v9           #stringResource:I
    :cond_7
    const v9, 0x7f0a0029

    .restart local v9       #stringResource:I
    goto/16 :goto_0

    .line 682
    .end local v9           #stringResource:I
    .restart local v1       #begin:J
    .restart local v3       #end:J
    .restart local v6       #which:I
    .restart local v8       #isPCSyncAccount:Z
    :cond_8
    iget-object v5, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v5, v5, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 684
    :pswitch_0
    const/4 v6, 0x0

    .line 685
    goto :goto_1

    .line 687
    :pswitch_1
    const/4 v6, 0x1

    .line 688
    goto :goto_1

    .line 690
    :pswitch_2
    const/4 v6, 0x2

    goto :goto_1

    :cond_9
    move v11, v13

    .line 695
    goto :goto_2

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDoneCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 639
    iput p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    .line 640
    return-void
.end method
