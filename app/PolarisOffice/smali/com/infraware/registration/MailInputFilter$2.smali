.class Lcom/infraware/registration/MailInputFilter$2;
.super Ljava/lang/Object;
.source "MailInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/MailInputFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/MailInputFilter;


# direct methods
.method constructor <init>(Lcom/infraware/registration/MailInputFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/MailInputFilter$2;->this$0:Lcom/infraware/registration/MailInputFilter;

    .line 50
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
    .line 53
    iget-object v1, p0, Lcom/infraware/registration/MailInputFilter$2;->this$0:Lcom/infraware/registration/MailInputFilter;

    invoke-static {v1}, Lcom/infraware/registration/MailInputFilter;->access$2(Lcom/infraware/registration/MailInputFilter;)I

    move-result v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 54
    .local v0, nRest:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/infraware/registration/MailInputFilter$2;->this$0:Lcom/infraware/registration/MailInputFilter;

    const v2, 0x7f0a0374

    invoke-static {v1, v2}, Lcom/infraware/registration/MailInputFilter;->access$1(Lcom/infraware/registration/MailInputFilter;I)V

    .line 57
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
