.class Lcom/asus/UpdateLauncher/UpdateLauncher$11;
.super Ljava/lang/Object;
.source "UpdateLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/UpdateLauncher/UpdateLauncher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;


# direct methods
.method constructor <init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$11;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$11;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$200(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    .line 837
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$11;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-virtual {v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    .line 838
    return-void
.end method
