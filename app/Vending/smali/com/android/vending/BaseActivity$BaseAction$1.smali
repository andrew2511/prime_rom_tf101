.class Lcom/android/vending/BaseActivity$BaseAction$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$BaseAction;->executeSubAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseActivity$BaseAction;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction$1;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction$1;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$BaseAction;->getSubAction()Lcom/android/vending/BaseActivity$BaseAction;

    move-result-object v0

    .line 1596
    .local v0, subAction:Lcom/android/vending/BaseActivity$BaseAction;
    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 1599
    :cond_0
    return-void
.end method
