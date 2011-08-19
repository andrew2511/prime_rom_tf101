.class Lcom/android/calendar/DayView$ContinueScroll;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4228
    iput-object p1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4228
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4230
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Z)Z

    .line 4231
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$200(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4232
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$300(Lcom/android/calendar/DayView;)V

    .line 4233
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4248
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 4230
    goto :goto_0

    .line 4237
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2402(Lcom/android/calendar/DayView;I)I

    .line 4239
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)I

    move-result v0

    if-gez v0, :cond_3

    .line 4240
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$2402(Lcom/android/calendar/DayView;I)I

    .line 4245
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2600(Lcom/android/calendar/DayView;)V

    .line 4246
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/DayView;->post(Ljava/lang/Runnable;)Z

    .line 4247
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    goto :goto_1

    .line 4241
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 4242
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2402(Lcom/android/calendar/DayView;I)I

    goto :goto_2
.end method
