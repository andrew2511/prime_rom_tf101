.class Lcom/google/android/gm/HtmlConversationActivity$3;
.super Ljava/lang/Object;
.source "HtmlConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationActivity;->onConversationLoadError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity$3;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity$3;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationActivity;->access$400(Lcom/google/android/gm/HtmlConversationActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->retryLoad()V

    .line 363
    return-void
.end method
