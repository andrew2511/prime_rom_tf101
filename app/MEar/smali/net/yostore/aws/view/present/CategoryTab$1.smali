.class Lnet/yostore/aws/view/present/CategoryTab$1;
.super Ljava/lang/Object;
.source "CategoryTab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/CategoryTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/CategoryTab;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/CategoryTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/CategoryTab$1;->this$0:Lnet/yostore/aws/view/present/CategoryTab;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab$1;->this$0:Lnet/yostore/aws/view/present/CategoryTab;

    invoke-virtual {v0}, Lnet/yostore/aws/view/present/CategoryTab;->finish()V

    .line 163
    return-void
.end method
