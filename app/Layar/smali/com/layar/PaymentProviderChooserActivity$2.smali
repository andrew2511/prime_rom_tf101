.class Lcom/layar/PaymentProviderChooserActivity$2;
.super Ljava/lang/Object;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/PaymentProviderChooserActivity;->loginAndCheckAccountVerified()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/PaymentProviderChooserActivity;


# direct methods
.method constructor <init>(Lcom/layar/PaymentProviderChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$2;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$2;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-virtual {v0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$2;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/PaymentProviderChooserActivity;->access$3(Lcom/layar/PaymentProviderChooserActivity;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$2;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/PaymentProviderChooserActivity;->access$4(Lcom/layar/PaymentProviderChooserActivity;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$2;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/PaymentProviderChooserActivity;->access$5(Lcom/layar/PaymentProviderChooserActivity;)Lcom/layar/ActivityHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    goto :goto_0
.end method
