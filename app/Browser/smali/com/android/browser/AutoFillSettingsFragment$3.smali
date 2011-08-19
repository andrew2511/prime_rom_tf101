.class Lcom/android/browser/AutoFillSettingsFragment$3;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AutoFillSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "button"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$400(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$500(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$600(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$700(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$800(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$900(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$1000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$1100(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$1200(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v1}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$1300(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/BrowserSettings;->setAutoFillProfile(Landroid/content/Context;Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 206
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$3;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 207
    return-void
.end method
