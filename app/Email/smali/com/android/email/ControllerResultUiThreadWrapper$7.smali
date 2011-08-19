.class Lcom/android/email/ControllerResultUiThreadWrapper$7;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->deleteAccountCallback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$7;,"Lcom/android/email/ControllerResultUiThreadWrapper.7;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$7;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-wide p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$7;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$7;,"Lcom/android/email/ControllerResultUiThreadWrapper.7;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$7;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$7;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$7;->val$accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(J)V

    goto :goto_0
.end method
