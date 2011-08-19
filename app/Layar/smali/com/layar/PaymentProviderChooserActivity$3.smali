.class Lcom/layar/PaymentProviderChooserActivity$3;
.super Ljava/lang/Object;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/PaymentProviderChooserActivity;->retrievePaymentProviders()V
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
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$3;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$3;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/PaymentProviderChooserActivity;->access$2(Lcom/layar/PaymentProviderChooserActivity;)V

    .line 146
    return-void
.end method
