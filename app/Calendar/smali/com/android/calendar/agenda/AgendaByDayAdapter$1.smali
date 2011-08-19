.class Lcom/android/calendar/agenda/AgendaByDayAdapter$1;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaByDayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->access$100(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->access$002(Lcom/android/calendar/agenda/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-static {v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->access$000(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->access$202(Lcom/android/calendar/agenda/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 65
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method
