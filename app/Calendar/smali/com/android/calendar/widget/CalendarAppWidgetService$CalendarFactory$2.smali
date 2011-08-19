.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;
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
    .line 134
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 140
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/CursorLoader;->forceLoad()V

    .line 142
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
