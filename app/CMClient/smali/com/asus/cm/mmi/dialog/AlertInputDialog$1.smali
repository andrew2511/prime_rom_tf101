.class Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "AlertInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/mmi/dialog/AlertInputDialog;->rootLayoutSetting(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/asus/cm/mmi/dialog/AlertInputDialog;


# direct methods
.method constructor <init>(Lcom/asus/cm/mmi/dialog/AlertInputDialog;I)V
    .locals 1
    .parameter
    .parameter "x0"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;->this$0:Lcom/asus/cm/mmi/dialog/AlertInputDialog;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 173
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v6, 0x1

    .line 148
    iget v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 150
    .local v1, keep:I
    if-gtz v1, :cond_0

    .line 151
    const-string v3, ""

    .line 169
    :goto_0
    return-object v3

    .line 152
    :cond_0
    sub-int v3, p3, p2

    if-lt v1, v3, :cond_2

    .line 153
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 155
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, val:I
    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;->this$0:Lcom/asus/cm/mmi/dialog/AlertInputDialog;

    iget-object v3, v3, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mContext:Landroid/content/Context;

    const-string v4, "Please input a value between 0 and 255."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 160
    add-int v3, p2, v1

    sub-int/2addr v3, v6

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 162
    .end local v2           #val:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 163
    .local v0, e:Ljava/lang/NumberFormatException;
    add-int v3, p2, v1

    sub-int/2addr v3, v6

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 169
    :cond_2
    add-int v3, p2, v1

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method
