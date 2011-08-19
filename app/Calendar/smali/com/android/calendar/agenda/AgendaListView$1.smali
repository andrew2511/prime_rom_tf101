.class Lcom/android/calendar/agenda/AgendaListView$1;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaListView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView$1;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$1;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView$1;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaListView;->access$100(Lcom/android/calendar/agenda/AgendaListView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->access$002(Lcom/android/calendar/agenda/AgendaListView;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method
