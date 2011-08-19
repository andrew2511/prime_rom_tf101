.class Lcom/android/inputmethod/latin/LatinIME$2;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V
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
    .line 2232
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "di"
    .parameter "position"

    .prologue
    .line 2235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2236
    packed-switch p2, :pswitch_data_0

    .line 2251
    :goto_0
    return-void

    .line 2238
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2243
    const-string v1, "input_method_id"

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$1100(Lcom/android/inputmethod/latin/LatinIME;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2248
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0

    .line 2236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
