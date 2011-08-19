.class Lcom/android/vending/ConfirmPermissionsActivity$1;
.super Ljava/lang/Object;
.source "ConfirmPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ConfirmPermissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/ConfirmPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$1;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$1;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->access$200(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/ConfirmPermissionsActivity$1;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v1}, Lcom/android/vending/ConfirmPermissionsActivity;->access$100(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity$1;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v2}, Lcom/android/vending/ConfirmPermissionsActivity;->access$000(Lcom/android/vending/ConfirmPermissionsActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$1;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-static {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->access$300(Lcom/android/vending/ConfirmPermissionsActivity;)V

    .line 96
    return-void
.end method
