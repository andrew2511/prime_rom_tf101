.class Lcom/android/email/service/MailService$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/email/service/MailService$2;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 210
    return-void
.end method
