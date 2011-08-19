.class Lcom/android/vending/UninstallActivity$3;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity;->setupUninstallStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$3;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$3;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$400(Lcom/android/vending/UninstallActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$3;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$400(Lcom/android/vending/UninstallActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    :cond_0
    return-void
.end method
