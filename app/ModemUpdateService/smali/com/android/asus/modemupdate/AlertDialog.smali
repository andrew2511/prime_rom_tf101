.class public abstract Lcom/android/asus/modemupdate/AlertDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected ap:Lcom/android/internal/app/AlertController$AlertParams;

.field protected mContext:Landroid/content/Context;

.field protected mIntent:Landroid/content/Intent;

.field protected mService:Lcom/android/asus/modemupdate/ModemUpdateService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mService:Lcom/android/asus/modemupdate/ModemUpdateService;

    .line 16
    iput-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iput-object p0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/AlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mIntent:Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/android/asus/modemupdate/ModemUpdateService;->getDefault()Lcom/android/asus/modemupdate/ModemUpdateService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mService:Lcom/android/asus/modemupdate/ModemUpdateService;

    .line 25
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 27
    iget-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    .line 28
    iget-object v0, p0, Lcom/android/asus/modemupdate/AlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/AlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 29
    return-void
.end method
