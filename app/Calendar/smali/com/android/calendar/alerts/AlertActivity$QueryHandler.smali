.class Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 120
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 141
    if-eqz p3, :cond_0

    .line 142
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    .line 144
    .local v2, alarmTime:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 148
    .local v1, alarmManager:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 151
    .end local v1           #alarmManager:Landroid/app/AlarmManager;
    .end local v2           #alarmTime:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0, p3}, Lcom/android/calendar/alerts/AlertActivity;->access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 128
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/alerts/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 129
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 132
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$400(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 156
    return-void
.end method
