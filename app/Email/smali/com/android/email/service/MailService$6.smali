.class Lcom/android/email/service/MailService$6;
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

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$nc:Lcom/android/email/NotificationController;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Lcom/android/email/NotificationController;Landroid/app/AlarmManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$6;->val$nc:Lcom/android/email/NotificationController;

    iput-object p3, p0, Lcom/android/email/service/MailService$6;->val$alarmManager:Landroid/app/AlarmManager;

    iput p4, p0, Lcom/android/email/service/MailService$6;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->val$nc:Lcom/android/email/NotificationController;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 332
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    .line 334
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iget-object v1, p0, Lcom/android/email/service/MailService$6;->val$alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 335
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$6;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 336
    return-void
.end method
