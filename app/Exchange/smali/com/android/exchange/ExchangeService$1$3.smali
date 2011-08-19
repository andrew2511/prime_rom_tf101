.class Lcom/android/exchange/ExchangeService$1$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->syncMailboxListStatus(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$accountId:J

.field final synthetic val$progress:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$3;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$3;->val$accountId:J

    iput p4, p0, Lcom/android/exchange/ExchangeService$1$3;->val$status:I

    iput p5, p0, Lcom/android/exchange/ExchangeService$1$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$1$3;->val$accountId:J

    iget v2, p0, Lcom/android/exchange/ExchangeService$1$3;->val$status:I

    iget v3, p0, Lcom/android/exchange/ExchangeService$1$3;->val$progress:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V

    .line 315
    return-void
.end method
