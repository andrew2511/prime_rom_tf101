.class Lcom/android/calendar/agenda/AgendaFragment$1;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v1}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment$1;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-static {v2}, Lcom/android/calendar/agenda/AgendaFragment;->access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->access$102(Lcom/android/calendar/agenda/AgendaFragment;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 60
    return-void
.end method
