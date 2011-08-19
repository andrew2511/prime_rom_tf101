.class Lcom/layar/ShareSocialActivity$3;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity;->messageTextListener()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mErrorColor:I

.field private mOkColor:I

.field final synthetic this$0:Lcom/layar/ShareSocialActivity;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Lcom/layar/ShareSocialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 331
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/layar/ShareSocialActivity$3;->mOkColor:I

    .line 332
    invoke-virtual {p1}, Lcom/layar/ShareSocialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/layar/ShareSocialActivity$3;->mErrorColor:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 351
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 348
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v2}, Lcom/layar/ShareSocialActivity;->access$2(Lcom/layar/ShareSocialActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 337
    .local v1, textLength:I
    const/16 v2, 0x6e

    sub-int v0, v2, v1

    .line 338
    .local v0, limit:I
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v2}, Lcom/layar/ShareSocialActivity;->access$15(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    if-gez v0, :cond_0

    .line 340
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v2}, Lcom/layar/ShareSocialActivity;->access$15(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/layar/ShareSocialActivity$3;->mErrorColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    iget-object v3, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v3}, Lcom/layar/ShareSocialActivity;->access$0(Lcom/layar/ShareSocialActivity;)Lcom/layar/adapters/SocialsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/ShareSocialActivity;->setShareEnable(Z)V

    .line 344
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$3;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v2}, Lcom/layar/ShareSocialActivity;->access$15(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/layar/ShareSocialActivity$3;->mOkColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
