.class Lcom/android/exchange/ExchangeService$SyncError;
.super Ljava/lang/Object;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncError"
.end annotation


# instance fields
.field fatal:Z

.field holdDelay:J

.field holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;IZ)V
    .locals 4
    .parameter
    .parameter "_reason"
    .parameter "_fatal"

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncError;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 952
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 956
    iput p2, p0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    .line 957
    iput-boolean p3, p0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 958
    return-void
.end method


# virtual methods
.method escalate()V
    .locals 4

    .prologue
    .line 964
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 965
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 967
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 968
    return-void
.end method
