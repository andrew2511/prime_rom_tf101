.class Lcom/android/deskclock/AlarmKlaxon$1;
.super Landroid/os/Handler;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/Alarm;

    invoke-static {v1, v0}, Lcom/android/deskclock/AlarmKlaxon;->access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V

    .line 66
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$1;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
