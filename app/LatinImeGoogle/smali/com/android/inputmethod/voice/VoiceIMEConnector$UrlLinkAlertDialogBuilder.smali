.class Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "VoiceIMEConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlLinkAlertDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method static synthetic access$600(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private replaceURLSpan(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 239
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 240
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 241
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 242
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 243
    new-instance v8, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, p0, v4}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v1
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 252
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$1;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 262
    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;

    .line 263
    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->replaceURLSpan(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method
