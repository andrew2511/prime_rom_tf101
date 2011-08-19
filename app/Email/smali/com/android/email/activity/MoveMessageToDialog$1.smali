.class Lcom/android/email/activity/MoveMessageToDialog$1;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAllowingStateLoss()V

    .line 154
    :cond_0
    return-void
.end method
