.class Lcom/asus/reader/BookListActivity$2;
.super Landroid/database/ContentObserver;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$2;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$2;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$2;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4fb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    return-void
.end method
