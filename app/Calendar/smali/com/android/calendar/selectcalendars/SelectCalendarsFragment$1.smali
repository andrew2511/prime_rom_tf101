.class Lcom/android/calendar/selectcalendars/SelectCalendarsFragment$1;
.super Lcom/android/calendar/AsyncQueryService;
.source "SelectCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment$1;->this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;

    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment$1;->this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;

    invoke-static {v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->access$000(Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 83
    return-void
.end method
