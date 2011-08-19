.class Lcom/android/calendar/event/EditEventFragment$1;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;

.field final synthetic val$isPCSyncAccount:Z

.field final synthetic val$notSynced:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$isPCSyncAccount:Z

    iput-boolean p3, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$notSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 613
    if-nez p2, :cond_4

    .line 616
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$isPCSyncAccount:Z

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput v3, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$notSynced:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    .line 628
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 629
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventFragment;->access$500(Lcom/android/calendar/event/EditEventFragment;)V

    .line 630
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$notSynced:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_3
    iput v1, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_3

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_1

    .line 622
    :cond_4
    if-ne p2, v4, :cond_6

    .line 623
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment$1;->val$notSynced:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput v1, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_4

    .line 624
    :cond_6
    if-ne p2, v2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput v2, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2
.end method
