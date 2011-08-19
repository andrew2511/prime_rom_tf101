.class Lcom/aws/account/TestMain$2;
.super Ljava/lang/Object;
.source "TestMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/account/TestMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/account/TestMain;


# direct methods
.method constructor <init>(Lcom/aws/account/TestMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/account/TestMain$2;->this$0:Lcom/aws/account/TestMain;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aws/account/TestMain$2;->this$0:Lcom/aws/account/TestMain;

    iget-object v1, p0, Lcom/aws/account/TestMain$2;->this$0:Lcom/aws/account/TestMain;

    iget-object v1, v1, Lcom/aws/account/TestMain;->ctx:Landroid/content/Context;

    const-class v2, Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0, v1, v2}, Lcom/aws/account/TestMain;->access$0(Lcom/aws/account/TestMain;Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    return-void
.end method
