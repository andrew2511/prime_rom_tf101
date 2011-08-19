.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 504
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mDone:Z

    .line 505
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mResult:Z

    .line 514
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 515
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mResult:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 546
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 548
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 546
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 553
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 557
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 560
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 561
    :catch_1
    move-exception v1

    .line 563
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 567
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 520
    monitor-enter p0

    .line 521
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->mHandler:Landroid/os/Handler;

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
