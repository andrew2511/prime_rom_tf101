.class Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader.1;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader.1;"
    const/4 v1, 0x0

    .line 505
    .local v1, savedcl:Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 507
    .local v2, t:Ljava/lang/Thread;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 508
    .local v0, cl:Ljava/lang/ClassLoader;
    iget-object v3, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #getter for: Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;
    invoke-static {v3}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$100(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v3, v0, :cond_1b

    .line 509
    iget-object v3, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #getter for: Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;
    invoke-static {v3}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$100(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 510
    move-object v1, v0

    .line 512
    :cond_1b
    iget-object v3, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #getter for: Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;
    invoke-static {v3}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$200(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2b

    move-result-object v3

    .line 514
    if-eqz v1, :cond_2a

    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2a
    return-object v3

    .line 514
    .end local v0           #cl:Ljava/lang/ClassLoader;
    :catchall_2b
    move-exception v3

    if-eqz v1, :cond_31

    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_31
    throw v3
.end method
