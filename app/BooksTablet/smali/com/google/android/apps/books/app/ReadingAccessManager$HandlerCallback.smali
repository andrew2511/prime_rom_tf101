.class final Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;
.super Ljava/lang/Object;
.source "ReadingAccessManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReadingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerCallback"
.end annotation


# static fields
.field public static final MSG_CHECK_ACCESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    new-instance v0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    const/4 v0, 0x1

    return v0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
