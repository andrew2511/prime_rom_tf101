.class Lcom/android/vending/AssetInfoActivity$3;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/util/CommentUtil$LifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSelectedPosition()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$300(Lcom/android/vending/AssetInfoActivity;)I

    move-result v0

    return v0
.end method

.method public onDialogDismissed()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity;->access$402(Lcom/android/vending/AssetInfoActivity;Z)Z

    .line 265
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity;->access$302(Lcom/android/vending/AssetInfoActivity;I)I

    .line 266
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity;->access$502(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    return-void
.end method

.method public onItemSelected(I)V
    .locals 1
    .parameter "itemPosition"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$3;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, p1}, Lcom/android/vending/AssetInfoActivity;->access$302(Lcom/android/vending/AssetInfoActivity;I)I

    .line 261
    return-void
.end method
