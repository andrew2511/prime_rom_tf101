.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$8;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initPlayControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$8;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 493
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$8;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$15(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goPlayList(Landroid/content/Context;)V

    .line 494
    return-void
.end method
