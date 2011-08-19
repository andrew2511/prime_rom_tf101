.class public Lcom/android/calendar/AsyncQueryService;
.super Landroid/os/Handler;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AsyncQueryService$Operation;
    }
.end annotation


# static fields
.field private static mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object p0, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method


# virtual methods
.method public final cancelOperation(I)I
    .locals 1
    .parameter "token"

    .prologue
    .line 143
    invoke-static {p1}, Lcom/android/calendar/AsyncQueryServiceHelper;->cancelOperation(I)I

    move-result v0

    return v0
.end method

.method public final getNextToken()I
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 401
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 402
    .local v2, token:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 410
    .local v1, op:I
    packed-switch v1, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iget-object v4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/calendar/AsyncQueryService;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/calendar/AsyncQueryService;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/calendar/AsyncQueryService;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/calendar/AsyncQueryService;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 428
    :pswitch_4
    iget-object v4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, [Landroid/content/ContentProviderResult;

    check-cast v3, [Landroid/content/ContentProviderResult;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "results"

    .prologue
    .line 395
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 378
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 348
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 333
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 363
    return-void
.end method

.method public startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "authority"
    .parameter
    .parameter "delayMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p4, cpo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 308
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 309
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 310
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 312
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 313
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 314
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    .line 315
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    .line 316
    iput-wide p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 318
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 319
    return-void
.end method

.method public startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "delayMillis"

    .prologue
    .line 276
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 277
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 278
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 279
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 281
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 282
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 283
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 284
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 285
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 286
    iput-wide p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 288
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 289
    return-void
.end method

.method public startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "delayMillis"

    .prologue
    .line 203
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 204
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 205
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 206
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 208
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 209
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 210
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 211
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 212
    iput-wide p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 214
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 215
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 171
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 172
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 173
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 175
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 176
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 177
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 178
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 179
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    .line 180
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 181
    iput-object p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 182
    iput-object p7, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 185
    return-void
.end method

.method public startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "delayMillis"

    .prologue
    .line 239
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 240
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 241
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 242
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 244
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 245
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 246
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 247
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 248
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 249
    iput-object p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 250
    iput-wide p7, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 252
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 253
    return-void
.end method
