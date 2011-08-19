.class Lcom/ecareme/pixwe/view/common/TestActivity$1;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/TestActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/view/common/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "processing..."

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$3(Lcom/ecareme/pixwe/view/common/TestActivity;Landroid/app/ProgressDialog;)V

    .line 85
    new-instance v0, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-direct {v0, v1, v4}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method
