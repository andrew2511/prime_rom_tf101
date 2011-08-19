.class Lnet/yostore/aws/view/present/PlayerActivity$12;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->changeShuffleMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$12;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1198
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$12;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$18(Lnet/yostore/aws/view/present/PlayerActivity;I)V

    .line 1199
    return-void
.end method
