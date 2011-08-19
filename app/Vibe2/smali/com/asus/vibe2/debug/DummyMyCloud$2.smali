.class Lcom/asus/vibe2/debug/DummyMyCloud$2;
.super Landroid/content/BroadcastReceiver;
.source "DummyMyCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/debug/DummyMyCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/debug/DummyMyCloud;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    const-string v1, "com.asus.vibe.QUERY_RESULT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, success:Z
    iget-object v1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    const-string v2, "com.asus.vibe.MAINLIST_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$002(Lcom/asus/vibe2/debug/DummyMyCloud;[Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-static {v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$100(Lcom/asus/vibe2/debug/DummyMyCloud;)V

    .line 94
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Failed! Retry?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;

    invoke-direct {v3, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/asus/vibe2/debug/DummyMyCloud$2$2;

    invoke-direct {v3, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$2$2;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/asus/vibe2/debug/DummyMyCloud$2$1;

    invoke-direct {v2, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$2$1;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud$2;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
