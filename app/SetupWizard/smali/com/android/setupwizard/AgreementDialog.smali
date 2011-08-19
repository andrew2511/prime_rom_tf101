.class public Lcom/android/setupwizard/AgreementDialog;
.super Landroid/app/AlertDialog;
.source "AgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizard/AgreementDialog$LinkSpan;,
        Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;
    }
.end annotation


# static fields
.field private static final ANDROID_POLICIES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

.field private static final LOCAL_LOGV:Z


# instance fields
.field private final mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 49
    const-string v0, "SetupWizard"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/setupwizard/AgreementDialog;->LOCAL_LOGV:Z

    .line 219
    new-array v0, v1, [Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/setupwizard/AgreementDialog;->ANDROID_POLICIES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    return-void
.end method

.method protected constructor <init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;)V
    .locals 4
    .parameter "activity"
    .parameter "policy"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p1}, Lcom/android/setupwizard/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v1, p1}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/setupwizard/AgreementDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 248
    iget-object v1, p0, Lcom/android/setupwizard/AgreementDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {p2, v0}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->getPrettyUrl(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    const v2, 0x7f0a0020

    invoke-virtual {p1, v2}, Lcom/android/setupwizard/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    .line 251
    invoke-virtual {p2}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->getTitleResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/AgreementDialog;->setTitle(I)V

    .line 252
    const/4 v1, -0x1

    const v2, 0x7f0a000e

    invoke-virtual {p1, v2}, Lcom/android/setupwizard/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/setupwizard/AgreementDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/android/setupwizard/AgreementDialog$1;-><init>(Lcom/android/setupwizard/AgreementDialog;Lcom/android/setupwizard/BaseActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/setupwizard/AgreementDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 261
    new-instance v1, Lcom/android/setupwizard/AgreementDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizard/AgreementDialog$2;-><init>(Lcom/android/setupwizard/AgreementDialog;Lcom/android/setupwizard/BaseActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/AgreementDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 267
    iget-object v1, p0, Lcom/android/setupwizard/AgreementDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/AgreementDialog;->setView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/setupwizard/AgreementDialog;->LOCAL_LOGV:Z

    return v0
.end method

.method static linkify(Lcom/android/setupwizard/BaseActivity;I)Ljava/lang/CharSequence;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v13, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/setupwizard/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/Annotation;

    invoke-virtual {v1, v13, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 289
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 290
    array-length v3, v0

    move v4, v13

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 291
    const-string v6, "id"

    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    move v7, v13

    .line 295
    :goto_1
    :try_start_0
    sget-object v8, Lcom/android/setupwizard/AgreementDialog;->ANDROID_POLICIES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 296
    sget-object v8, Lcom/android/setupwizard/AgreementDialog;->ANDROID_POLICIES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 298
    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 299
    new-instance v10, Lcom/android/setupwizard/AgreementDialog$LinkSpan;

    sget-object v11, Lcom/android/setupwizard/AgreementDialog;->ANDROID_POLICIES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aget-object v11, v11, v7

    const/4 v12, 0x0

    invoke-direct {v10, p0, v11, v12}, Lcom/android/setupwizard/AgreementDialog$LinkSpan;-><init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;Lcom/android/setupwizard/AgreementDialog$1;)V

    .line 300
    invoke-virtual {v1, v10}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v2, v10, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 295
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 303
    :cond_1
    if-nez v13, :cond_2

    .line 304
    const-string v5, "SetupWizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such policy while creating link, id=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v5

    .line 307
    const-string v5, "SetupWizard"

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

    goto :goto_2

    .line 311
    :cond_3
    return-object v2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/setupwizard/AgreementDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/common/GoogleWebContentHelper;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
