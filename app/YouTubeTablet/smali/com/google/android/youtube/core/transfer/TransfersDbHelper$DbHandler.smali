.class Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;
.super Landroid/os/Handler;
.source "TransfersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    .line 79
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$000(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 84
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 85
    .local v1, transfer:Lcom/google/android/youtube/core/transfer/Transfer;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 87
    :pswitch_0
    const-string v2, "db init"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v4}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$200(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v5}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$300(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$102(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$400(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$500(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$500(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v4}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$600(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)I

    move-result v4

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 94
    .end local v0           #snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "transfers"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v5, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$700(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "transfers"

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$700(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "file_path = ?"

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "transfers"

    const-string v4, "file_path = ?"

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 111
    :pswitch_4
    const-string v2, "db close"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$000(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
