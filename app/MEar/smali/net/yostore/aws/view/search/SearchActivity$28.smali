.class Lnet/yostore/aws/view/search/SearchActivity$28;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity;->changeRepeatMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$28;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1104
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$28;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$36(Lnet/yostore/aws/view/search/SearchActivity;I)V

    .line 1105
    return-void
.end method
