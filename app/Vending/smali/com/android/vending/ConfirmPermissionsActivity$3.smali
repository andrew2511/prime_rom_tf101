.class Lcom/android/vending/ConfirmPermissionsActivity$3;
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
    .line 106
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$3;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$3;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-virtual {v0}, Lcom/android/vending/ConfirmPermissionsActivity;->finish()V

    .line 109
    return-void
.end method
