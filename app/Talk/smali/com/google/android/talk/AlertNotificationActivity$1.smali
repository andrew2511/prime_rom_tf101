.class Lcom/google/android/talk/AlertNotificationActivity$1;
.super Landroid/os/Handler;
.source "AlertNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AlertNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/KeyguardManager;

    invoke-static {v0, p0}, Lcom/google/android/talk/AlertNotificationActivity;->access$000(Lcom/google/android/talk/AlertNotificationActivity;Landroid/app/KeyguardManager;)V

    .line 47
    return-void
.end method
