.class Lcom/asus/reader/BookListActivity$3;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/plugin/PressReader;->syncDocList(Landroid/content/Context;)V

    .line 1127
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/LastRead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/LastRead;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    const-string v5, "date_access DESC"

    .line 1129
    .local v5, sort:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(date_access > 0 ) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1135
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$3;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d1

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #sort:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method
