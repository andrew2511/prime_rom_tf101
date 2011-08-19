.class Lcom/android/calendar/event/EditEventView$3;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 950
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$3;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$3;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0, p2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 953
    return-void
.end method
