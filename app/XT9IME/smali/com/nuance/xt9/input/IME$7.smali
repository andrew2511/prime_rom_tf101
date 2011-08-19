.class Lcom/nuance/xt9/input/IME$7;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/IME;->showOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$7;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "position"

    .prologue
    .line 1829
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1830
    packed-switch p2, :pswitch_data_0

    .line 1839
    .end local p0
    :goto_0
    return-void

    .line 1832
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$7;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$300(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 1835
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$7;->this$0:Lcom/nuance/xt9/input/IME;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
