.class Lcom/android/browser/AutoFillSettingsFragment$2;
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
    .line 165
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "button"

    .prologue
    .line 167
    new-instance v0, Landroid/webkit/WebSettings$AutoFillProfile;

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v1}, Lcom/android/browser/AutoFillSettingsFragment;->access$300(Lcom/android/browser/AutoFillSettingsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v2}, Lcom/android/browser/AutoFillSettingsFragment;->access$400(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$500(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v4}, Lcom/android/browser/AutoFillSettingsFragment;->access$600(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v5}, Lcom/android/browser/AutoFillSettingsFragment;->access$700(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v6}, Lcom/android/browser/AutoFillSettingsFragment;->access$800(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v7}, Lcom/android/browser/AutoFillSettingsFragment;->access$900(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v8}, Lcom/android/browser/AutoFillSettingsFragment;->access$1000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v9}, Lcom/android/browser/AutoFillSettingsFragment;->access$1100(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v10}, Lcom/android/browser/AutoFillSettingsFragment;->access$1200(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v11}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Landroid/webkit/WebSettings$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v0, newProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$1300(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/browser/BrowserSettings;->setAutoFillProfile(Landroid/content/Context;Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 182
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment$2;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v1}, Lcom/android/browser/AutoFillSettingsFragment;->access$1400(Lcom/android/browser/AutoFillSettingsFragment;)V

    .line 183
    return-void
.end method
