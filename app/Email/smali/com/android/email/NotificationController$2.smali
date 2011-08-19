.class Lcom/android/email/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->showNewMessageNotification(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;

.field final synthetic val$accountId:J

.field final synthetic val$unseenMessageCount:I


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    iput-wide p2, p0, Lcom/android/email/NotificationController$2;->val$accountId:J

    iput p4, p0, Lcom/android/email/NotificationController$2;->val$unseenMessageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    iget-wide v2, p0, Lcom/android/email/NotificationController$2;->val$accountId:J

    iget v4, p0, Lcom/android/email/NotificationController$2;->val$unseenMessageCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/email/NotificationController;->createNewMessageNotification(JI)Landroid/app/Notification;

    move-result-object v0

    .line 179
    .local v0, n:Landroid/app/Notification;
    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    invoke-static {v1}, Lcom/android/email/NotificationController;->access$100(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    iget-wide v3, p0, Lcom/android/email/NotificationController$2;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;J)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
