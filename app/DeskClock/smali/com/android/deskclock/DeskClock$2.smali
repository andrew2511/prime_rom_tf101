.class Lcom/android/deskclock/DeskClock$2;
.super Landroid/os/Handler;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 185
    new-instance v0, Lcom/android/deskclock/DeskClock$2$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$2$1;-><init>(Lcom/android/deskclock/DeskClock$2;)V

    invoke-virtual {v0}, Lcom/android/deskclock/DeskClock$2$1;->start()V

    .line 187
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    const-wide/32 v1, 0x36ee80

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/DeskClock;->access$500(Lcom/android/deskclock/DeskClock;J)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$600(Lcom/android/deskclock/DeskClock;)V

    goto :goto_0

    .line 190
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_3

    .line 191
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$700(Lcom/android/deskclock/DeskClock;)V

    goto :goto_0

    .line 192
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$800(Lcom/android/deskclock/DeskClock;)V

    goto :goto_0
.end method
