.class Lcom/google/android/gm/HtmlConversationFragment$5;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->showAttachmentTooLargeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$5;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2245
    packed-switch p2, :pswitch_data_0

    .line 2253
    :goto_0
    return-void

    .line 2247
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$5;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2250
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2245
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
