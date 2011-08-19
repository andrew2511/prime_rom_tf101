.class final Lcom/nvidia/tegrazone/NoInternetActivity$1;
.super Ljava/lang/Object;
.source "NoInternetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/NoInternetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/NoInternetActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/NoInternetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/NoInternetActivity$1;->this$0:Lcom/nvidia/tegrazone/NoInternetActivity;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nvidia/tegrazone/NoInternetActivity$1;->this$0:Lcom/nvidia/tegrazone/NoInternetActivity;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/NoInternetActivity;->killApp()V

    .line 29
    return-void
.end method
