.class public Lcom/layar/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/layar/util/UiUtils;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/UiUtils;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dissconnectPromtDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "context"
    .parameter "type"
    .parameter "positiveListener"

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :goto_0
    return-void

    .line 37
    :cond_0
    const v2, 0x7f090129

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    const v3, 0x7f090128

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 41
    const-string v3, "%type%"

    invoke-static {p0, p1}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 43
    const v3, 0x7f09001c

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 44
    const v3, 0x7f09001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static getButtonRow(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "textId"
    .parameter "arrow"
    .parameter "listener"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/layar/util/UiUtils;->getButtonRow(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonRow(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "text"
    .parameter "arrow"
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, newArrow:Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, result:Landroid/widget/Button;
    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 72
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 73
    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget v3, Lcom/layar/App;->DENSITY:F

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 76
    .local v1, padding:I
    invoke-virtual {v2, v1, v6, v1, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 77
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v2

    .line 69
    .end local v0           #newArrow:Landroid/graphics/drawable/Drawable;
    .end local v1           #padding:I
    .end local v2           #result:Landroid/widget/Button;
    :cond_0
    move-object v0, p2

    .restart local v0       #newArrow:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getDateString(Landroid/content/Context;IILandroid/text/format/Time;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "nowYear"
    .parameter "nowDay"
    .parameter "date"

    .prologue
    .line 83
    iget v0, p3, Landroid/text/format/Time;->yearDay:I

    .line 84
    .local v0, dateDay:I
    iget v1, p3, Landroid/text/format/Time;->year:I

    .line 86
    .local v1, dateYear:I
    if-eq v1, p1, :cond_0

    .line 87
    const-string v3, "%A, %B %d"

    invoke-virtual {p3, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, resultText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 88
    .end local v2           #resultText:Ljava/lang/String;
    :cond_0
    if-ne v0, p2, :cond_1

    .line 89
    const v3, 0x7f09002f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #resultText:Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v2           #resultText:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ne v0, v3, :cond_2

    .line 91
    const v3, 0x7f090030

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #resultText:Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v2           #resultText:Ljava/lang/String;
    :cond_2
    const-string v3, "%A, %B %d"

    invoke-virtual {p3, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #resultText:Ljava/lang/String;
    goto :goto_0
.end method

.method public static showRemoveAllDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "context"
    .parameter "messageResId"
    .parameter "positiveListener"

    .prologue
    .line 23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 25
    if-lez p1, :cond_0

    move v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 27
    const v2, 0x7f09001c

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 28
    const v2, 0x7f09001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 30
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 31
    return-void

    .line 25
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f09005a

    goto :goto_0
.end method

.method public static showTwitterLoginByEmailDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "positive"

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const v1, 0x7f090016

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const v1, 0x7f090019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 57
    return-void
.end method
