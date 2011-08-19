.class public Lcom/android/calendar/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ContactsAsyncHelper$1;,
        Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ContactsAsyncHelper;->mInstance:Lcom/android/calendar/ContactsAsyncHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v1, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public static final retrieveContactPhotoAsync(Landroid/content/Context;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "run"
    .parameter "person"

    .prologue
    .line 195
    if-nez p3, :cond_0

    .line 222
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/calendar/ContactsAsyncHelper$1;)V

    .line 204
    .local v0, args:Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 205
    iput-object p1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 206
    iput-object p3, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 207
    iput-object p2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    .line 209
    sget-object v2, Lcom/android/calendar/ContactsAsyncHelper;->mInstance:Lcom/android/calendar/ContactsAsyncHelper;

    if-nez v2, :cond_1

    .line 210
    new-instance v2, Lcom/android/calendar/ContactsAsyncHelper;

    invoke-direct {v2}, Lcom/android/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v2, Lcom/android/calendar/ContactsAsyncHelper;->mInstance:Lcom/android/calendar/ContactsAsyncHelper;

    .line 213
    :cond_1
    sget-object v2, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 215
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    sget-object v2, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 230
    .local v0, args:Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 252
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local p0
    :pswitch_0
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object p0, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    .restart local p0
    :cond_1
    iget v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 238
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    iget-object p0, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, v1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
