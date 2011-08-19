.class Lcom/android/calendar/DayView$DismissPopup;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4286
    iput-object p1, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2700(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4290
    iget-object v0, p0, Lcom/android/calendar/DayView$DismissPopup;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2700(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4292
    :cond_0
    return-void
.end method
