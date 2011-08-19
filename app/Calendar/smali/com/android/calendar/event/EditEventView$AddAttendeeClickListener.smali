.class Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAttendeeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EditEventView;Lcom/android/calendar/event/EditEventView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 238
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v1, v1, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    return-void
.end method
