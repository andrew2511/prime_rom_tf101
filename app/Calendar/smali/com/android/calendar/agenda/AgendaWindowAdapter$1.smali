.class Lcom/android/calendar/agenda/AgendaWindowAdapter$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method
