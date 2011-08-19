.class Lnet/yostore/aws/view/present/DlQueueActivity$1;
.super Ljava/lang/Object;
.source "DlQueueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/DlQueueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/DlQueueActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/DlQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/DlQueueActivity$1;->this$0:Lnet/yostore/aws/view/present/DlQueueActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lnet/yostore/aws/view/present/DlQueueActivity$1;->this$0:Lnet/yostore/aws/view/present/DlQueueActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/present/DlQueueActivity;->doTaggle()V

    .line 59
    return-void
.end method
