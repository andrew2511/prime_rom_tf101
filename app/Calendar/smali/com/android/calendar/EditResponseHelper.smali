.class public Lcom/android/calendar/EditResponseHelper;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mParent:Landroid/app/Activity;

.field private mWhichEvents:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    .line 57
    new-instance v0, Lcom/android/calendar/EditResponseHelper$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EditResponseHelper$1;-><init>(Lcom/android/calendar/EditResponseHelper;)V

    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 40
    iput-object p1, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/EditResponseHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/EditResponseHelper;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public getWhichEvents()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/calendar/EditResponseHelper;->mWhichEvents:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    return-void
.end method

.method public showDialog(I)V
    .locals 6
    .parameter "whichEvents"

    .prologue
    const/4 v5, -0x1

    .line 72
    iget-object v2, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v2, :cond_0

    .line 73
    iput-object p0, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000f

    iget-object v4, p0, Lcom/android/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 80
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/calendar/EditResponseHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 82
    if-ne p1, v5, :cond_1

    .line 85
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 86
    .local v1, ok:Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    .end local v1           #ok:Landroid/widget/Button;
    :cond_1
    return-void
.end method
