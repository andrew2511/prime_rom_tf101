.class public Lcom/android/vending/AlertUtil$MutableDialogAccessor;
.super Ljava/lang/Object;
.source "AlertUtil.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AlertUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableDialogAccessor"
.end annotation


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/CharSequence;

.field private final mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeTitle:Ljava/lang/CharSequence;

.field private final mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveTitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "ctx"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    iput-object p3, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    iput-object p4, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/vending/AlertUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/AlertUtil$MutableDialogAccessor;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->setDialogStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDialogStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"
    .parameter "message"
    .parameter "positiveTitle"
    .parameter "negativeTitle"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mTitle:Ljava/lang/CharSequence;

    .line 117
    iput-object p2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 118
    iput-object p3, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveTitle:Ljava/lang/CharSequence;

    .line 119
    iput-object p4, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeTitle:Ljava/lang/CharSequence;

    .line 120
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 74
    .local v1, alertDialog:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mTitle:Ljava/lang/CharSequence;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_pos_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveTitle:Ljava/lang/CharSequence;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_neg_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeTitle:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_pos_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mPositiveTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_neg_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AlertUtil$MutableDialogAccessor;->mNegativeTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
