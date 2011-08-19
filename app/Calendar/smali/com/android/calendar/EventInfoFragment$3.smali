.class Lcom/android/calendar/EventInfoFragment$3;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
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
    .line 466
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1800(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1902(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$3;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->dismiss()V

    goto :goto_0
.end method
