.class Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VendingThreadFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory$VendingFactoryThread;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AsynchRequestRunner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter "r"

    .prologue
    .line 116
    new-instance v0, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory$VendingFactoryThread;

    invoke-direct {v0, p1}, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory$VendingFactoryThread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
