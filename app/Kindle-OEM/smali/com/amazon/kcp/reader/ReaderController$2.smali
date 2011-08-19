.class Lcom/amazon/kcp/reader/ReaderController$2;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field final synthetic val$closePreviousEbook:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$2;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$2;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderController$2;->val$closePreviousEbook:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$2;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController$2;->val$bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderController$2;->val$closePreviousEbook:Z

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderController;->access$100(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    .line 243
    return-void
.end method
