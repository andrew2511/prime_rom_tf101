.class Lcom/asus/UpdateLauncher/UpdateLauncher$12;
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
    .line 826
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$500(Lcom/asus/UpdateLauncher/UpdateLauncher;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v2}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$400(Lcom/asus/UpdateLauncher/UpdateLauncher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    .line 829
    .local v0, temp_updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    iget-object v2, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$602(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    iget-object v2, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$702(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$12;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$800(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    .line 832
    return-void
.end method
