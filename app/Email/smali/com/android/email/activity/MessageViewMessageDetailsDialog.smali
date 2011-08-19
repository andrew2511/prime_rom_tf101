.class public Lcom/android/email/activity/MessageViewMessageDetailsDialog;
.super Landroid/app/DialogFragment;
.source "MessageViewMessageDetailsDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0f009b

    const v5, 0x7f0f0063

    .line 76
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0003

    const v4, 0x7f0f0096

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 80
    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0081

    const v4, 0x7f0f0098

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 81
    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f005f

    const v4, 0x7f0f0097

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 82
    const-string v2, "to"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0060

    const v4, 0x7f0f0099

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 83
    const-string v2, "cc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0062

    const v4, 0x7f0f009a

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 84
    const-string v2, "bcc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 85
    const-string v2, "bcc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 87
    return-object v1
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/activity/MessageViewMessageDetailsDialog;
    .locals 3
    .parameter "parent"
    .parameter "subject"
    .parameter "date"
    .parameter "from"
    .parameter "to"
    .parameter "cc"
    .parameter "bcc"

    .prologue
    .line 45
    new-instance v1, Lcom/android/email/activity/MessageViewMessageDetailsDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;-><init>()V

    .line 46
    .local v1, dialog:Lcom/android/email/activity/MessageViewMessageDetailsDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "subject"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "date"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "from"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "to"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "cc"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "bcc"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private static setText(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2
    .parameter "root"
    .parameter "text"
    .parameter "textViewId"
    .parameter "rowViewId"

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .end local p0
    :goto_0
    return-void

    .line 95
    .restart local p0
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08003f

    new-instance v3, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;-><init>(Lcom/android/email/activity/MessageViewMessageDetailsDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->initView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
