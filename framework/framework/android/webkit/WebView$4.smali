.class Landroid/webkit/WebView$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$remember:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Landroid/webkit/WebView$4;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$4;->val$remember:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/webkit/WebView$4;->val$remember:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1295
    return-void
.end method
