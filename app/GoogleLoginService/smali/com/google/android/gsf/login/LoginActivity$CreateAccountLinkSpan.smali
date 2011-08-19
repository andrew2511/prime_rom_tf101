.class Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateAccountLinkSpan"
.end annotation


# instance fields
.field private mParent:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    .line 364
    return-void
.end method

.method static linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/Annotation;

    invoke-virtual {v1, v4, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 381
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    array-length v3, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 383
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 385
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 386
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 387
    new-instance v8, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;

    invoke-direct {v8, p0}, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    .line 388
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v2, v8, v7, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v5

    .line 390
    const-string v5, "GoogleLoginService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to convert value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to a number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    const-class v3, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method
