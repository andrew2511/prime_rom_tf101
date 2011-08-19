.class Lcom/infraware/registration/MailInputFilter$1;
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
    iput-object p1, p0, Lcom/infraware/registration/MailInputFilter$1;->this$0:Lcom/infraware/registration/MailInputFilter;

    .line 24
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
    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 30
    .local v0, checked:Ljava/lang/String;
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, nIdx:I
    :goto_0
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/infraware/registration/MailInputFilter$1;->this$0:Lcom/infraware/registration/MailInputFilter;

    const v3, 0x7f0a0373

    invoke-static {v2, v3}, Lcom/infraware/registration/MailInputFilter;->access$1(Lcom/infraware/registration/MailInputFilter;I)V

    move-object v2, v0

    .line 46
    .end local v1           #nIdx:I
    :goto_1
    return-object v2

    .line 34
    .restart local v1       #nIdx:I
    :cond_0
    iget-object v2, p0, Lcom/infraware/registration/MailInputFilter$1;->this$0:Lcom/infraware/registration/MailInputFilter;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/infraware/registration/MailInputFilter;->access$0(Lcom/infraware/registration/MailInputFilter;C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1           #nIdx:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
