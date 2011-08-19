.class Lcom/google/android/gm/HtmlConversationActivity$4;
.super Ljava/lang/Object;
.source "HtmlConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 366
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity$4;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity$4;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationActivity;->finish()V

    .line 369
    return-void
.end method
