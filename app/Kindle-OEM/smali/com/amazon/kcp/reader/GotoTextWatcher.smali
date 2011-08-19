.class Lcom/amazon/kcp/reader/GotoTextWatcher;
.super Ljava/lang/Object;
.source "GotoTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final maxLength:I

.field private oldString:Ljava/lang/CharSequence;

.field private revertText:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "maxLength"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->maxLength:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    .line 27
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 36
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 48
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    if-lt v0, v2, :cond_0

    iget v1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->maxLength:I

    if-gt v0, v1, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
