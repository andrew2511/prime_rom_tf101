.class Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;
.super Ljava/lang/Object;
.source "Throttle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Throttle$MyTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/Throttle$MyTimerTask;


# direct methods
.method private constructor <init>(Lcom/android/email/Throttle$MyTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/email/Throttle$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Throttle$MyTimerTask;Lcom/android/email/Throttle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/android/email/Throttle$MyTimerTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/email/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/android/email/Throttle$MyTimerTask;->this$0:Lcom/android/email/Throttle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/Throttle;->access$302(Lcom/android/email/Throttle;Lcom/android/email/Throttle$MyTimerTask;)Lcom/android/email/Throttle$MyTimerTask;

    .line 166
    iget-object v0, p0, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/email/Throttle$MyTimerTask;

    invoke-static {v0}, Lcom/android/email/Throttle$MyTimerTask;->access$400(Lcom/android/email/Throttle$MyTimerTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/email/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/android/email/Throttle$MyTimerTask;->this$0:Lcom/android/email/Throttle;

    invoke-static {v0}, Lcom/android/email/Throttle;->access$500(Lcom/android/email/Throttle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_0
    return-void
.end method
