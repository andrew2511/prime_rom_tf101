.class Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory$VendingFactoryThread;
.super Ljava/lang/Thread;
.source "AsynchRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VendingFactoryThread"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 131
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 132
    return-void
.end method
