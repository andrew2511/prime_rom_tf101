.class Lcom/amazon/kcp/reader/BookReaderActivity$1;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/BookReaderActivity;->finish()V

    .line 223
    return-void
.end method
