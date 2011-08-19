.class Lcom/android/vending/compat/AccountManagerHelper$2$3;
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


# direct methods
.method constructor <init>(Lcom/android/vending/compat/AccountManagerHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$2$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/compat/AccountManagerHelper$2$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$2;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$2$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$2;

    iget v1, v1, Lcom/android/vending/compat/AccountManagerHelper$2;->val$requestCode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/BaseActivity;->onResult(IILandroid/content/Intent;)V

    .line 136
    return-void
.end method
