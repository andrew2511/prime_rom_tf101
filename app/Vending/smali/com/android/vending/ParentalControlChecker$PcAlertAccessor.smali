.class Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;
.super Ljava/lang/Object;
.source "ParentalControlChecker.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/ParentalControlChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PcAlertAccessor"
.end annotation


# instance fields
.field private mParentalControlLandingPage:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/vending/ParentalControlChecker;


# direct methods
.method public constructor <init>(Lcom/android/vending/ParentalControlChecker;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "landingPage"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->mParentalControlLandingPage:Landroid/net/Uri;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->mParentalControlLandingPage:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v1}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070075

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070076

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002b

    new-instance v3, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$2;

    invoke-direct {v3, p0}, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$2;-><init>(Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->mParentalControlLandingPage:Landroid/net/Uri;

    if-eqz v2, :cond_0

    const v2, 0x7f070077

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;

    invoke-direct {v3, p0}, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;-><init>(Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 128
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 130
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 132
    return-void
.end method
