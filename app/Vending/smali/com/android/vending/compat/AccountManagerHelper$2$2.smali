.class Lcom/android/vending/compat/AccountManagerHelper$2$2;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/AccountManagerHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

.field final synthetic val$addAccountRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/AccountManagerHelper$2;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$2$2;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iput-object p2, p0, Lcom/android/vending/compat/AccountManagerHelper$2$2;->val$addAccountRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/compat/AccountManagerHelper$2$2;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2$2;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v1, v1, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v2, p0, Lcom/android/vending/compat/AccountManagerHelper$2$2;->val$addAccountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/vending/BaseActivity;->createNoAccountsDialogAccessor(Ljava/lang/Runnable;)Lcom/android/vending/controller/DialogAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/BaseActivity;->displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 117
    return-void
.end method
