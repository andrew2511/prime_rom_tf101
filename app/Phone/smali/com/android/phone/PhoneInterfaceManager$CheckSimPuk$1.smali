.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 524
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 525
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 537
    :goto_0
    return-void

    .line 527
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SUPPLY_PUK_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z

    .line 530
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z

    .line 531
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 533
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 534
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 529
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 525
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
