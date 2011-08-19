.class Lnet/yostore/aws/view/navigate/PlayListActivity$9;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->initPlayControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$9;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1151
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$9;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goPlayList(Landroid/content/Context;)V

    .line 1152
    return-void
.end method
