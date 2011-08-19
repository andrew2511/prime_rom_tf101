.class Lnet/yostore/aws/view/navigate/BrowseActivity$1;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$1;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 157
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$1;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->finish()V

    .line 158
    return-void
.end method
