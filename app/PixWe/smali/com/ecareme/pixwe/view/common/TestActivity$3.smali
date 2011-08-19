.class Lcom/ecareme/pixwe/view/common/TestActivity$3;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/TestActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$4(Lcom/ecareme/pixwe/view/common/TestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$5(Lcom/ecareme/pixwe/view/common/TestActivity;Ljava/lang/String;)J

    .line 129
    return-void
.end method
