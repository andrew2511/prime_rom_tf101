.class interface abstract Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;
.super Ljava/lang/Object;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ServiceCallbackWrapper"
.end annotation


# virtual methods
.method public abstract call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
