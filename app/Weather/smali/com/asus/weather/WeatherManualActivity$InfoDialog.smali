.class public Lcom/asus/weather/WeatherManualActivity$InfoDialog;
.super Landroid/app/DialogFragment;
.source "WeatherManualActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherManualActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherManualActivity;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherManualActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 214
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 215
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->cancelDialog()V

    .line 216
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 204
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 205
    const v2, 0x7f050022

    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 206
    const v2, 0x7f050021

    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    return-object v1
.end method
