.class Lcom/infraware/registration/UserRegistrationActivity$2;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/UserRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$2;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 324
    const/16 v1, 0x1e

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 325
    .local v0, nRest:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/infraware/registration/UserRegistrationActivity$2;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$2;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v3, 0x7f0a0372

    invoke-virtual {v2, v3}, Lcom/infraware/registration/UserRegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$9(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
