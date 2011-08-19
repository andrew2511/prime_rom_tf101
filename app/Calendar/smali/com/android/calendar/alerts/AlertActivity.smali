.class public Lcom/android/calendar/alerts/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/AlertActivity$1;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/alerts/AlertActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method private dismissFiredAlarms()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 104
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v5, "state=1"

    .line 106
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 108
    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 161
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    return-object v2
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .locals 2
    .parameter "view"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 315
    .local v0, index:I
    if-gez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 318
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    move-object v1, p0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    move-object v10, v0

    move-object/from16 v0, p1

    move-object v1, v10

    if-ne v0, v1, :cond_4

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    add-long v8, v10, v12

    .line 266
    .local v8, alarmTime:J
    const-string v10, "notification"

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 268
    .local v17, nm:Landroid/app/NotificationManager;
    const/4 v10, 0x0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    if-eqz v10, :cond_1

    .line 271
    const-wide/16 v18, 0x0

    .line 272
    .local v18, scheduleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/4 v11, -0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 273
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 275
    .local v2, eventId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 276
    .local v4, begin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 281
    .local v6, end:J
    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/calendar/alerts/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v14

    .line 285
    .local v14, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    move-object v10, v0

    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 286
    move-wide/from16 v18, v8

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v13, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    goto :goto_0

    .line 293
    .end local v2           #eventId:J
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v14           #values:Landroid/content/ContentValues;
    .end local v18           #scheduleAlarmTime:J
    :cond_1
    const-string v10, "AlertActivity"

    const-string v11, "Cursor object is null. Ignore the Snooze request."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->dismissFiredAlarms()V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    .line 307
    .end local v8           #alarmTime:J
    .end local v17           #nm:Landroid/app/NotificationManager;
    :cond_3
    :goto_1
    return-void

    .line 298
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    move-object v10, v0

    move-object/from16 v0, p1

    move-object v1, v10

    if-ne v0, v1, :cond_3

    .line 299
    const-string v10, "notification"

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 301
    .restart local v17       #nm:Landroid/app/NotificationManager;
    const/4 v10, 0x0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->dismissFiredAlarms()V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->setContentView(I)V

    .line 205
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->setTitle(I)V

    .line 207
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    .line 208
    new-instance v0, Lcom/android/calendar/alerts/AlertAdapter;

    const v1, 0x7f040006

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/alerts/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    .line 210
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 211
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0e000f

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 231
    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 232
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "AlertActivity"

    const-string v1, "Cursor#requery() failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    iput-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 246
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 248
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 251
    :cond_0
    return-void
.end method
