.class Lcom/android/calendar/event/EditEventView$4;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$4;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$4;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$1200(Lcom/android/calendar/event/EditEventView;)V

    .line 1010
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$4;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mReminderAddButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1011
    return-void
.end method
