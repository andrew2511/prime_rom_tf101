.class interface abstract Lcom/amazon/foundation/internal/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;
    }
.end annotation


# virtual methods
.method public abstract executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V
.end method

.method public abstract getCallbacksArray()[Ljava/lang/Object;
.end method

.method public abstract isRegistered(Ljava/lang/Object;)Z
.end method

.method public abstract register(Ljava/lang/Object;)Z
.end method

.method public abstract unregister(Ljava/lang/Object;)Z
.end method
