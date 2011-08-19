.class Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;
.super Ljava/lang/Object;
.source "AttendeesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

.field final synthetic val$item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;->this$1:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    iput-object p2, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;->val$item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;->this$1:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    iget-object v0, v0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;->val$item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    invoke-static {v0, v1}, Lcom/android/calendar/event/AttendeesView;->access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 368
    return-void
.end method
