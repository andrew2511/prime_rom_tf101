.class Lcom/android/email/NotificationController$1;
.super Lcom/android/emailcommon/utility/Utility$ForEachAccount;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected performAction(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 163
    return-void
.end method
