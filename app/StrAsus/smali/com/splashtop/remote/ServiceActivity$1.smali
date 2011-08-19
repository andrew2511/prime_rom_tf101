.class Lcom/splashtop/remote/ServiceActivity$1;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/ServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/ServiceActivity;

.field final synthetic val$rversion:I


# direct methods
.method constructor <init>(Lcom/splashtop/remote/ServiceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/splashtop/remote/ServiceActivity$1;->this$0:Lcom/splashtop/remote/ServiceActivity;

    iput p2, p0, Lcom/splashtop/remote/ServiceActivity$1;->val$rversion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/splashtop/remote/ServiceActivity$1;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v1}, Lcom/splashtop/remote/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rversion"

    iget v3, p0, Lcom/splashtop/remote/ServiceActivity$1;->val$rversion:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    iget-object v1, p0, Lcom/splashtop/remote/ServiceActivity$1;->this$0:Lcom/splashtop/remote/ServiceActivity;

    invoke-virtual {v1}, Lcom/splashtop/remote/ServiceActivity;->finish()V

    .line 52
    return-void
.end method
