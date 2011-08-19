.class Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3365
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3365
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3368
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 3369
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3370
    .local v1, reason:Ljava/lang/String;
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3371
    const/4 v0, 0x1

    .line 3372
    .local v0, animate:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$2900(Lcom/android/launcher2/Launcher;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3373
    :cond_0
    const/4 v0, 0x0

    .line 3375
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 3377
    .end local v0           #animate:Z
    :cond_2
    return-void
.end method
