.class Lcom/asus/reader/ui/VibeInfo$1$1;
.super Ljava/lang/Object;
.source "VibeInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/VibeInfo$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/ui/VibeInfo$1;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/VibeInfo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/asus/reader/ui/VibeInfo$1$1;->this$1:Lcom/asus/reader/ui/VibeInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/asus/reader/ui/VibeInfo$1$1;->this$1:Lcom/asus/reader/ui/VibeInfo$1;

    iget-object v0, v0, Lcom/asus/reader/ui/VibeInfo$1;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v0}, Lcom/asus/reader/ui/VibeInfo;->access$100(Lcom/asus/reader/ui/VibeInfo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/asus/reader/ui/VibeInfo$1$1;->this$1:Lcom/asus/reader/ui/VibeInfo$1;

    iget-object v3, v3, Lcom/asus/reader/ui/VibeInfo$1;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v3}, Lcom/asus/reader/ui/VibeInfo;->access$000(Lcom/asus/reader/ui/VibeInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
