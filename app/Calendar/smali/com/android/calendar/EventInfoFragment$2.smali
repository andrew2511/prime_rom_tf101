.class Lcom/android/calendar/EventInfoFragment$2;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 460
    .local v0, deleteHelper:Lcom/android/calendar/DeleteEventHelper;
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$1500(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v5}, Lcom/android/calendar/EventInfoFragment;->access$800(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v5

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v8}, Lcom/android/calendar/EventInfoFragment;->access$1700(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_0
.end method
