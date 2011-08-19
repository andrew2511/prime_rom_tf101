.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 131
    :cond_0
    return-void
.end method
