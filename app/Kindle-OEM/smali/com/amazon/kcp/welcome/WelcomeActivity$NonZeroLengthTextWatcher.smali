.class final Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/welcome/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonZeroLengthTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

.field private final watched:Landroid/widget/EditText;

.field private watchedNonZeroLength:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/welcome/WelcomeActivity;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter "watched"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watched:Landroid/widget/EditText;

    .line 320
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watched:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watched:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watchedNonZeroLength:Z

    .line 322
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 332
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watchedNonZeroLength:Z

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->this$0:Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->access$500(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    .line 334
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 340
    return-void
.end method

.method public isWatchedNonZeroLength()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->watchedNonZeroLength:Z

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 346
    return-void
.end method
