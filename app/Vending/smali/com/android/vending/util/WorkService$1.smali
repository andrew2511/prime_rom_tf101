.class Lcom/android/vending/util/WorkService$1;
.super Ljava/lang/Thread;
.source "WorkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/WorkService;->runThreadAsService(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/WorkService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/vending/util/WorkService;Ljava/lang/Runnable;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/vending/util/WorkService$1;->this$0:Lcom/android/vending/util/WorkService;

    iput-object p2, p0, Lcom/android/vending/util/WorkService$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/vending/util/WorkService$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/vending/util/WorkService$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/WorkService$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    iget-object v0, p0, Lcom/android/vending/util/WorkService$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/util/WorkService$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 39
    return-void
.end method
