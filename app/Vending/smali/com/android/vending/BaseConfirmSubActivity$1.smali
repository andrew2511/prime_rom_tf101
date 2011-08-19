.class Lcom/android/vending/BaseConfirmSubActivity$1;
.super Ljava/lang/Object;
.source "BaseConfirmSubActivity.java"

# interfaces
.implements Lcom/android/vending/controller/Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseConfirmSubActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseConfirmSubActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseConfirmSubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/vending/BaseConfirmSubActivity$1;->this$0:Lcom/android/vending/BaseConfirmSubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(ILcom/android/vending/BaseActivity;)V
    .locals 2
    .parameter "requestId"
    .parameter "activity"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vending/BaseConfirmSubActivity$1;->this$0:Lcom/android/vending/BaseConfirmSubActivity;

    invoke-virtual {v0}, Lcom/android/vending/BaseConfirmSubActivity;->getPositiveButtonId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 57
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 58
    invoke-virtual {p2}, Lcom/android/vending/BaseActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseConfirmSubActivity$1;->this$0:Lcom/android/vending/BaseConfirmSubActivity;

    invoke-virtual {v0}, Lcom/android/vending/BaseConfirmSubActivity;->getNegativeButtonId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 61
    invoke-virtual {p2}, Lcom/android/vending/BaseActivity;->finish()V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
