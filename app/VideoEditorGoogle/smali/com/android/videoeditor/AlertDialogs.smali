.class public Lcom/android/videoeditor/AlertDialogs;
.super Ljava/lang/Object;
.source "AlertDialogs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "iconId"
    .parameter "content"
    .parameter "positive"
    .parameter "positiveListener"
    .parameter "negative"
    .parameter "negativeListener"
    .parameter "cancelListener"
    .parameter "cancelable"

    .prologue
    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0, p8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0, p9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 73
    .local v1, dialog:Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    return-object v1
.end method

.method public static createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;II)Landroid/app/AlertDialog;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "positiveButtonText"
    .parameter "positiveListener"
    .parameter "negativeButtonText"
    .parameter "negativeListener"
    .parameter "cancelListener"
    .parameter "inputType"
    .parameter "maxChars"

    .prologue
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    .line 100
    .local p0, vi:Landroid/view/LayoutInflater;
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 101
    .local p0, myView:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const p1, 0x7f08000c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p1
    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 106
    .local p1, textInput:Landroid/widget/EditText;
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 p0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .end local p0           #myView:Landroid/view/View;
    move-result p2

    .end local p2
    invoke-virtual {p1, p0, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 111
    :cond_0
    if-lez p9, :cond_1

    .line 112
    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    .line 113
    .local p0, filters:[Landroid/text/InputFilter;
    const/4 p2, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p0, p2

    .line 114
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 117
    .end local p0           #filters:[Landroid/text/InputFilter;
    :cond_1
    if-eqz p8, :cond_2

    .line 118
    invoke-virtual {p1, p8}, Landroid/widget/EditText;->setInputType(I)V

    .line 122
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 126
    .local p0, dialog:Landroid/app/AlertDialog;
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    new-instance p2, Lcom/android/videoeditor/AlertDialogs$1;

    invoke-direct {p2, p0}, Lcom/android/videoeditor/AlertDialogs$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    return-object p0
.end method
