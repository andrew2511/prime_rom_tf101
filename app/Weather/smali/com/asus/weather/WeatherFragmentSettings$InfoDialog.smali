.class public Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;
.super Landroid/app/DialogFragment;
.source "WeatherFragmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherFragmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherFragmentSettings;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 771
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 772
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 773
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherFragmentSettings;->cancelDialog()V

    .line 774
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 759
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 760
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 761
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 762
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 763
    const v2, 0x7f050020

    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 764
    const v2, 0x7f05001f

    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    return-object v1
.end method
