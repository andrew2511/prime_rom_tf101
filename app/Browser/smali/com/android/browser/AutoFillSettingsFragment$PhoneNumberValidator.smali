.class Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutoFillSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    .local v1, phoneNumberLength:I
    const-string v3, "[\\s\\.\\(\\)-]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .local v2, strippedPhoneNumberLength:I
    if-lez v1, :cond_0

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v4}, Lcom/android/browser/AutoFillSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v3}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 87
    return-void

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 90
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 93
    return-void
.end method
