.class Lcom/android/inputmethod/voice/VoiceIMEConnector$5;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

.field final synthetic val$configuration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->val$configuration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 517
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 518
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$702(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)Z

    .line 519
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 520
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v6

    .line 522
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 523
    .local v4, p:Landroid/view/ViewParent;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 524
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #p:Landroid/view/ViewParent;
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 527
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 533
    .local v3, keyboardView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 534
    const v7, 0x7f070027

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 535
    .local v5, popupLayout:Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 537
    .local v1, displayHeight:I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    .local v0, currentHeight:I
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    .line 539
    .local v2, keyboardHeight:I
    if-gt v2, v0, :cond_1

    div-int/lit8 v7, v1, 0x6

    if-le v2, v7, :cond_2

    .line 541
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 544
    .end local v0           #currentHeight:I
    .end local v1           #displayHeight:I
    .end local v2           #keyboardHeight:I
    .end local v5           #popupLayout:Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 545
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 547
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->val$configuration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_3

    .line 548
    iget-object v7, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v7}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$5;->val$configuration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/voice/VoiceInput;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 550
    :cond_3
    return-void
.end method
