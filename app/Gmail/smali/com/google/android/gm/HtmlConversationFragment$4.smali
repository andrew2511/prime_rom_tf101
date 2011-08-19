.class Lcom/google/android/gm/HtmlConversationFragment$4;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->showDownloadingDialog()V
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
    .line 2218
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$4;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$4;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$2200(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 2222
    return-void
.end method
