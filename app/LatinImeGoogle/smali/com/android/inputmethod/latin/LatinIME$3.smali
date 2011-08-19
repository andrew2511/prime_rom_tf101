.class Lcom/android/inputmethod/latin/LatinIME$3;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "di"
    .parameter "position"

    .prologue
    .line 2265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2266
    packed-switch p2, :pswitch_data_0

    .line 2274
    :goto_0
    return-void

    .line 2268
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$1200(Lcom/android/inputmethod/latin/LatinIME;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 2271
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0

    .line 2266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
