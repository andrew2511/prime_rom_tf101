.class Lcom/android/calendar/CalendarController$1;
.super Lcom/android/calendar/AsyncQueryService;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarController;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 215
    new-instance v0, Lcom/android/calendar/CalendarController$RefreshInBackground;

    iget-object v1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/CalendarController$RefreshInBackground;-><init>(Lcom/android/calendar/CalendarController;Lcom/android/calendar/CalendarController$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController$RefreshInBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method
