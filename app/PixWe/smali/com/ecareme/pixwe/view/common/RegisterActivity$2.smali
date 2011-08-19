.class Lcom/ecareme/pixwe/view/common/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->finish()V

    .line 110
    return-void
.end method
