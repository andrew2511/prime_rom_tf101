.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 725
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 726
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 911
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 913
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2000(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 914
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 915
    .local v3, listPositionOffset:I
    if-nez v1, :cond_1

    .line 916
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 925
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 926
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 927
    iput-object p2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 928
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 929
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 932
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    .line 934
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 935
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 946
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2102(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 947
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 948
    .local v2, info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 949
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2112(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 954
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 921
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    .line 942
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 951
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2202(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 953
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 33
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 730
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    move-object/from16 v18, v0

    .line 738
    .local v18, data:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 902
    .end local p1
    :goto_0
    return-void

    .line 744
    .restart local p1
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 745
    .local v17, cursorSize:I
    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 746
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v26

    .line 747
    .local v26, listPositionOffset:I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object v3, v0

    if-nez v3, :cond_9

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 749
    if-eqz v26, :cond_2

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->shiftSelection(I)V

    .line 768
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 786
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, p3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;Z)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 790
    .local v19, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-wide v7, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    move-wide v9, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    move-wide v11, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 798
    .end local v19           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v26           #listPositionOffset:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 799
    new-instance v23, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;)V

    .line 807
    .local v23, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaListView;->addFooterView(Landroid/view/View;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$902(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    .line 812
    .end local v23           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    monitor-enter v3

    .line 813
    const/16 v31, -0x1

    .line 814
    .local v31, totalAgendaRangeStart:I
    const/16 v30, -0x1

    .line 816
    .local v30, totalAgendaRangeEnd:I
    if-eqz v17, :cond_f

    .line 818
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 822
    .local v32, x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 823
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1508(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    .line 829
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v31, v0

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v30, v0

    .line 879
    .end local v32           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 883
    .local v24, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 884
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 885
    .local v28, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v6, v0

    invoke-static {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z

    move-result v4

    if-nez v4, :cond_13

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1900(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 896
    .end local v28           #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_8
    monitor-exit v3

    goto/16 :goto_0

    .end local v24           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 753
    .end local v30           #totalAgendaRangeEnd:I
    .end local v31           #totalAgendaRangeStart:I
    .restart local v26       #listPositionOffset:I
    .restart local p1
    :cond_9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v22, v0

    .line 754
    .local v22, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v27

    .line 756
    .local v27, newPosition:I
    if-ltz v27, :cond_2

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    add-int/lit8 v4, v27, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaListView;->setSelection(I)V

    goto/16 :goto_1

    .line 770
    .end local v22           #goToTime:Landroid/text/format/Time;
    .end local v27           #newPosition:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 771
    const/16 v21, 0x0

    .line 772
    .local v21, found:Z
    const/4 v3, -0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 773
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 776
    const/16 v21, 0x1

    .line 781
    :cond_c
    if-nez v21, :cond_3

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v3, v0

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    goto/16 :goto_2

    .line 794
    .end local v21           #found:Z
    .end local v26           #listPositionOffset:I
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 825
    .restart local v30       #totalAgendaRangeEnd:I
    .restart local v31       #totalAgendaRangeStart:I
    .restart local v32       #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_e
    :try_start_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    move v4, v0

    if-nez v4, :cond_6

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1608(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    goto/16 :goto_4

    .line 832
    .end local v32           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 835
    .local v29, querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 837
    .local v20, first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 839
    .local v25, last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v5, v0

    if-gt v4, v5, :cond_10

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v4, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move v5, v0

    if-ge v4, v5, :cond_10

    .line 840
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 843
    :cond_10
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v4, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    if-gt v4, v5, :cond_11

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move v4, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v5, v0

    if-ge v4, v5, :cond_11

    .line 844
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 847
    :cond_11
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v31, v0

    .line 848
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v30, v0

    .line 856
    .end local v20           #first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v25           #last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_7
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 873
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1404(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_5

    .line 850
    :cond_12
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v31, v0

    .line 851
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v30, v0

    goto :goto_7

    .line 858
    :pswitch_0
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v31, v0

    .line 859
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v4, v0

    const/16 v5, 0x3c

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_8

    .line 862
    :pswitch_1
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v30, v0

    .line 863
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v4, v0

    add-int/lit8 v4, v4, 0x3c

    move v0, v4

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_8

    .line 866
    :pswitch_2
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v31, v0

    .line 867
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v30, v0

    .line 868
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move v4, v0

    const/16 v5, 0x1e

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 869
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1e

    move v0, v4

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_8

    .line 892
    .end local v29           #querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .end local p1
    .restart local v24       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v28       #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_13
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
