.class Lcom/android/exchange/ExchangeService$MailboxObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$MailboxObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 879
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 880
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 885
    if-nez p1, :cond_0

    .line 886
    const-string v0, "mailbox changed"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 888
    :cond_0
    return-void
.end method
