.class Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask$1;
.super Ljava/lang/Object;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;-><init>(Lcom/layar/PaymentProviderChooserActivity;Landroid/content/Context;Lcom/layar/data/user/PaymentProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;


# direct methods
.method constructor <init>(Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask$1;->this$1:Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask$1;->this$1:Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->cancel(Z)Z

    .line 383
    return-void
.end method
