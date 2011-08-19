.class Lcom/android/exchange/ExchangeService$1$2;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->sendMessageStatus(JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$messageId:J

.field final synthetic val$progress:I

.field final synthetic val$status:I

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$2;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$2;->val$messageId:J

    iput-object p4, p0, Lcom/android/exchange/ExchangeService$1$2;->val$subject:Ljava/lang/String;

    iput p5, p0, Lcom/android/exchange/ExchangeService$1$2;->val$status:I

    iput p6, p0, Lcom/android/exchange/ExchangeService$1$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 6
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$1$2;->val$messageId:J

    iget-object v3, p0, Lcom/android/exchange/ExchangeService$1$2;->val$subject:Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/ExchangeService$1$2;->val$status:I

    iget v5, p0, Lcom/android/exchange/ExchangeService$1$2;->val$progress:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    .line 305
    return-void
.end method
