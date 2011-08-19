.class Lcom/amazon/kcp/reader/ui/BookLayout$8;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BookLayout;->proposeFurthestReadLocation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

.field final synthetic val$info:Lcom/amazon/kcp/library/models/ILocalBookInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BookLayout$8;->val$info:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$8;->val$info:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->resetServerLastPageRead()Z

    .line 568
    return-void
.end method
